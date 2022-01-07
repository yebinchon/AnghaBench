; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_handle_snap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_handle_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ceph_mds_session = type { i32, i32, i32 }
%struct.ceph_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.ceph_snap_realm = type { i64, i32, i32, %struct.inode*, i32 }
%struct.inode = type { i32 }
%struct.ceph_mds_snap_head = type { i32, i32, i32, i32, i32 }
%struct.ceph_mds_snap_realm = type { i32 }
%struct.ceph_vino = type { i64, i32 }
%struct.ceph_inode_info = type { i32, %struct.TYPE_6__, %struct.ceph_snap_realm*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"handle_snap from mds%d op %s split %llx tracelen %d\0A\00", align 1
@CEPH_SNAP_OP_SPLIT = common dso_local global i32 0, align 4
@bad = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"splitting snap_realm %llx %p\0A\00", align 1
@CEPH_NOSNAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c" leaving %p in newer realm %llx %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c" will move %p to split realm %llx %p\0A\00", align 1
@CEPH_SNAP_OP_DESTROY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"corrupt snap message from mds%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_handle_snap(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1, %struct.ceph_msg* %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.ceph_msg*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ceph_snap_realm*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ceph_mds_snap_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ceph_mds_snap_realm*, align 8
  %23 = alloca %struct.ceph_vino, align 8
  %24 = alloca %struct.inode*, align 8
  %25 = alloca %struct.ceph_inode_info*, align 8
  %26 = alloca %struct.ceph_snap_realm*, align 8
  %27 = alloca %struct.ceph_snap_realm*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  store %struct.ceph_msg* %2, %struct.ceph_msg** %6, align 8
  %28 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %29 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.super_block*, %struct.super_block** %31, align 8
  store %struct.super_block* %32, %struct.super_block** %7, align 8
  %33 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  store %struct.ceph_snap_realm* null, %struct.ceph_snap_realm** %12, align 8
  %36 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %37 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %42 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %40, i64 %45
  store i8* %46, i8** %14, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %21, align 4
  %47 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %48 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 20
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  br label %324

54:                                               ; preds = %3
  %55 = load i8*, i8** %13, align 8
  %56 = bitcast i8* %55 to %struct.ceph_mds_snap_head*
  store %struct.ceph_mds_snap_head* %56, %struct.ceph_mds_snap_head** %15, align 8
  %57 = load %struct.ceph_mds_snap_head*, %struct.ceph_mds_snap_head** %15, align 8
  %58 = getelementptr inbounds %struct.ceph_mds_snap_head, %struct.ceph_mds_snap_head* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.ceph_mds_snap_head*, %struct.ceph_mds_snap_head** %15, align 8
  %62 = getelementptr inbounds %struct.ceph_mds_snap_head, %struct.ceph_mds_snap_head* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le64_to_cpu(i32 %63)
  store i64 %64, i64* %9, align 8
  %65 = load %struct.ceph_mds_snap_head*, %struct.ceph_mds_snap_head** %15, align 8
  %66 = getelementptr inbounds %struct.ceph_mds_snap_head, %struct.ceph_mds_snap_head* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load %struct.ceph_mds_snap_head*, %struct.ceph_mds_snap_head** %15, align 8
  %70 = getelementptr inbounds %struct.ceph_mds_snap_head, %struct.ceph_mds_snap_head* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  store i32 %72, i32* %17, align 4
  %73 = load %struct.ceph_mds_snap_head*, %struct.ceph_mds_snap_head** %15, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_snap_head, %struct.ceph_mds_snap_head* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr i8, i8* %77, i64 20
  store i8* %78, i8** %13, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @ceph_snap_op_name(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to %struct.ceph_snap_realm*
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i8*, i32, %struct.ceph_snap_realm*, ...) @dout(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %79, %struct.ceph_snap_realm* %83, i64 %84, i32 %85)
  %87 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %88 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %87, i32 0, i32 1
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %91 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %95 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %98 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %97, i32 0, i32 0
  %99 = call i32 @down_write(i32* %98)
  store i32 1, i32* %21, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @CEPH_SNAP_OP_SPLIT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %300

103:                                              ; preds = %54
  %104 = load i8*, i8** %13, align 8
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %18, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr i8, i8* %109, i64 %108
  store i8* %110, i8** %13, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = bitcast i8* %111 to i32*
  store i32* %112, i32** %19, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 8, %114
  %116 = load i8*, i8** %13, align 8
  %117 = getelementptr i8, i8* %116, i64 %115
  store i8* %117, i8** %13, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* @bad, align 4
  %120 = call i32 @ceph_decode_need(i8** %13, i8* %118, i32 4, i32 %119)
  %121 = load i8*, i8** %13, align 8
  %122 = bitcast i8* %121 to %struct.ceph_mds_snap_realm*
  store %struct.ceph_mds_snap_realm* %122, %struct.ceph_mds_snap_realm** %22, align 8
  %123 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call %struct.ceph_snap_realm* @ceph_lookup_snap_realm(%struct.ceph_mds_client* %123, i64 %124)
  store %struct.ceph_snap_realm* %125, %struct.ceph_snap_realm** %12, align 8
  %126 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %127 = icmp ne %struct.ceph_snap_realm* %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %103
  %129 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call %struct.ceph_snap_realm* @ceph_create_snap_realm(%struct.ceph_mds_client* %129, i64 %130)
  store %struct.ceph_snap_realm* %131, %struct.ceph_snap_realm** %12, align 8
  %132 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %133 = call i64 @IS_ERR(%struct.ceph_snap_realm* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %329

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %103
  %138 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %139 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %142 = call i32 (i8*, i32, %struct.ceph_snap_realm*, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %140, %struct.ceph_snap_realm* %141)
  store i32 0, i32* %20, align 4
  br label %143

143:                                              ; preds = %269, %137
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %272

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %23, i32 0, i32 0
  %149 = load i32*, i32** %18, align 8
  %150 = load i32, i32* %20, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @le64_to_cpu(i32 %153)
  store i64 %154, i64* %148, align 8
  %155 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %23, i32 0, i32 1
  %156 = load i32, i32* @CEPH_NOSNAP, align 4
  store i32 %156, i32* %155, align 8
  %157 = load %struct.super_block*, %struct.super_block** %7, align 8
  %158 = bitcast %struct.ceph_vino* %23 to { i64, i32 }*
  %159 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %158, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call %struct.inode* @ceph_find_inode(%struct.super_block* %157, i64 %160, i32 %162)
  store %struct.inode* %163, %struct.inode** %24, align 8
  %164 = load %struct.inode*, %struct.inode** %24, align 8
  %165 = icmp ne %struct.inode* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %147
  br label %269

167:                                              ; preds = %147
  %168 = load %struct.inode*, %struct.inode** %24, align 8
  %169 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %168)
  store %struct.ceph_inode_info* %169, %struct.ceph_inode_info** %25, align 8
  %170 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %171 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %170, i32 0, i32 0
  %172 = call i32 @spin_lock(i32* %171)
  %173 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %174 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %173, i32 0, i32 2
  %175 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %174, align 8
  %176 = icmp ne %struct.ceph_snap_realm* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %167
  br label %263

178:                                              ; preds = %167
  %179 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %180 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %179, i32 0, i32 2
  %181 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %180, align 8
  %182 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ceph_mds_snap_realm*, %struct.ceph_mds_snap_realm** %22, align 8
  %185 = getelementptr inbounds %struct.ceph_mds_snap_realm, %struct.ceph_mds_snap_realm* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @le64_to_cpu(i32 %186)
  %188 = icmp sgt i64 %183, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %178
  %190 = load %struct.inode*, %struct.inode** %24, align 8
  %191 = ptrtoint %struct.inode* %190 to i32
  %192 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %193 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %192, i32 0, i32 2
  %194 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %193, align 8
  %195 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to %struct.ceph_snap_realm*
  %199 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %200 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %199, i32 0, i32 2
  %201 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %200, align 8
  %202 = call i32 (i8*, i32, %struct.ceph_snap_realm*, ...) @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %191, %struct.ceph_snap_realm* %198, %struct.ceph_snap_realm* %201)
  br label %263

