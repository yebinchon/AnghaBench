; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_handle_reply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_handle_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.ceph_mds_request* }
%struct.ceph_mds_request = type { i32, i64, i64, i32, i32, i32, i32, i32, i64, i32, %struct.ceph_mds_session*, %struct.ceph_mds_reply_info_parsed, i32, i64, i32, %struct.ceph_mds_request* }
%struct.ceph_mds_session = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.ceph_mds_client* }
%struct.TYPE_6__ = type { %struct.ceph_mds_request* }
%struct.ceph_mds_client = type { i32, i32, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ceph_mds_reply_info_parsed = type { i64, i64 }
%struct.ceph_msg = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.ceph_mds_reply_head* }
%struct.ceph_mds_reply_head = type { i32, i64, i32 }
%struct.ceph_snap_realm = type { i32 }
%struct.ceph_inode_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"mdsc_handle_reply got corrupt (short) reply\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"handle_reply on unknown tid %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"handle_reply %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"mdsc_handle_reply got %llu on session mds%d not mds%d\0A\00", align 1
@CEPH_MDS_R_GOT_UNSAFE = common dso_local global i32 0, align 4
@CEPH_MDS_R_GOT_SAFE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"got a dup %s reply on %llu from mds%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"unsafe\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"got unsafe after safe on %llu from mds%d\0A\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"got ESTALE on request %llu\0A\00", align 1
@USE_AUTH_MDS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"not using auth, setting for that now\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"but auth changed, so resending\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"have to return ESTALE on request %llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"got safe reply %llu, mds%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"handle_reply tid %lld result %d\0A\00", align 1
@CEPHFS_FEATURE_REPLY_ENCODING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [53 x i8] c"mdsc_handle_reply got corrupt reply mds%d(tid:%lld)\0A\00", align 1
@CEPH_MDS_OP_RMSNAP = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@CEPH_MDS_OP_READDIR = common dso_local global i64 0, align 8
@CEPH_MDS_OP_LSSNAP = common dso_local global i64 0, align 8
@CEPH_MDS_R_ABORTED = common dso_local global i32 0, align 4
@CEPH_MDS_R_GOT_RESULT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [46 x i8] c"reply arrived after request %lld was aborted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_session*, %struct.ceph_msg*)* @handle_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_reply(%struct.ceph_mds_session* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_mds_session*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_mds_client*, align 8
  %6 = alloca %struct.ceph_mds_request*, align 8
  %7 = alloca %struct.ceph_mds_reply_head*, align 8
  %8 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %9 = alloca %struct.ceph_snap_realm*, align 8
  %10 = alloca %struct.ceph_mds_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ceph_inode_info*, align 8
  %16 = alloca %struct.ceph_inode_info*, align 8
  store %struct.ceph_mds_session* %0, %struct.ceph_mds_session** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  %17 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %17, i32 0, i32 5
  %19 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %18, align 8
  store %struct.ceph_mds_client* %19, %struct.ceph_mds_client** %5, align 8
  %20 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.ceph_mds_reply_head*, %struct.ceph_mds_reply_head** %22, align 8
  store %struct.ceph_mds_reply_head* %23, %struct.ceph_mds_reply_head** %7, align 8
  %24 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %25 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 24
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %36 = call i32 @ceph_msg_dump(%struct.ceph_msg* %35)
  br label %471

37:                                               ; preds = %2
  %38 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.ceph_mds_request* @le64_to_cpu(i32 %41)
  store %struct.ceph_mds_request* %42, %struct.ceph_mds_request** %10, align 8
  %43 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %47 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %48 = call %struct.ceph_mds_request* @lookup_get_request(%struct.ceph_mds_client* %46, %struct.ceph_mds_request* %47)
  store %struct.ceph_mds_request* %48, %struct.ceph_mds_request** %6, align 8
  %49 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %50 = icmp ne %struct.ceph_mds_request* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %37
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %53 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_mds_request* %52)
  %54 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %55 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %471

