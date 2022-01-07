; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___do_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ceph_mds_request = type { i32, i32, i64, i32, i32, i32, i64, i64, i32 }
%struct.ceph_mds_session = type { i64, i32, i32 }

@CEPH_MDS_R_GOT_RESULT = common dso_local global i32 0, align 4
@CEPH_MDS_R_ABORTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"do_request timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CEPH_MOUNT_SHUTDOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"do_request forced umount\0A\00", align 1
@CEPH_MOUNT_MOUNTING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"do_request mdsmap err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"do_request no mdsmap, waiting for map\0A\00", align 1
@CEPH_MOUNT_OPT_MOUNTWAIT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"probably no mds server is up\0A\00", align 1
@CEPH_MDS_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"do_request no mds or not active, waiting for map\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"do_request mds%d session %p state %s\0A\00", align 1
@CEPH_MDS_SESSION_OPEN = common dso_local global i64 0, align 8
@CEPH_MDS_SESSION_HUNG = common dso_local global i64 0, align 8
@CEPH_MDS_SESSION_REJECTED = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@CEPH_MDS_SESSION_NEW = common dso_local global i64 0, align 8
@CEPH_MDS_SESSION_CLOSING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"__do_request early error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mds_request*)* @__do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_request(%struct.ceph_mds_client* %0, %struct.ceph_mds_request* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_mds_request*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_mds_request* %1, %struct.ceph_mds_request** %4, align 8
  store %struct.ceph_mds_session* null, %struct.ceph_mds_session** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @CEPH_MDS_R_GOT_RESULT, align 4
  %14 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %14, i32 0, i32 8
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @CEPH_MDS_R_ABORTED, align 4
  %20 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %20, i32 0, i32 8
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %26 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %27 = call i32 @__unregister_request(%struct.ceph_mds_client* %25, %struct.ceph_mds_request* %26)
  br label %28

28:                                               ; preds = %24, %18
  br label %261