203:                                              ; preds = %178
  %204 = load %struct.inode*, %struct.inode** %24, align 8
  %205 = ptrtoint %struct.inode* %204 to i32
  %206 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %207 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to %struct.ceph_snap_realm*
  %211 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %212 = call i32 (i8*, i32, %struct.ceph_snap_realm*, ...) @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %205, %struct.ceph_snap_realm* %210, %struct.ceph_snap_realm* %211)
  %213 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %214 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %213, i32 0, i32 2
  %215 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %214, align 8
  store %struct.ceph_snap_realm* %215, %struct.ceph_snap_realm** %26, align 8
  %216 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %26, align 8
  %217 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %216, i32 0, i32 2
  %218 = call i32 @spin_lock(i32* %217)
  %219 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %220 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %219, i32 0, i32 3
  %221 = call i32 @list_del_init(i32* %220)
  %222 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %26, align 8
  %223 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %222, i32 0, i32 2
  %224 = call i32 @spin_unlock(i32* %223)
  %225 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %226 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %225, i32 0, i32 2
  %227 = call i32 @spin_lock(i32* %226)
  %228 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %229 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %228, i32 0, i32 3
  %230 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %231 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %230, i32 0, i32 4
  %232 = call i32 @list_add(i32* %229, i32* %231)
  %233 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %234 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %235 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %234, i32 0, i32 2
  store %struct.ceph_snap_realm* %233, %struct.ceph_snap_realm** %235, align 8
  %236 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %237 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %240 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %238, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %203
  %245 = load %struct.inode*, %struct.inode** %24, align 8
  %246 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %247 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %246, i32 0, i32 3
  store %struct.inode* %245, %struct.inode** %247, align 8
  br label %248

