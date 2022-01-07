; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, %struct.dasd_device*, %struct.ccw1*, i8* }
%struct.ccw1 = type { i32, i64, i32, i32 }
%struct.dasd_device = type { i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.format_data_t = type { i32, i32 }
%struct.eckd_count = type { i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_READ_COUNT = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@DASD_RETRIES = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_NRF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, %struct.format_data_t*, i32, %struct.eckd_count*, i32)* @dasd_eckd_build_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_build_check(%struct.dasd_device* %0, %struct.format_data_t* %1, i32 %2, %struct.eckd_count* %3, i32 %4) #0 {
  %6 = alloca %struct.dasd_ccw_req*, align 8
  %7 = alloca %struct.dasd_device*, align 8
  %8 = alloca %struct.format_data_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.eckd_count*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dasd_eckd_private*, align 8
  %13 = alloca %struct.dasd_eckd_private*, align 8
  %14 = alloca %struct.dasd_device*, align 8
  %15 = alloca %struct.dasd_ccw_req*, align 8
  %16 = alloca %struct.ccw1*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %7, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.eckd_count* %3, %struct.eckd_count** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dasd_device* null, %struct.dasd_device** %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %27 = call %struct.dasd_device* @dasd_alias_get_start_dev(%struct.dasd_device* %26)
  store %struct.dasd_device* %27, %struct.dasd_device** %14, align 8
  br label %28

28:                                               ; preds = %25, %5
  %29 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %30 = icmp ne %struct.dasd_device* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %32, %struct.dasd_device** %14, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 1
  %36 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %35, align 8
  store %struct.dasd_eckd_private* %36, %struct.dasd_eckd_private** %12, align 8
  %37 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 1
  %39 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %38, align 8
  store %struct.dasd_eckd_private* %39, %struct.dasd_eckd_private** %13, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %42 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %45 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = add nsw i32 %47, 1
  %49 = mul nsw i32 %40, %48
  store i32 %49, i32* %21, align 4
  %50 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %13, align 8
  %51 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %33
  store i32 1, i32* %18, align 4
  store i32 4, i32* %19, align 4
  br label %61

60:                                               ; preds = %33
  store i32 2, i32* %18, align 4
  store i32 8, i32* %19, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %69 = call %struct.dasd_ccw_req* @dasd_fmalloc_request(i32 %65, i32 %66, i32 %67, %struct.dasd_device* %68)
  store %struct.dasd_ccw_req* %69, %struct.dasd_ccw_req** %15, align 8
  %70 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %71 = call i64 @IS_ERR(%struct.dasd_ccw_req* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  store %struct.dasd_ccw_req* %74, %struct.dasd_ccw_req** %6, align 8
  br label %199

75:                                               ; preds = %61
  %76 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %12, align 8
  %77 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %81 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %80, i32 0, i32 9
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %17, align 8
  %83 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %84 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %83, i32 0, i32 8
  %85 = load %struct.ccw1*, %struct.ccw1** %84, align 8
  store %struct.ccw1* %85, %struct.ccw1** %16, align 8
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %75
  %89 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %90 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %89, i32 1
  store %struct.ccw1* %90, %struct.ccw1** %16, align 8
  %91 = ptrtoint %struct.ccw1* %89 to i32
  %92 = load i8*, i8** %17, align 8
  %93 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %94 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %97 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DASD_ECKD_CCW_READ_COUNT, align 4
  %100 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %101 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %102 = load i32, i32* %21, align 4
  %103 = call i32 @prefix_LRE(i32 %91, i8* %92, i32 %95, i32 %98, i32 %99, %struct.dasd_device* %100, %struct.dasd_device* %101, i32 1, i32 0, i32 %102, i32 0, i32 0)
  br label %137

104:                                              ; preds = %75
  %105 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %106 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %105, i32 1
  store %struct.ccw1* %106, %struct.ccw1** %16, align 8
  %107 = ptrtoint %struct.ccw1* %105 to i32
  %108 = load i8*, i8** %17, align 8
  %109 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %110 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %113 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @DASD_ECKD_CCW_READ_COUNT, align 4
  %116 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %117 = call i32 @define_extent(i32 %107, i8* %108, i32 %111, i32 %114, i32 %115, %struct.dasd_device* %116, i32 0)
  %118 = load i8*, i8** %17, align 8
  %119 = getelementptr i8, i8* %118, i64 4
  store i8* %119, i8** %17, align 8
  %120 = load i32, i32* @CCW_FLAG_CC, align 4
  %121 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %122 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %121, i64 -1
  %123 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %120
  store i32 %125, i32* %123, align 8
  %126 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %127 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %126, i32 1
  store %struct.ccw1* %127, %struct.ccw1** %16, align 8
  %128 = ptrtoint %struct.ccw1* %126 to i32
  %129 = load i8*, i8** %17, align 8
  %130 = load %struct.format_data_t*, %struct.format_data_t** %8, align 8
  %131 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* @DASD_ECKD_CCW_READ_COUNT, align 4
  %135 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %136 = call i32 @locate_record(i32 %128, i8* %129, i32 %132, i32 0, i32 %133, i32 %134, %struct.dasd_device* %135, i32 0)
  br label %137

137:                                              ; preds = %104, %88
  store i32 0, i32* %22, align 4
  br label %138

138:                                              ; preds = %165, %137
  %139 = load i32, i32* %22, align 4
  %140 = load i32, i32* %21, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %138
  %143 = load i32, i32* @CCW_FLAG_CC, align 4
  %144 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %145 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %144, i64 -1
  %146 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @DASD_ECKD_CCW_READ_COUNT, align 4
  %150 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %151 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @CCW_FLAG_SLI, align 4
  %153 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %154 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %156 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %155, i32 0, i32 0
  store i32 8, i32* %156, align 8
  %157 = load %struct.eckd_count*, %struct.eckd_count** %10, align 8
  %158 = ptrtoint %struct.eckd_count* %157 to i64
  %159 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %160 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  %162 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %161, i32 1
  store %struct.ccw1* %162, %struct.ccw1** %16, align 8
  %163 = load %struct.eckd_count*, %struct.eckd_count** %10, align 8
  %164 = getelementptr inbounds %struct.eckd_count, %struct.eckd_count* %163, i32 1
  store %struct.eckd_count* %164, %struct.eckd_count** %10, align 8
  br label %165

165:                                              ; preds = %142
  %166 = load i32, i32* %22, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %22, align 4
  br label %138

168:                                              ; preds = %138
  %169 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %170 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %171 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %170, i32 0, i32 7
  store %struct.dasd_device* %169, %struct.dasd_device** %171, align 8
  %172 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %173 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %174 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %173, i32 0, i32 6
  store %struct.dasd_device* %172, %struct.dasd_device** %174, align 8
  %175 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  %176 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %177 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %176, i32 0, i32 5
  store %struct.dasd_device* %175, %struct.dasd_device** %177, align 8
  %178 = load i32, i32* @DASD_RETRIES, align 4
  %179 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %180 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %182 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @HZ, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %187 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = call i32 (...) @get_tod_clock()
  %189 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %190 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @DASD_CQR_FILLED, align 4
  %192 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %193 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @DASD_CQR_SUPPRESS_NRF, align 4
  %195 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  %196 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %195, i32 0, i32 1
  %197 = call i32 @set_bit(i32 %194, i32* %196)
  %198 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %15, align 8
  store %struct.dasd_ccw_req* %198, %struct.dasd_ccw_req** %6, align 8
  br label %199

199:                                              ; preds = %168, %73
  %200 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  ret %struct.dasd_ccw_req* %200
}

declare dso_local %struct.dasd_device* @dasd_alias_get_start_dev(%struct.dasd_device*) #1

declare dso_local %struct.dasd_ccw_req* @dasd_fmalloc_request(i32, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @prefix_LRE(i32, i8*, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @define_extent(i32, i8*, i32, i32, i32, %struct.dasd_device*, i32) #1

declare dso_local i32 @locate_record(i32, i8*, i32, i32, i32, i32, %struct.dasd_device*, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
