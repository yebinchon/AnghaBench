; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_queue_cap_snap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_queue_cap_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i64, i64, i64, i64, i64, i32, %struct.inode*, i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.inode }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32 }
%struct.ceph_cap_snap = type { i32, i32, i32, i64, i32, i32, %struct.inode*, i64, i32*, i32, i32, i32, i32, i32, i32 }
%struct.ceph_snap_context = type { i32, i32, i32, i32 }
%struct.ceph_buffer = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ENOMEM allocating ceph_cap_snap on %p\0A\00", align 1
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"queue_cap_snap %p already pending\0A\00", align 1
@CEPH_CAP_ANY_EXCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"queue_cap_snap %p nothing dirty|writing\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"queue_cap_snap %p no new_snap|dirty_page|writing\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"queue_cap_snap %p cap_snap %p queuing under %p %s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"no_flush\00", align 1
@CEPH_CAP_XATTR_EXCL = common dso_local global i32 0, align 4
@CEPH_INLINE_NONE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [70 x i8] c"queue_cap_snap %p cap_snap %p snapc %p seq %llu used WR, now pending\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c" new snapc is %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_queue_cap_snap(%struct.ceph_inode_info* %0) #0 {
  %2 = alloca %struct.ceph_inode_info*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ceph_cap_snap*, align 8
  %5 = alloca %struct.ceph_snap_context*, align 8
  %6 = alloca %struct.ceph_snap_context*, align 8
  %7 = alloca %struct.ceph_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %2, align 8
  %10 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %10, i32 0, i32 10
  store %struct.inode* %11, %struct.inode** %3, align 8
  store %struct.ceph_buffer* null, %struct.ceph_buffer** %7, align 8
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.ceph_cap_snap* @kzalloc(i32 80, i32 %12)
  store %struct.ceph_cap_snap* %13, %struct.ceph_cap_snap** %4, align 8
  %14 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %15 = icmp ne %struct.ceph_cap_snap* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.inode* %17)
  br label %264

19:                                               ; preds = %1
  %20 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %21 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %20, i32 0, i32 5
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %24 = call i32 @__ceph_caps_used(%struct.ceph_inode_info* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %26 = call i32 @__ceph_caps_dirty(%struct.ceph_inode_info* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %28 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %27, i32 0, i32 6
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  %30 = bitcast %struct.inode* %29 to %struct.ceph_snap_context*
  store %struct.ceph_snap_context* %30, %struct.ceph_snap_context** %5, align 8
  %31 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %32 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %31, i32 0, i32 9
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  %36 = bitcast %struct.inode* %35 to %struct.ceph_snap_context*
  store %struct.ceph_snap_context* %36, %struct.ceph_snap_context** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %19
  %42 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %19
  %46 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %47 = call i64 @__ceph_have_pending_cap_snap(%struct.ceph_inode_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %50)
  br label %221

52:                                               ; preds = %45
  %53 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %54 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @CEPH_CAP_ANY_EXCL, align 4
  %60 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %65)
  br label %221

67:                                               ; preds = %57, %52
  %68 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %69 = icmp ne %struct.ceph_snap_context* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %74 = bitcast %struct.ceph_snap_context* %73 to %struct.inode*
  %75 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %6, align 8
  %76 = bitcast %struct.ceph_snap_context* %75 to %struct.inode*
  %77 = call i64 @has_new_snaps(%struct.inode* %74, %struct.inode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @CEPH_CAP_ANY_EXCL, align 4
  %82 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %88 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %79
  br label %104

90:                                               ; preds = %67
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %97 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %101)
  br label %221

103:                                              ; preds = %95, %90
  br label %104

104:                                              ; preds = %103, %89
  %105 = load %struct.inode*, %struct.inode** %3, align 8
  %106 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %107 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @ceph_cap_string(i32 %108)
  %110 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %111 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %116 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.inode* %105, %struct.ceph_cap_snap* %106, %struct.ceph_snap_context* %107, i32 %109, i8* %115)
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = call i32 @ihold(%struct.inode* %117)
  %119 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %120 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %119, i32 0, i32 14
  %121 = call i32 @refcount_set(i32* %120, i32 1)
  %122 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %123 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %122, i32 0, i32 5
  %124 = call i32 @INIT_LIST_HEAD(i32* %123)
  %125 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %126 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %129 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %128, i32 0, i32 13
  store i32 %127, i32* %129, align 8
  %130 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %131 = call i32 @__ceph_caps_issued(%struct.ceph_inode_info* %130, i32* null)
  %132 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %133 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %132, i32 0, i32 12
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %136 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %141 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 8
  %142 = load %struct.inode*, %struct.inode** %3, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %146 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %145, i32 0, i32 10
  store i32 %144, i32* %146, align 4
  %147 = load %struct.inode*, %struct.inode** %3, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %151 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @CEPH_CAP_XATTR_EXCL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %104
  %157 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %158 = call %struct.ceph_buffer* @__ceph_build_xattrs_blob(%struct.ceph_inode_info* %157)
  store %struct.ceph_buffer* %158, %struct.ceph_buffer** %7, align 8
  %159 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %160 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32* @ceph_buffer_get(i32 %162)
  %164 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %165 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %164, i32 0, i32 8
  store i32* %163, i32** %165, align 8
  %166 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %167 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %171 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %170, i32 0, i32 7
  store i64 %169, i64* %171, align 8
  br label %177

