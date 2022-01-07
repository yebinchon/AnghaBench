; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_reserve_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_reserve_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_cap_reservation = type { i32, i64 }
%struct.ceph_cap = type { i32 }
%struct.ceph_mds_session = type { i32, i32 }

@newcaps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reserve caps ctx=%p need=%d\0A\00", align 1
@ceph_cap_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"reserve caps ctx=%p ENOMEM need=%d got=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"reserve caps ctx=%p %d = %d used + %d resv + %d avail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_reserve_caps(%struct.ceph_mds_client* %0, %struct.ceph_cap_reservation* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_cap_reservation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_cap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ceph_mds_session*, align 8
  %16 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_cap_reservation* %1, %struct.ceph_cap_reservation** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @newcaps, align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, %struct.ceph_cap_reservation*, i32, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.ceph_cap_reservation* %19, i32 %20)
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %22, i32 0, i32 5
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %10, align 4
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %48 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %51 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %54 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %58 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = icmp ne i32 %49, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %65 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %64, i32 0, i32 5
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %173, %78, %36
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %186

72:                                               ; preds = %68
  %73 = load i32, i32* @ceph_cap_cachep, align 4
  %74 = load i32, i32* @GFP_NOFS, align 4
  %75 = call %struct.ceph_cap* @kmem_cache_alloc(i32 %73, i32 %74)
  store %struct.ceph_cap* %75, %struct.ceph_cap** %9, align 8
  %76 = load %struct.ceph_cap*, %struct.ceph_cap** %9, align 8
  %77 = icmp ne %struct.ceph_cap* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.ceph_cap*, %struct.ceph_cap** %9, align 8
  %80 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %79, i32 0, i32 0
  %81 = call i32 @list_add(i32* %80, i32* @newcaps)
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %68

86:                                               ; preds = %72
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %177, label %89

89:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %129, %89
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %93 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %90
  %97 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client* %97, i32 %98)
  store %struct.ceph_mds_session* %99, %struct.ceph_mds_session** %15, align 8
  %100 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %15, align 8
  %101 = icmp ne %struct.ceph_mds_session* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  br label %129

103:                                              ; preds = %96
  %104 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %105 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %104, i32 0, i32 7
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %15, align 8
  %108 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %107, i32 0, i32 1
  %109 = call i32 @mutex_lock(i32* %108)
  %110 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %15, align 8
  %111 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sub nsw i32 %112, %115
  store i32 %116, i32* %12, align 4
  %117 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %118 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %15, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @ceph_trim_caps(%struct.ceph_mds_client* %117, %struct.ceph_mds_session* %118, i32 %119)
  %121 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %15, align 8
  %122 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %121, i32 0, i32 1
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %15, align 8
  %125 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %124)
  %126 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %127 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %126, i32 0, i32 7
  %128 = call i32 @mutex_lock(i32* %127)
  br label %129

129:                                              ; preds = %103, %102
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %90

132:                                              ; preds = %90
  store i32 1, i32* %14, align 4
  %133 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %134 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %133, i32 0, i32 5
  %135 = call i32 @spin_lock(i32* %134)
  %136 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %137 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %173

140:                                              ; preds = %132
  %141 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %142 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp sge i32 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %16, align 4
  br label %156

152:                                              ; preds = %140
  %153 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %154 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %165 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %170 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %156, %132
  %174 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %175 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %174, i32 0, i32 5
  %176 = call i32 @spin_unlock(i32* %175)
  br label %68

177:                                              ; preds = %86
  %178 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %180, %181
  %183 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_cap_reservation* %178, i32 %179, i32 %182)
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %13, align 4
  br label %186

186:                                              ; preds = %177, %68
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @BUG_ON(i32 %195)
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %5, align 8
  %199 = getelementptr inbounds %struct.ceph_cap_reservation, %struct.ceph_cap_reservation* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %5, align 8
  %201 = getelementptr inbounds %struct.ceph_cap_reservation, %struct.ceph_cap_reservation* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %189, %186
  %203 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %204 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %203, i32 0, i32 5
  %205 = call i32 @spin_lock(i32* %204)
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %208 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %213 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %217 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %216, i32 0, i32 6
  %218 = call i32 @list_splice(i32* @newcaps, i32* %217)
  %219 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %220 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %223 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %226 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %224, %227
  %229 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %230 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %228, %231
  %233 = icmp ne i32 %221, %232
  %234 = zext i1 %233 to i32
  %235 = call i32 @BUG_ON(i32 %234)
  %236 = load i32, i32* %13, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %202
  %239 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %240, %241
  %243 = call i32 @__ceph_unreserve_caps(%struct.ceph_mds_client* %239, i32 %242)
  br label %244

244:                                              ; preds = %238, %202
  %245 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %246 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %245, i32 0, i32 5
  %247 = call i32 @spin_unlock(i32* %246)
  %248 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %5, align 8
  %249 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %250 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %253 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %256 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %259 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i8*, %struct.ceph_cap_reservation*, i32, ...) @dout(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), %struct.ceph_cap_reservation* %248, i32 %251, i32 %254, i32 %257, i32 %260)
  %262 = load i32, i32* %13, align 4
  ret i32 %262
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @dout(i8*, %struct.ceph_cap_reservation*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ceph_cap* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ceph_trim_caps(%struct.ceph_mds_client*, %struct.ceph_mds_session*, i32) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @pr_warn(i8*, %struct.ceph_cap_reservation*, i32, i32) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @__ceph_unreserve_caps(%struct.ceph_mds_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