57:                                               ; preds = %37
  %58 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %59 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.ceph_mds_request* %58)
  %60 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %61 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %60, i32 0, i32 10
  %62 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %61, align 8
  %63 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %64 = icmp ne %struct.ceph_mds_session* %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %57
  %66 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %67 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %68 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %70, i32 0, i32 10
  %72 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %71, align 8
  %73 = icmp ne %struct.ceph_mds_session* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %76 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %75, i32 0, i32 10
  %77 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %76, align 8
  %78 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  br label %81

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %74
  %82 = phi i32 [ %79, %74 ], [ -1, %80 ]
  %83 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), %struct.ceph_mds_request* %66, i32 %69, i32 %82)
  %84 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %85 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %468

87:                                               ; preds = %57
  %88 = load i32, i32* @CEPH_MDS_R_GOT_UNSAFE, align 4
  %89 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %90 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %89, i32 0, i32 4
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.ceph_mds_reply_head*, %struct.ceph_mds_reply_head** %7, align 8
  %95 = getelementptr inbounds %struct.ceph_mds_reply_head, %struct.ceph_mds_reply_head* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93, %87
  %99 = load i32, i32* @CEPH_MDS_R_GOT_SAFE, align 4
  %100 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %101 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %100, i32 0, i32 4
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load %struct.ceph_mds_reply_head*, %struct.ceph_mds_reply_head** %7, align 8
  %106 = getelementptr inbounds %struct.ceph_mds_reply_head, %struct.ceph_mds_reply_head* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104, %93
  %110 = load %struct.ceph_mds_reply_head*, %struct.ceph_mds_reply_head** %7, align 8
  %111 = getelementptr inbounds %struct.ceph_mds_reply_head, %struct.ceph_mds_reply_head* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %116 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %115, %struct.ceph_mds_request* %116, i32 %117)
  %119 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %120 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  br label %468

122:                                              ; preds = %104, %98
  %123 = load i32, i32* @CEPH_MDS_R_GOT_SAFE, align 4
  %124 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %125 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %124, i32 0, i32 4
  %126 = call i64 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), %struct.ceph_mds_request* %129, i32 %130)
  %132 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %133 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %132, i32 0, i32 0
  %134 = call i32 @mutex_unlock(i32* %133)
  br label %468

135:                                              ; preds = %122
  %136 = load %struct.ceph_mds_reply_head*, %struct.ceph_mds_reply_head** %7, align 8
  %137 = getelementptr inbounds %struct.ceph_mds_reply_head, %struct.ceph_mds_reply_head* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le32_to_cpu(i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @ESTALE, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %195

144:                                              ; preds = %135
  %145 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %146 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %145, i32 0, i32 15
  %147 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %146, align 8
  %148 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), %struct.ceph_mds_request* %147)
  %149 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %150 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %149, i32 0, i32 0
  store i32 -1, i32* %150, align 8
  %151 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %152 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @USE_AUTH_MDS, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %144
  %157 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %158 = load i64, i64* @USE_AUTH_MDS, align 8
  %159 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %160 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %162 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %163 = call i32 @__do_request(%struct.ceph_mds_client* %161, %struct.ceph_mds_request* %162)
  %164 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %165 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %164, i32 0, i32 0
  %166 = call i32 @mutex_unlock(i32* %165)
  br label %468

167:                                              ; preds = %144
  %168 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %169 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %170 = call i32 @__choose_mds(%struct.ceph_mds_client* %168, %struct.ceph_mds_request* %169)
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %167
  %174 = load i32, i32* %14, align 4
  %175 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %176 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %175, i32 0, i32 10
  %177 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %176, align 8
  %178 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %174, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %173
  %182 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %183 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %184 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %185 = call i32 @__do_request(%struct.ceph_mds_client* %183, %struct.ceph_mds_request* %184)
  %186 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %187 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %186, i32 0, i32 0
  %188 = call i32 @mutex_unlock(i32* %187)
  br label %468

189:                                              ; preds = %173, %167
  br label %190

