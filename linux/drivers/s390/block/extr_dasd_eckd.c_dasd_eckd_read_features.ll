; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__*, %struct.dasd_eckd_private* }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_eckd_private = type { %struct.dasd_rssd_features }
%struct.dasd_rssd_features = type { i32, i32 }
%struct.dasd_psf_prssd_data = type { i32, i32 }
%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device*, i64, i32, i32, %struct.ccw1*, i32*, %struct.dasd_device* }
%struct.ccw1 = type { i32, i8*, i32, i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not allocate initialization request\00", align 1
@HZ = common dso_local global i32 0, align 4
@PSF_ORDER_PRSSD = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PSF = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_RSSD = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Reading device feature codes failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_read_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_read_features(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca %struct.dasd_psf_prssd_data*, align 8
  %6 = alloca %struct.dasd_rssd_features*, align 8
  %7 = alloca %struct.dasd_ccw_req*, align 8
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %4, align 8
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %14 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %13, i32 0, i32 0
  %15 = call i32 @memset(%struct.dasd_rssd_features* %14, i32 0, i32 8)
  %16 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %17 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %18 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %16, i32 2, i32 16, %struct.dasd_device* %17, i32* null)
  store %struct.dasd_ccw_req* %18, %struct.dasd_ccw_req** %7, align 8
  %19 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %20 = call i64 @IS_ERR(%struct.dasd_ccw_req* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @DBF_WARNING, align 4
  %24 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %25 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @DBF_EVENT_DEVID(i32 %23, %struct.TYPE_2__* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %28)
  store i32 %29, i32* %2, align 4
  br label %128

30:                                               ; preds = %1
  %31 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 8
  store %struct.dasd_device* %31, %struct.dasd_device** %33, align 8
  %34 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %35 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %36 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %35, i32 0, i32 2
  store %struct.dasd_device* %34, %struct.dasd_device** %36, align 8
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 7
  store i32* null, i32** %38, align 8
  %39 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %40 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %39, i32 0, i32 0
  store i32 256, i32* %40, align 8
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 10, %41
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %44 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %46 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %48, %struct.dasd_psf_prssd_data** %5, align 8
  %49 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %50 = bitcast %struct.dasd_psf_prssd_data* %49 to %struct.dasd_rssd_features*
  %51 = call i32 @memset(%struct.dasd_rssd_features* %50, i32 0, i32 8)
  %52 = load i32, i32* @PSF_ORDER_PRSSD, align 4
  %53 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %54 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %56 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %55, i32 0, i32 0
  store i32 65, i32* %56, align 4
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %58 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %57, i32 0, i32 6
  %59 = load %struct.ccw1*, %struct.ccw1** %58, align 8
  store %struct.ccw1* %59, %struct.ccw1** %8, align 8
  %60 = load i32, i32* @DASD_ECKD_CCW_PSF, align 4
  %61 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %62 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %64 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %63, i32 0, i32 0
  store i32 8, i32* %64, align 8
  %65 = load i32, i32* @CCW_FLAG_CC, align 4
  %66 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %67 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %71 = ptrtoint %struct.dasd_psf_prssd_data* %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %74 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %76 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %75, i64 1
  %77 = bitcast %struct.dasd_psf_prssd_data* %76 to %struct.dasd_rssd_features*
  store %struct.dasd_rssd_features* %77, %struct.dasd_rssd_features** %6, align 8
  %78 = load %struct.dasd_rssd_features*, %struct.dasd_rssd_features** %6, align 8
  %79 = call i32 @memset(%struct.dasd_rssd_features* %78, i32 0, i32 8)
  %80 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %81 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %80, i32 1
  store %struct.ccw1* %81, %struct.ccw1** %8, align 8
  %82 = load i32, i32* @DASD_ECKD_CCW_RSSD, align 4
  %83 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %84 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %86 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %85, i32 0, i32 0
  store i32 8, i32* %86, align 8
  %87 = load %struct.dasd_rssd_features*, %struct.dasd_rssd_features** %6, align 8
  %88 = ptrtoint %struct.dasd_rssd_features* %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %91 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = call i32 (...) @get_tod_clock()
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %94 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @DASD_CQR_FILLED, align 4
  %96 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %97 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %99 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %30
  %103 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %104 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.dasd_psf_prssd_data*
  store %struct.dasd_psf_prssd_data* %106, %struct.dasd_psf_prssd_data** %5, align 8
  %107 = load %struct.dasd_psf_prssd_data*, %struct.dasd_psf_prssd_data** %5, align 8
  %108 = getelementptr inbounds %struct.dasd_psf_prssd_data, %struct.dasd_psf_prssd_data* %107, i64 1
  %109 = bitcast %struct.dasd_psf_prssd_data* %108 to %struct.dasd_rssd_features*
  store %struct.dasd_rssd_features* %109, %struct.dasd_rssd_features** %6, align 8
  %110 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %111 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %110, i32 0, i32 0
  %112 = load %struct.dasd_rssd_features*, %struct.dasd_rssd_features** %6, align 8
  %113 = call i32 @memcpy(%struct.dasd_rssd_features* %111, %struct.dasd_rssd_features* %112, i32 8)
  br label %121

114:                                              ; preds = %30
  %115 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %116 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @dev_warn(i32* %118, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %114, %102
  %122 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %123 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %124 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %123, i32 0, i32 2
  %125 = load %struct.dasd_device*, %struct.dasd_device** %124, align 8
  %126 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %122, %struct.dasd_device* %125)
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %121, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @memset(%struct.dasd_rssd_features*, i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @memcpy(%struct.dasd_rssd_features*, %struct.dasd_rssd_features*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
