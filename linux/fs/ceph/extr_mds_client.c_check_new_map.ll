; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_check_new_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_check_new_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, %struct.ceph_mds_session**, i32 }
%struct.ceph_mds_session = type { i64, i32, i32, i32, i32 }
%struct.ceph_mdsmap = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"check_new_map new %u old %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"check_new_map mds%d state %s%s -> %s%s (session %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" (laggy)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CEPH_MDS_SESSION_RESTARTING = common dso_local global i64 0, align 8
@CEPH_MDS_STATE_RECONNECT = common dso_local global i32 0, align 4
@CEPH_MDS_STATE_ACTIVE = common dso_local global i32 0, align 4
@CEPH_MDS_STATE_CREATING = common dso_local global i32 0, align 4
@CEPH_MDS_STATE_STARTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"mds%d recovery completed\0A\00", align 1
@RECONNECT = common dso_local global i32 0, align 4
@CEPH_MDS_SESSION_OPEN = common dso_local global i64 0, align 8
@CEPH_MDS_SESSION_HUNG = common dso_local global i64 0, align 8
@CEPH_MDS_SESSION_CLOSING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c" connecting to export targets of laggy mds%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mdsmap*, %struct.ceph_mdsmap*)* @check_new_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_new_map(%struct.ceph_mds_client* %0, %struct.ceph_mdsmap* %1, %struct.ceph_mdsmap* %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mdsmap*, align 8
  %6 = alloca %struct.ceph_mdsmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mdsmap* %1, %struct.ceph_mdsmap** %5, align 8
  store %struct.ceph_mdsmap* %2, %struct.ceph_mdsmap** %6, align 8
  %11 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %6, align 8
  %15 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %201, %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %6, align 8
  %21 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ]
  br i1 %31, label %32, label %204

32:                                               ; preds = %30
  %33 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %33, i32 0, i32 1
  %35 = load %struct.ceph_mds_session**, %struct.ceph_mds_session*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ceph_mds_session*, %struct.ceph_mds_session** %35, i64 %37
  %39 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %38, align 8
  %40 = icmp ne %struct.ceph_mds_session* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %201