190:                                              ; preds = %189
  %191 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %192 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %191, i32 0, i32 15
  %193 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %192, align 8
  %194 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), %struct.ceph_mds_request* %193)
  br label %195

195:                                              ; preds = %190, %135
  %196 = load %struct.ceph_mds_reply_head*, %struct.ceph_mds_reply_head** %7, align 8
  %197 = getelementptr inbounds %struct.ceph_mds_reply_head, %struct.ceph_mds_reply_head* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %234

200:                                              ; preds = %195
  %201 = load i32, i32* @CEPH_MDS_R_GOT_SAFE, align 4
  %202 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %203 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %202, i32 0, i32 4
  %204 = call i32 @set_bit(i32 %201, i32* %203)
  %205 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %206 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %207 = call i32 @__unregister_request(%struct.ceph_mds_client* %205, %struct.ceph_mds_request* %206)
  %208 = load i32, i32* @CEPH_MDS_R_GOT_UNSAFE, align 4
  %209 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %210 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %209, i32 0, i32 4
  %211 = call i64 @test_bit(i32 %208, i32* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %200
  %214 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %215 = load i32, i32* %13, align 4
  %216 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), %struct.ceph_mds_request* %214, i32 %215)
  %217 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %218 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %213
  %222 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %223 = call i32 @__get_oldest_req(%struct.ceph_mds_client* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %227 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %226, i32 0, i32 3
  %228 = call i32 @complete_all(i32* %227)
  br label %229

229:                                              ; preds = %225, %221, %213
  %230 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %231 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %230, i32 0, i32 0
  %232 = call i32 @mutex_unlock(i32* %231)
  br label %468

233:                                              ; preds = %200
  br label %267

234:                                              ; preds = %195
  %235 = load i32, i32* @CEPH_MDS_R_GOT_UNSAFE, align 4
  %236 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %237 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %236, i32 0, i32 4
  %238 = call i32 @set_bit(i32 %235, i32* %237)
  %239 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %240 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %239, i32 0, i32 14
  %241 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %242 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %241, i32 0, i32 10
  %243 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %242, align 8
  %244 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %243, i32 0, i32 4
  %245 = call i32 @list_add_tail(i32* %240, i32* %244)
  %246 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %247 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %246, i32 0, i32 13
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %234
  %251 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %252 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %251, i32 0, i32 13
  %253 = load i64, i64* %252, align 8
  %254 = call %struct.ceph_inode_info* @ceph_inode(i64 %253)
  store %struct.ceph_inode_info* %254, %struct.ceph_inode_info** %15, align 8
  %255 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %15, align 8
  %256 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %255, i32 0, i32 0
  %257 = call i32 @spin_lock(i32* %256)
  %258 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %259 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %258, i32 0, i32 12
  %260 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %15, align 8
  %261 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %260, i32 0, i32 2
  %262 = call i32 @list_add_tail(i32* %259, i32* %261)
  %263 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %15, align 8
  %264 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %263, i32 0, i32 0
  %265 = call i32 @spin_unlock(i32* %264)
  br label %266

266:                                              ; preds = %250, %234
  br label %267

267:                                              ; preds = %266, %233
  %268 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %269 = load i32, i32* %12, align 4
  %270 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), %struct.ceph_mds_request* %268, i32 %269)
  %271 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %272 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %271, i32 0, i32 11
  store %struct.ceph_mds_reply_info_parsed* %272, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %273 = load i32, i32* @CEPHFS_FEATURE_REPLY_ENCODING, align 4
  %274 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %275 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %274, i32 0, i32 3
  %276 = call i64 @test_bit(i32 %273, i32* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %267
  %279 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %280 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %281 = call i32 @parse_reply_info(%struct.ceph_msg* %279, %struct.ceph_mds_reply_info_parsed* %280, %struct.ceph_mds_request* inttoptr (i64 -1 to %struct.ceph_mds_request*))
  store i32 %281, i32* %11, align 4
  br label %290

282:                                              ; preds = %267
  %283 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %284 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %285 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %286 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %287, align 8
  %289 = call i32 @parse_reply_info(%struct.ceph_msg* %283, %struct.ceph_mds_reply_info_parsed* %284, %struct.ceph_mds_request* %288)
  store i32 %289, i32* %11, align 4
  br label %290

290:                                              ; preds = %282, %278
  %291 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %292 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %291, i32 0, i32 0
  %293 = call i32 @mutex_unlock(i32* %292)
  %294 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %295 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %294, i32 0, i32 1
  %296 = call i32 @mutex_lock(i32* %295)
  %297 = load i32, i32* %11, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %290
  %300 = load i32, i32* %13, align 4
  %301 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %302 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %300, %struct.ceph_mds_request* %301)
  %303 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %304 = call i32 @ceph_msg_dump(%struct.ceph_msg* %303)
  br label %429