172:                                              ; preds = %104
  %173 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %174 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %173, i32 0, i32 8
  store i32* null, i32** %174, align 8
  %175 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %176 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %175, i32 0, i32 7
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %172, %156
  %178 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %179 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @CEPH_INLINE_NONE, align 8
  %182 = icmp ne i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %185 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %187 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %190 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %189, i32 0, i32 3
  store i64 %188, i64* %190, align 8
  %191 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %192 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  %193 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %194 = bitcast %struct.ceph_snap_context* %193 to %struct.inode*
  %195 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %196 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %195, i32 0, i32 6
  store %struct.inode* %194, %struct.inode** %196, align 8
  %197 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %198 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %197, i32 0, i32 5
  %199 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %200 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %199, i32 0, i32 7
  %201 = call i32 @list_add_tail(i32* %198, i32* %200)
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %177
  %207 = load %struct.inode*, %struct.inode** %3, align 8
  %208 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %209 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %210 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %211 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), %struct.inode* %207, %struct.ceph_cap_snap* %208, %struct.ceph_snap_context* %209, i32 %212)
  %214 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %215 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %214, i32 0, i32 4
  store i32 1, i32* %215, align 8
  br label %220

216:                                              ; preds = %177
  %217 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %218 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %219 = call i32 @__ceph_finish_cap_snap(%struct.ceph_inode_info* %217, %struct.ceph_cap_snap* %218)
  br label %220

220:                                              ; preds = %216, %206
  store %struct.ceph_cap_snap* null, %struct.ceph_cap_snap** %4, align 8
  store %struct.ceph_snap_context* null, %struct.ceph_snap_context** %5, align 8
  br label %221

221:                                              ; preds = %220, %100, %64, %49
  %222 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %223 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %221
  %227 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %228 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %226
  %232 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %233 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %231
  %237 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %238 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %243 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %242, i32 0, i32 6
  store %struct.inode* null, %struct.inode** %243, align 8
  br label %253

244:                                              ; preds = %236, %231, %226, %221
  %245 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %6, align 8
  %246 = bitcast %struct.ceph_snap_context* %245 to %struct.inode*
  %247 = call %struct.inode* @ceph_get_snap_context(%struct.inode* %246)
  %248 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %249 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %248, i32 0, i32 6
  store %struct.inode* %247, %struct.inode** %249, align 8
  %250 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %6, align 8
  %251 = bitcast %struct.ceph_snap_context* %250 to %struct.inode*
  %252 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %struct.inode* %251)
  br label %253

253:                                              ; preds = %244, %241
  %254 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %255 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %254, i32 0, i32 5
  %256 = call i32 @spin_unlock(i32* %255)
  %257 = load %struct.ceph_buffer*, %struct.ceph_buffer** %7, align 8
  %258 = call i32 @ceph_buffer_put(%struct.ceph_buffer* %257)
  %259 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %4, align 8
  %260 = call i32 @kfree(%struct.ceph_cap_snap* %259)
  %261 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %262 = bitcast %struct.ceph_snap_context* %261 to %struct.inode*
  %263 = call i32 @ceph_put_snap_context(%struct.inode* %262)
  br label %264

264:                                              ; preds = %253, %16
  ret void
}

declare dso_local %struct.ceph_cap_snap* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_caps_used(%struct.ceph_inode_info*) #1

declare dso_local i32 @__ceph_caps_dirty(%struct.ceph_inode_info*) #1

declare dso_local i64 @__ceph_have_pending_cap_snap(%struct.ceph_inode_info*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @has_new_snaps(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ceph_cap_string(i32) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__ceph_caps_issued(%struct.ceph_inode_info*, i32*) #1

declare dso_local %struct.ceph_buffer* @__ceph_build_xattrs_blob(%struct.ceph_inode_info*) #1

declare dso_local i32* @ceph_buffer_get(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__ceph_finish_cap_snap(%struct.ceph_inode_info*, %struct.ceph_cap_snap*) #1

declare dso_local %struct.inode* @ceph_get_snap_context(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_buffer_put(%struct.ceph_buffer*) #1

declare dso_local i32 @kfree(%struct.ceph_cap_snap*) #1

declare dso_local i32 @ceph_put_snap_context(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
