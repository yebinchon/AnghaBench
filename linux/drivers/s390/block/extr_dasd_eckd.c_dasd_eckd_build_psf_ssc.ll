; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_psf_ssc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_build_psf_ssc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, i32*, %struct.dasd_device*, %struct.dasd_device*, %struct.ccw1*, i64 }
%struct.ccw1 = type { i32, i64, i32 }
%struct.dasd_device = type { i32 }
%struct.dasd_psf_ssc_data = type { i32, i32*, i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not allocate PSF-SSC request\00", align 1
@PSF_ORDER_SSC = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PSF = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, i32)* @dasd_eckd_build_psf_ssc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_eckd_build_psf_ssc(%struct.dasd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_ccw_req*, align 8
  %7 = alloca %struct.dasd_psf_ssc_data*, align 8
  %8 = alloca %struct.ccw1*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %10 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %11 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %9, i32 1, i32 24, %struct.dasd_device* %10, i32* null)
  store %struct.dasd_ccw_req* %11, %struct.dasd_ccw_req** %6, align 8
  %12 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %13 = call i64 @IS_ERR(%struct.dasd_ccw_req* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @DBF_WARNING, align 4
  %17 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %18 = call i32 @DBF_DEV_EVENT(i32 %16, %struct.dasd_device* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  store %struct.dasd_ccw_req* %19, %struct.dasd_ccw_req** %3, align 8
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dasd_psf_ssc_data*
  store %struct.dasd_psf_ssc_data* %24, %struct.dasd_psf_ssc_data** %7, align 8
  %25 = load i32, i32* @PSF_ORDER_SSC, align 4
  %26 = load %struct.dasd_psf_ssc_data*, %struct.dasd_psf_ssc_data** %7, align 8
  %27 = getelementptr inbounds %struct.dasd_psf_ssc_data, %struct.dasd_psf_ssc_data* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dasd_psf_ssc_data*, %struct.dasd_psf_ssc_data** %7, align 8
  %29 = getelementptr inbounds %struct.dasd_psf_ssc_data, %struct.dasd_psf_ssc_data* %28, i32 0, i32 0
  store i32 192, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.dasd_psf_ssc_data*, %struct.dasd_psf_ssc_data** %7, align 8
  %34 = getelementptr inbounds %struct.dasd_psf_ssc_data, %struct.dasd_psf_ssc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, 8
  store i32 %36, i32* %34, align 8
  %37 = load %struct.dasd_psf_ssc_data*, %struct.dasd_psf_ssc_data** %7, align 8
  %38 = getelementptr inbounds %struct.dasd_psf_ssc_data, %struct.dasd_psf_ssc_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 136, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %20
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %43 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %42, i32 0, i32 7
  %44 = load %struct.ccw1*, %struct.ccw1** %43, align 8
  store %struct.ccw1* %44, %struct.ccw1** %8, align 8
  %45 = load i32, i32* @DASD_ECKD_CCW_PSF, align 4
  %46 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %47 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dasd_psf_ssc_data*, %struct.dasd_psf_ssc_data** %7, align 8
  %49 = ptrtoint %struct.dasd_psf_ssc_data* %48 to i64
  %50 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %51 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %53 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %52, i32 0, i32 0
  store i32 66, i32* %53, align 8
  %54 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %55 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %56 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %55, i32 0, i32 6
  store %struct.dasd_device* %54, %struct.dasd_device** %56, align 8
  %57 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %58 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %59 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %58, i32 0, i32 5
  store %struct.dasd_device* %57, %struct.dasd_device** %59, align 8
  %60 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %61 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %60, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %63 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %62, i32 0, i32 0
  store i32 256, i32* %63, align 8
  %64 = load i32, i32* @HZ, align 4
  %65 = mul nsw i32 10, %64
  %66 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %67 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = call i32 (...) @get_tod_clock()
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %70 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @DASD_CQR_FILLED, align 4
  %72 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %73 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  store %struct.dasd_ccw_req* %74, %struct.dasd_ccw_req** %3, align 8
  br label %75

75:                                               ; preds = %41, %15
  %76 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %76
}

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @get_tod_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