305:                                              ; preds = %290
  store %struct.ceph_snap_realm* null, %struct.ceph_snap_realm** %9, align 8
  %306 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %307 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %336

310:                                              ; preds = %305
  %311 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %312 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %311, i32 0, i32 1
  %313 = call i32 @down_write(i32* %312)
  %314 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %315 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %316 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %319 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %322 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %320, %323
  %325 = load %struct.ceph_mds_reply_head*, %struct.ceph_mds_reply_head** %7, align 8
  %326 = getelementptr inbounds %struct.ceph_mds_reply_head, %struct.ceph_mds_reply_head* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @le32_to_cpu(i32 %327)
  %329 = load i32, i32* @CEPH_MDS_OP_RMSNAP, align 4
  %330 = icmp eq i32 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 @ceph_update_snap_trace(%struct.ceph_mds_client* %314, i64 %317, i64 %324, i32 %331, %struct.ceph_snap_realm** %9)
  %333 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %334 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %333, i32 0, i32 1
  %335 = call i32 @downgrade_write(i32* %334)
  br label %340

336:                                              ; preds = %305
  %337 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %338 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %337, i32 0, i32 1
  %339 = call i32 @down_read(i32* %338)
  br label %340

340:                                              ; preds = %336, %310
  %341 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %342 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %341, i32 0, i32 9
  %343 = call i32 @mutex_lock(i32* %342)
  %344 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  store %struct.ceph_mds_request* %344, %struct.ceph_mds_request** %346, align 8
  %347 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %348 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %347, i32 0, i32 2
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %353 = call i32 @ceph_fill_trace(i32 %351, %struct.ceph_mds_request* %352)
  store i32 %353, i32* %11, align 4
  %354 = load i32, i32* %11, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %378

356:                                              ; preds = %340
  %357 = load i32, i32* %12, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %377

359:                                              ; preds = %356
  %360 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %361 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @CEPH_MDS_OP_READDIR, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %371, label %365

365:                                              ; preds = %359
  %366 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %367 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @CEPH_MDS_OP_LSSNAP, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %377

371:                                              ; preds = %365, %359
  %372 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %373 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %374 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %373, i32 0, i32 10
  %375 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %374, align 8
  %376 = call i32 @ceph_readdir_prepopulate(%struct.ceph_mds_request* %372, %struct.ceph_mds_session* %375)
  br label %377

377:                                              ; preds = %371, %365, %356
  br label %378

378:                                              ; preds = %377, %340
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 0
  store %struct.ceph_mds_request* null, %struct.ceph_mds_request** %380, align 8
  %381 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %382 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %381, i32 0, i32 9
  %383 = call i32 @mutex_unlock(i32* %382)
  %384 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %385 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %384, i32 0, i32 1
  %386 = call i32 @up_read(i32* %385)
  %387 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %388 = icmp ne %struct.ceph_snap_realm* %387, null
  br i1 %388, label %389, label %393

389:                                              ; preds = %378
  %390 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %391 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %392 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %390, %struct.ceph_snap_realm* %391)
  br label %393

393:                                              ; preds = %389, %378
  %394 = load i32, i32* %11, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %428

396:                                              ; preds = %393
  %397 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %398 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %397, i32 0, i32 8
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %423