248:                                              ; preds = %244, %203
  %249 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %250 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %249, i32 0, i32 2
  %251 = call i32 @spin_unlock(i32* %250)
  %252 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %253 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %252, i32 0, i32 0
  %254 = call i32 @spin_unlock(i32* %253)
  %255 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %256 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %257 = call i32 @ceph_get_snap_realm(%struct.ceph_mds_client* %255, %struct.ceph_snap_realm* %256)
  %258 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %259 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %26, align 8
  %260 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %258, %struct.ceph_snap_realm* %259)
  %261 = load %struct.inode*, %struct.inode** %24, align 8
  %262 = call i32 @ceph_async_iput(%struct.inode* %261)
  br label %269

263:                                              ; preds = %189, %177
  %264 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %25, align 8
  %265 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %264, i32 0, i32 0
  %266 = call i32 @spin_unlock(i32* %265)
  %267 = load %struct.inode*, %struct.inode** %24, align 8
  %268 = call i32 @ceph_async_iput(%struct.inode* %267)
  br label %269

269:                                              ; preds = %263, %248, %166
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %20, align 4
  br label %143

272:                                              ; preds = %143
  store i32 0, i32* %20, align 4
  br label %273

273:                                              ; preds = %296, %272
  %274 = load i32, i32* %20, align 4
  %275 = load i32, i32* %17, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %299

277:                                              ; preds = %273
  %278 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %279 = load i32*, i32** %19, align 8
  %280 = load i32, i32* %20, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @le64_to_cpu(i32 %283)
  %285 = call %struct.ceph_snap_realm* @__lookup_snap_realm(%struct.ceph_mds_client* %278, i64 %284)
  store %struct.ceph_snap_realm* %285, %struct.ceph_snap_realm** %27, align 8
  %286 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %27, align 8
  %287 = icmp ne %struct.ceph_snap_realm* %286, null
  br i1 %287, label %289, label %288

288:                                              ; preds = %277
  br label %296

289:                                              ; preds = %277
  %290 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %291 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %27, align 8
  %292 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %293 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @adjust_snap_realm_parent(%struct.ceph_mds_client* %290, %struct.ceph_snap_realm* %291, i32 %294)
  br label %296

296:                                              ; preds = %289, %288
  %297 = load i32, i32* %20, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %20, align 4
  br label %273

299:                                              ; preds = %273
  br label %300

300:                                              ; preds = %299, %54
  %301 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %302 = load i8*, i8** %13, align 8
  %303 = load i8*, i8** %14, align 8
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* @CEPH_SNAP_OP_DESTROY, align 4
  %306 = icmp eq i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @ceph_update_snap_trace(%struct.ceph_mds_client* %301, i8* %302, i8* %303, i32 %307, i32* null)
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @CEPH_SNAP_OP_SPLIT, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %316

312:                                              ; preds = %300
  %313 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %314 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  %315 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %313, %struct.ceph_snap_realm* %314)
  br label %316

316:                                              ; preds = %312, %300
  %317 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %318 = call i32 @__cleanup_empty_realms(%struct.ceph_mds_client* %317)
  %319 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %320 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %319, i32 0, i32 0
  %321 = call i32 @up_write(i32* %320)
  %322 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %323 = call i32 @flush_snaps(%struct.ceph_mds_client* %322)
  br label %337

324:                                              ; preds = %53
  %325 = load i32, i32* %8, align 4
  %326 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %325)
  %327 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %328 = call i32 @ceph_msg_dump(%struct.ceph_msg* %327)
  br label %329

329:                                              ; preds = %324, %135
  %330 = load i32, i32* %21, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %334 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %333, i32 0, i32 0
  %335 = call i32 @up_write(i32* %334)
  br label %336

336:                                              ; preds = %332, %329
  br label %337

337:                                              ; preds = %336, %316
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @dout(i8*, i32, %struct.ceph_snap_realm*, ...) #1

declare dso_local i32 @ceph_snap_op_name(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local %struct.ceph_snap_realm* @ceph_lookup_snap_realm(%struct.ceph_mds_client*, i64) #1

declare dso_local %struct.ceph_snap_realm* @ceph_create_snap_realm(%struct.ceph_mds_client*, i64) #1

declare dso_local i64 @IS_ERR(%struct.ceph_snap_realm*) #1

declare dso_local %struct.inode* @ceph_find_inode(%struct.super_block*, i64, i32) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ceph_get_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @ceph_put_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @ceph_async_iput(%struct.inode*) #1

declare dso_local %struct.ceph_snap_realm* @__lookup_snap_realm(%struct.ceph_mds_client*, i64) #1

declare dso_local i32 @adjust_snap_realm_parent(%struct.ceph_mds_client*, %struct.ceph_snap_realm*, i32) #1

declare dso_local i32 @ceph_update_snap_trace(%struct.ceph_mds_client*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @__cleanup_empty_realms(%struct.ceph_mds_client*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @flush_snaps(%struct.ceph_mds_client*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ceph_msg_dump(%struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