42:                                               ; preds = %32
  %43 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %43, i32 0, i32 1
  %45 = load %struct.ceph_mds_session**, %struct.ceph_mds_session*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ceph_mds_session*, %struct.ceph_mds_session** %45, i64 %47
  %49 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %48, align 8
  store %struct.ceph_mds_session* %49, %struct.ceph_mds_session** %10, align 8
  %50 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ceph_mdsmap_get_state(%struct.ceph_mdsmap* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ceph_mdsmap_get_state(%struct.ceph_mdsmap* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ceph_mds_state_name(i32 %57)
  %59 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @ceph_mdsmap_is_laggy(%struct.ceph_mdsmap* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ceph_mds_state_name(i32 %65)
  %67 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @ceph_mdsmap_is_laggy(%struct.ceph_mdsmap* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %73 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ceph_session_state_name(i64 %75)
  %77 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %58, i8* %64, i32 %66, i8* %72, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %5, align 8
  %80 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %42
  %84 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %85 = call i32 @get_session(%struct.ceph_mds_session* %84)
  %86 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %87 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %88 = call i32 @__unregister_session(%struct.ceph_mds_client* %86, %struct.ceph_mds_session* %87)
  %89 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %90 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %91 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %90, i32 0, i32 4
  %92 = call i32 @__wake_requests(%struct.ceph_mds_client* %89, i32* %91)
  %93 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %94 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %93, i32 0, i32 2
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %97 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %96, i32 0, i32 2
  %98 = call i32 @mutex_lock(i32* %97)
  %99 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %100 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %101 = call i32 @cleanup_session_requests(%struct.ceph_mds_client* %99, %struct.ceph_mds_session* %100)
  %102 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %103 = call i32 @remove_session_caps(%struct.ceph_mds_session* %102)
  %104 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %105 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %108 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %107)
  %109 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %110 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %109, i32 0, i32 2
  %111 = call i32 @mutex_lock(i32* %110)
  %112 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @kick_requests(%struct.ceph_mds_client* %112, i32 %113)
  br label %201

115:                                              ; preds = %42
  %116 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @ceph_mdsmap_get_addr(%struct.ceph_mdsmap* %116, i32 %117)
  %119 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @ceph_mdsmap_get_addr(%struct.ceph_mdsmap* %119, i32 %120)
  %122 = call i64 @memcmp(i32 %118, i32 %121, i32 4)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %115
  %125 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %126 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %125, i32 0, i32 2
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %129 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %128, i32 0, i32 2
  %130 = call i32 @mutex_lock(i32* %129)
  %131 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %132 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %131, i32 0, i32 2
  %133 = call i32 @mutex_lock(i32* %132)
  %134 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %135 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %134, i32 0, i32 3
  %136 = call i32 @ceph_con_close(i32* %135)
  %137 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %138 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %137, i32 0, i32 2
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load i64, i64* @CEPH_MDS_SESSION_RESTARTING, align 8
  %141 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %142 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %149

143:                                              ; preds = %115
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %201

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148, %124
  %150 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %151 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CEPH_MDS_SESSION_RESTARTING, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %149
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @CEPH_MDS_STATE_RECONNECT, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %161 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %160, i32 0, i32 2
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %164 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %165 = call i32 @send_mds_reconnect(%struct.ceph_mds_client* %163, %struct.ceph_mds_session* %164)
  %166 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %167 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %166, i32 0, i32 2
  %168 = call i32 @mutex_lock(i32* %167)
  br label %169

169:                                              ; preds = %159, %155, %149
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @CEPH_MDS_STATE_ACTIVE, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %200

173:                                              ; preds = %169
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @CEPH_MDS_STATE_ACTIVE, align 4
  %176 = icmp sge i32 %174, %175
  br i1 %176, label %177, label %200

177:                                              ; preds = %173
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @CEPH_MDS_STATE_CREATING, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @CEPH_MDS_STATE_STARTING, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %187 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %185, %181, %177
  %191 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @kick_requests(%struct.ceph_mds_client* %191, i32 %192)
  %194 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %195 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %196 = call i32 @ceph_kick_flushing_caps(%struct.ceph_mds_client* %194, %struct.ceph_mds_session* %195)
  %197 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %198 = load i32, i32* @RECONNECT, align 4
  %199 = call i32 @wake_up_session_caps(%struct.ceph_mds_session* %197, i32 %198)
  br label %200

200:                                              ; preds = %190, %173, %169
  br label %201

201:                                              ; preds = %200, %147, %83, %41
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %18

204:                                              ; preds = %30
  store i32 0, i32* %7, align 4
  br label %205

205:                                              ; preds = %261, %204
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %5, align 8
  %208 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %214 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br label %217

217:                                              ; preds = %211, %205
  %218 = phi i1 [ false, %205 ], [ %216, %211 ]
  br i1 %218, label %219, label %264

219:                                              ; preds = %217
  %220 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %221 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %220, i32 0, i32 1
  %222 = load %struct.ceph_mds_session**, %struct.ceph_mds_session*** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.ceph_mds_session*, %struct.ceph_mds_session** %222, i64 %224
  %226 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %225, align 8
  store %struct.ceph_mds_session* %226, %struct.ceph_mds_session** %10, align 8
  %227 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %228 = icmp ne %struct.ceph_mds_session* %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %219
  br label %261

230:                                              ; preds = %219
  %231 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %5, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i64 @ceph_mdsmap_is_laggy(%struct.ceph_mdsmap* %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %230
  br label %261

236:                                              ; preds = %230
  %237 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %238 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @CEPH_MDS_SESSION_OPEN, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %254, label %242

242:                                              ; preds = %236
  %243 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %244 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @CEPH_MDS_SESSION_HUNG, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %250 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @CEPH_MDS_SESSION_CLOSING, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %248, %242, %236
  %255 = load i32, i32* %7, align 4
  %256 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %255)
  %257 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %258 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %259 = call i32 @__open_export_target_sessions(%struct.ceph_mds_client* %257, %struct.ceph_mds_session* %258)
  br label %260

260:                                              ; preds = %254, %248
  br label %261

261:                                              ; preds = %260, %235, %229
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %7, align 4
  br label %205

264:                                              ; preds = %217
  ret void
}

declare dso_local i32 @dout(i8*, i32, ...) #1

declare dso_local i32 @ceph_mdsmap_get_state(%struct.ceph_mdsmap*, i32) #1

declare dso_local i32 @ceph_mds_state_name(i32) #1

declare dso_local i64 @ceph_mdsmap_is_laggy(%struct.ceph_mdsmap*, i32) #1

declare dso_local i32 @ceph_session_state_name(i64) #1

declare dso_local i32 @get_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @__unregister_session(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @__wake_requests(%struct.ceph_mds_client*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cleanup_session_requests(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @remove_session_caps(%struct.ceph_mds_session*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @kick_requests(%struct.ceph_mds_client*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ceph_mdsmap_get_addr(%struct.ceph_mdsmap*, i32) #1

declare dso_local i32 @ceph_con_close(i32*) #1

declare dso_local i32 @send_mds_reconnect(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @ceph_kick_flushing_caps(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @wake_up_session_caps(%struct.ceph_mds_session*, i32) #1

declare dso_local i32 @__open_export_target_sessions(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