401:                                              ; preds = %396
  %402 = load i32, i32* @CEPH_MDS_R_GOT_UNSAFE, align 4
  %403 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %404 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %403, i32 0, i32 4
  %405 = call i64 @test_bit(i32 %402, i32* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %423

407:                                              ; preds = %401
  %408 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %409 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %408, i32 0, i32 8
  %410 = load i64, i64* %409, align 8
  %411 = call %struct.ceph_inode_info* @ceph_inode(i64 %410)
  store %struct.ceph_inode_info* %411, %struct.ceph_inode_info** %16, align 8
  %412 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %413 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %412, i32 0, i32 0
  %414 = call i32 @spin_lock(i32* %413)
  %415 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %416 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %415, i32 0, i32 7
  %417 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %418 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %417, i32 0, i32 1
  %419 = call i32 @list_add_tail(i32* %416, i32* %418)
  %420 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %16, align 8
  %421 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %420, i32 0, i32 0
  %422 = call i32 @spin_unlock(i32* %421)
  br label %423

423:                                              ; preds = %407, %401, %396
  %424 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %425 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %426 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %425, i32 0, i32 6
  %427 = call i32 @ceph_unreserve_caps(%struct.ceph_mds_client* %424, i32* %426)
  br label %428

428:                                              ; preds = %423, %393
  br label %429

429:                                              ; preds = %428, %299
  %430 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %431 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %430, i32 0, i32 0
  %432 = call i32 @mutex_lock(i32* %431)
  %433 = load i32, i32* @CEPH_MDS_R_ABORTED, align 4
  %434 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %435 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %434, i32 0, i32 4
  %436 = call i64 @test_bit(i32 %433, i32* %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %455, label %438

438:                                              ; preds = %429
  %439 = load i32, i32* %11, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %438
  %442 = load i32, i32* %11, align 4
  %443 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %444 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %443, i32 0, i32 3
  store i32 %442, i32* %444, align 8
  br label %454

445:                                              ; preds = %438
  %446 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %447 = call i32 @ceph_msg_get(%struct.ceph_msg* %446)
  %448 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %449 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %448, i32 0, i32 5
  store i32 %447, i32* %449, align 8
  %450 = load i32, i32* @CEPH_MDS_R_GOT_RESULT, align 4
  %451 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %452 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %451, i32 0, i32 4
  %453 = call i32 @set_bit(i32 %450, i32* %452)
  br label %454

454:                                              ; preds = %445, %441
  br label %458

455:                                              ; preds = %429
  %456 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %457 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), %struct.ceph_mds_request* %456)
  br label %458

458:                                              ; preds = %455, %454
  %459 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %460 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %459, i32 0, i32 0
  %461 = call i32 @mutex_unlock(i32* %460)
  %462 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %463 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %462, i32 0, i32 1
  %464 = call i32 @mutex_unlock(i32* %463)
  %465 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %466 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %467 = call i32 @complete_request(%struct.ceph_mds_client* %465, %struct.ceph_mds_request* %466)
  br label %468

468:                                              ; preds = %458, %229, %181, %156, %128, %109, %81
  %469 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %470 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %469)
  br label %471

471:                                              ; preds = %468, %51, %33
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ceph_msg_dump(%struct.ceph_msg*) #1

declare dso_local %struct.ceph_mds_request* @le64_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ceph_mds_request* @lookup_get_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @__do_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i32 @__choose_mds(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__unregister_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i32 @__get_oldest_req(%struct.ceph_mds_client*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @parse_reply_info(%struct.ceph_msg*, %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_request*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ceph_update_snap_trace(%struct.ceph_mds_client*, i64, i64, i32, %struct.ceph_snap_realm**) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ceph_fill_trace(i32, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_readdir_prepopulate(%struct.ceph_mds_request*, %struct.ceph_mds_session*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ceph_put_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @ceph_unreserve_caps(%struct.ceph_mds_client*, i32*) #1

declare dso_local i32 @ceph_msg_get(%struct.ceph_msg*) #1

declare dso_local i32 @complete_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
