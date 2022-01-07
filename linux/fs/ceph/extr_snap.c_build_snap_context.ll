; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_build_snap_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_build_snap_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_snap_realm = type { i32, i32, i64, i64, i32, %struct.ceph_snap_context*, i32, i32, i32, %struct.ceph_snap_realm* }
%struct.ceph_snap_context = type { i32, i64, i64* }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"build_snap_context %llx %p: %p seq %lld (%u snaps) (unchanged)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@cmpu64_rev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"build_snap_context %llx %p: %p seq %lld (%u snaps)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"build_snap_context %llx %p fail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_snap_realm*, %struct.list_head*)* @build_snap_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_snap_context(%struct.ceph_snap_realm* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_snap_realm*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.ceph_snap_realm*, align 8
  %7 = alloca %struct.ceph_snap_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ceph_snap_realm* %0, %struct.ceph_snap_realm** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %11 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %11, i32 0, i32 9
  %13 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %12, align 8
  store %struct.ceph_snap_realm* %13, %struct.ceph_snap_realm** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %22 = icmp ne %struct.ceph_snap_realm* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %25 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %24, i32 0, i32 5
  %26 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %25, align 8
  %27 = icmp ne %struct.ceph_snap_context* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %30 = load %struct.list_head*, %struct.list_head** %5, align 8
  %31 = call i32 @build_snap_context(%struct.ceph_snap_realm* %29, %struct.list_head* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %257

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %38 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %37, i32 0, i32 5
  %39 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %38, align 8
  %40 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %36, %2
  %45 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %46 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %45, i32 0, i32 5
  %47 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %46, align 8
  %48 = icmp ne %struct.ceph_snap_context* %47, null
  br i1 %48, label %49, label %93

49:                                               ; preds = %44
  %50 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %51 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %50, i32 0, i32 5
  %52 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %51, align 8
  %53 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %56 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %49
  %60 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %61 = icmp ne %struct.ceph_snap_realm* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %64 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %63, i32 0, i32 5
  %65 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %64, align 8
  %66 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %69 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %68, i32 0, i32 5
  %70 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %69, align 8
  %71 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %67, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %62, %59
  %75 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %76 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %79 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %80 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %79, i32 0, i32 5
  %81 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %80, align 8
  %82 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %83 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %82, i32 0, i32 5
  %84 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %83, align 8
  %85 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %88 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %87, i32 0, i32 5
  %89 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %88, align 8
  %90 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dout(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %77, %struct.ceph_snap_realm* %78, %struct.ceph_snap_context* %81, i64 %86, i32 %91)
  store i32 0, i32* %3, align 4
  br label %277

93:                                               ; preds = %62, %49, %44
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* @SIZE_MAX, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 %99, 24
  %101 = udiv i64 %100, 4
  %102 = icmp ugt i64 %97, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %257

104:                                              ; preds = %93
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @GFP_NOFS, align 4
  %107 = call %struct.ceph_snap_context* @ceph_create_snap_context(i32 %105, i32 %106)
  store %struct.ceph_snap_context* %107, %struct.ceph_snap_context** %7, align 8
  %108 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %109 = icmp ne %struct.ceph_snap_context* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %257

111:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  %112 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %113 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %116 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %118 = icmp ne %struct.ceph_snap_realm* %117, null
  br i1 %118, label %119, label %182

119:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %160, %119
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %123 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %122, i32 0, i32 5
  %124 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %123, align 8
  %125 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %121, %126
  br i1 %127, label %128, label %163

128:                                              ; preds = %120
  %129 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %130 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %129, i32 0, i32 5
  %131 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %130, align 8
  %132 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %139 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %137, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %128
  %143 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %144 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %143, i32 0, i32 5
  %145 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %144, align 8
  %146 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %153 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  store i64 %151, i64* %158, align 8
  br label %159

159:                                              ; preds = %142, %128
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %120

163:                                              ; preds = %120
  %164 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %165 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %164, i32 0, i32 5
  %166 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %165, align 8
  %167 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %170 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %168, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %163
  %174 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %175 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %174, i32 0, i32 5
  %176 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %175, align 8
  %177 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %180 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %173, %163
  br label %182

182:                                              ; preds = %181, %111
  %183 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %184 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %183, i32 0, i32 2
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %190 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %193 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 4, %195
  %197 = trunc i64 %196 to i32
  %198 = call i32 @memcpy(i64* %188, i32 %191, i32 %197)
  %199 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %200 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %9, align 4
  %204 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %205 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %204, i32 0, i32 2
  %206 = load i64*, i64** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %211 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %214 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = mul i64 4, %216
  %218 = trunc i64 %217 to i32
  %219 = call i32 @memcpy(i64* %209, i32 %212, i32 %218)
  %220 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %221 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %9, align 4
  %225 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %226 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %225, i32 0, i32 2
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @cmpu64_rev, align 4
  %230 = call i32 @sort(i64* %227, i32 %228, i32 4, i32 %229, i32* null)
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %233 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %235 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %238 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %239 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %240 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %243 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @dout(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %236, %struct.ceph_snap_realm* %237, %struct.ceph_snap_context* %238, i64 %241, i32 %244)
  %246 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %247 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %246, i32 0, i32 5
  %248 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %247, align 8
  %249 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %248)
  %250 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %7, align 8
  %251 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %252 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %251, i32 0, i32 5
  store %struct.ceph_snap_context* %250, %struct.ceph_snap_context** %252, align 8
  %253 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %254 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %253, i32 0, i32 6
  %255 = load %struct.list_head*, %struct.list_head** %5, align 8
  %256 = call i32 @list_add_tail(i32* %254, %struct.list_head* %255)
  store i32 0, i32* %3, align 4
  br label %277

257:                                              ; preds = %110, %103, %34
  %258 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %259 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %258, i32 0, i32 5
  %260 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %259, align 8
  %261 = icmp ne %struct.ceph_snap_context* %260, null
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %264 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %263, i32 0, i32 5
  %265 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %264, align 8
  %266 = call i32 @ceph_put_snap_context(%struct.ceph_snap_context* %265)
  %267 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %268 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %267, i32 0, i32 5
  store %struct.ceph_snap_context* null, %struct.ceph_snap_context** %268, align 8
  br label %269

269:                                              ; preds = %262, %257
  %270 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %271 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %272, %struct.ceph_snap_realm* %273, i32 %274)
  %276 = load i32, i32* %8, align 4
  store i32 %276, i32* %3, align 4
  br label %277

277:                                              ; preds = %269, %182, %74
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i32 @dout(i8*, i32, %struct.ceph_snap_realm*, %struct.ceph_snap_context*, i64, i32) #1

declare dso_local %struct.ceph_snap_context* @ceph_create_snap_context(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @sort(i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @ceph_put_snap_context(%struct.ceph_snap_context*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @pr_err(i8*, i32, %struct.ceph_snap_realm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