29:                                               ; preds = %12
  %30 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i64, i64* @jiffies, align 8
  %36 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %37 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %40 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i64 @time_after_eq(i64 %35, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %245

49:                                               ; preds = %34, %29
  %50 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %51 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @READ_ONCE(i32 %54)
  %56 = load i64, i64* @CEPH_MOUNT_SHUTDOWN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %245

62:                                               ; preds = %49
  %63 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %64 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @READ_ONCE(i32 %67)
  %69 = load i64, i64* @CEPH_MOUNT_MOUNTING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %118

71:                                               ; preds = %62
  %72 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %73 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %78 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %245

82:                                               ; preds = %71
  %83 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %84 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %92 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %91, i32 0, i32 4
  %93 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %94 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %93, i32 0, i32 1
  %95 = call i32 @list_add(i32* %92, i32* %94)
  br label %261

96:                                               ; preds = %82
  %97 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %98 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CEPH_MOUNT_OPT_MOUNTWAIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %96
  %108 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %109 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %108, i32 0, i32 2
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = call i32 @ceph_mdsmap_is_cluster_available(%struct.TYPE_7__* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  %116 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %245

117:                                              ; preds = %107, %96
  br label %118

118:                                              ; preds = %117, %62
  %119 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %120 = call i32 @put_request_session(%struct.ceph_mds_request* %119)
  %121 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %122 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %123 = call i32 @__choose_mds(%struct.ceph_mds_client* %121, %struct.ceph_mds_request* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %128 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %127, i32 0, i32 2
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i64 @ceph_mdsmap_get_state(%struct.TYPE_7__* %129, i32 %130)
  %132 = load i64, i64* @CEPH_MDS_STATE_ACTIVE, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %126, %118
  %135 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %136 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %137 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %136, i32 0, i32 4
  %138 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %139 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %138, i32 0, i32 1
  %140 = call i32 @list_add(i32* %137, i32* %139)
  br label %261

141:                                              ; preds = %126
  %142 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client* %142, i32 %143)
  store %struct.ceph_mds_session* %144, %struct.ceph_mds_session** %5, align 8
  %145 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %146 = icmp ne %struct.ceph_mds_session* %145, null
  br i1 %146, label %158, label %147

147:                                              ; preds = %141
  %148 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call %struct.ceph_mds_session* @register_session(%struct.ceph_mds_client* %148, i32 %149)
  store %struct.ceph_mds_session* %150, %struct.ceph_mds_session** %5, align 8
  %151 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %152 = call i64 @IS_ERR(%struct.ceph_mds_session* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %156 = call i32 @PTR_ERR(%struct.ceph_mds_session* %155)
  store i32 %156, i32* %7, align 4
  br label %245

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %141
  %159 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %160 = call i32 @get_session(%struct.ceph_mds_session* %159)
  %161 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %162 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %165 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %166 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @ceph_session_state_name(i64 %167)
  %169 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %163, %struct.ceph_mds_session* %164, i32 %168)
  %170 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %171 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CEPH_MDS_SESSION_OPEN, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %212

175:                                              ; preds = %158
  %176 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %177 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CEPH_MDS_SESSION_HUNG, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %212

181:                                              ; preds = %175
  %182 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %183 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @CEPH_MDS_SESSION_REJECTED, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32, i32* @EACCES, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %7, align 4
  br label %242

190:                                              ; preds = %181
  %191 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %192 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @CEPH_MDS_SESSION_NEW, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %198 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @CEPH_MDS_SESSION_CLOSING, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %196, %190
  %203 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %204 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %205 = call i32 @__open_session(%struct.ceph_mds_client* %203, %struct.ceph_mds_session* %204)
  br label %206

206:                                              ; preds = %202, %196
  %207 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %208 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %207, i32 0, i32 4
  %209 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %210 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %209, i32 0, i32 2
  %211 = call i32 @list_add(i32* %208, i32* %210)
  br label %242

212:                                              ; preds = %175, %158
  %213 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %214 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %213, i32 0, i32 1
  store i32 -1, i32* %214, align 4
  %215 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %216 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %212
  %220 = load i64, i64* @jiffies, align 8
  %221 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %222 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %221, i32 0, i32 2
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %219, %212
  %224 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %225 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @__prepare_send_request(%struct.ceph_mds_client* %224, %struct.ceph_mds_request* %225, i32 %226, i32 0)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %241, label %230

230:                                              ; preds = %223
  %231 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %232 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @ceph_msg_get(i32 %233)
  %235 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %236 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %235, i32 0, i32 1
  %237 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %238 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @ceph_con_send(i32* %236, i32 %239)
  br label %241

241:                                              ; preds = %230, %223
  br label %242

242:                                              ; preds = %241, %206, %187
  %243 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %244 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %243)
  br label %245

245:                                              ; preds = %242, %154, %113, %76, %58, %45
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %245
  %249 = load i32, i32* %7, align 4
  %250 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %7, align 4
  %252 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %253 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %255 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %256 = call i32 @complete_request(%struct.ceph_mds_client* %254, %struct.ceph_mds_request* %255)
  %257 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %258 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %259 = call i32 @__unregister_request(%struct.ceph_mds_client* %257, %struct.ceph_mds_request* %258)
  br label %260

260:                                              ; preds = %248, %245
  br label %261

261:                                              ; preds = %260, %134, %89, %28
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__unregister_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ceph_mdsmap_is_cluster_available(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @put_request_session(%struct.ceph_mds_request*) #1

declare dso_local i32 @__choose_mds(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i64 @ceph_mdsmap_get_state(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client*, i32) #1

declare dso_local %struct.ceph_mds_session* @register_session(%struct.ceph_mds_client*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_session*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_session*) #1

declare dso_local i32 @get_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @ceph_session_state_name(i64) #1

declare dso_local i32 @__open_session(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @__prepare_send_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*, i32, i32) #1

declare dso_local i32 @ceph_msg_get(i32) #1

declare dso_local i32 @ceph_con_send(i32*, i32) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @complete_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
