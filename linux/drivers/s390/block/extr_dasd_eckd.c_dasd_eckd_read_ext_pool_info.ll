; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_ext_pool_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_ext_pool_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dasd_psf_prssd_data = type { i32, i32 }
%struct.dasd_rssd_lcq = type { i32, i32 }
%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device*, i32, i32*, %struct.dasd_device*, i32, i32, %struct.ccw1*, %struct.dasd_rssd_lcq* }
%struct.ccw1 = type { i32, i8*, i32, i32 }

@UA_BASE_PAV_ALIAS = common dso_local global i64 0, align 8
@UA_HYPER_PAV_ALIAS = common dso_local global i64 0, align 8
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not allocate initialization request\00", align 1
@PSF_ORDER_PRSSD = common dso_local global i32 0, align 4
@PSF_SUBORDER_LCQ = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PSF = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_RSSD = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_CR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Reading the logical configuration failed with rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_read_ext_pool_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_read_ext_pool_info(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca %struct.dasd_psf_prssd_data*, align 8
  %6 = alloca %struct.dasd_rssd_lcq*, align 8
  %7 = alloca %struct.dasd_ccw_req*, align 8
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 2
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %4, align 8
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %14 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UA_BASE_PAV_ALIAS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %21 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UA_HYPER_PAV_ALIAS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %145

27:                                               ; preds = %19
  %28 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %29 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %30 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %28, i32 2, i32 16, %struct.dasd_device* %29, i32* null)
  store %struct.dasd_ccw_req* %30, %struct.dasd_ccw_req** %7, align 8
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %32 = call i64 @IS_ERR(%struct.dasd_ccw_req* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* @DBF_WARNING, align 4
  %36 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %37 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i32, i8*, ...) @DBF_EVENT_DEVID(i32 %35, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %41 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %40)
  store i32 %41, i32* %2, align 4
  br label %145

42:                                               ; preds = %27
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %44 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %43, i32 0, i32 9
  %45 = load %struct.dasd_rssd_lcq*, %struct.dasd_rssd_lcq** %44, align 8
  %46 = bitcast %struct.dasd_rssd_lcq* %45 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %46, %struct.dasd_psf_prssd_data** %5, align 8
  %47 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %48 = bitcast %struct.dasd_psf_prssd_data* %47 to %struct.dasd_rssd_lcq*
  %49 = call i32 @memset(%struct.dasd_rssd_lcq* %48, i32 0, i32 8)
  %50 = load i32, i32* @PSF_ORDER_PRSSD, align 4
  %51 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %52 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @PSF_SUBORDER_LCQ, align 4
  %54 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %55 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %57 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %56, i32 0, i32 8
  %58 = load %struct.ccw1*, %struct.ccw1** %57, align 8
  store %struct.ccw1* %58, %struct.ccw1** %8, align 8
  %59 = load i32, i32* @DASD_ECKD_CCW_PSF, align 4
  %60 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %61 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %63 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %62, i32 0, i32 0
  store i32 8, i32* %63, align 8
  %64 = load i32, i32* @CCW_FLAG_CC, align 4
  %65 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %66 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %70 = ptrtoint %struct.dasd_psf_prssd_data* %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %73 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %75 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %74, i64 1
  %76 = bitcast %struct.dasd_psf_prssd_data* %75 to %struct.dasd_rssd_lcq*
  store %struct.dasd_rssd_lcq* %76, %struct.dasd_rssd_lcq** %6, align 8
  %77 = load %struct.dasd_rssd_lcq*, %struct.dasd_rssd_lcq** %6, align 8
  %78 = call i32 @memset(%struct.dasd_rssd_lcq* %77, i32 0, i32 8)
  %79 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %80 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %79, i32 1
  store %struct.ccw1* %80, %struct.ccw1** %8, align 8
  %81 = load i32, i32* @DASD_ECKD_CCW_RSSD, align 4
  %82 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %83 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %85 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %84, i32 0, i32 0
  store i32 8, i32* %85, align 8
  %86 = load i32, i32* @CCW_FLAG_SLI, align 4
  %87 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %88 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.dasd_rssd_lcq*, %struct.dasd_rssd_lcq** %6, align 8
  %92 = ptrtoint %struct.dasd_rssd_lcq* %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %95 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = call i32 (...) @get_tod_clock()
  %97 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %98 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @DASD_CQR_FILLED, align 4
  %100 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %101 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %103 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %104 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %103, i32 0, i32 5
  store %struct.dasd_device* %102, %struct.dasd_device** %104, align 8
  %105 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %106 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %107 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %106, i32 0, i32 2
  store %struct.dasd_device* %105, %struct.dasd_device** %107, align 8
  %108 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %109 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %108, i32 0, i32 4
  store i32* null, i32** %109, align 8
  %110 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %111 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %110, i32 0, i32 0
  store i32 256, i32* %111, align 8
  %112 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %113 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @HZ, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %118 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @DASD_CQR_SUPPRESS_CR, align 4
  %120 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %121 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %120, i32 0, i32 3
  %122 = call i32 @__set_bit(i32 %119, i32* %121)
  %123 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %124 = call i32 @dasd_sleep_on_interruptible(%struct.dasd_ccw_req* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %42
  %128 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %129 = load %struct.dasd_rssd_lcq*, %struct.dasd_rssd_lcq** %6, align 8
  %130 = call i32 @dasd_eckd_cpy_ext_pool_data(%struct.dasd_device* %128, %struct.dasd_rssd_lcq* %129)
  br label %138

131:                                              ; preds = %42
  %132 = load i32, i32* @DBF_WARNING, align 4
  %133 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %134 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 (i32, i32, i8*, ...) @DBF_EVENT_DEVID(i32 %132, i32 %135, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %131, %127
  %139 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %140 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %141 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %140, i32 0, i32 2
  %142 = load %struct.dasd_device*, %struct.dasd_device** %141, align 8
  %143 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %139, %struct.dasd_device* %142)
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %138, %34, %26
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @memset(%struct.dasd_rssd_lcq*, i32, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @dasd_sleep_on_interruptible(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_eckd_cpy_ext_pool_data(%struct.dasd_device*, %struct.dasd_rssd_lcq*) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
