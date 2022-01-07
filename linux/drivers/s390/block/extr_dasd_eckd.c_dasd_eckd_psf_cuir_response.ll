; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_psf_cuir_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_psf_cuir_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dasd_psf_cuir_response = type { i32, i32, i32, i8*, i32, i32 }
%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device*, i32, i32, i32, i32*, %struct.dasd_device*, %struct.ccw1*, i64 }
%struct.ccw1 = type { i32, i32, i8*, i32 }

@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not allocate PSF-CUIR request\00", align 1
@PSF_ORDER_CUIR_RESPONSE = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_PSF = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@DASD_CQR_VERIFY_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32, i8*, i32)* @dasd_eckd_psf_cuir_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_psf_cuir_response(%struct.dasd_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dasd_psf_cuir_response*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dasd_ccw_req*, align 8
  %13 = alloca %struct.ccw1*, align 8
  %14 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @pathmask_to_pos(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %18 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %19 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %17, i32 1, i32 32, %struct.dasd_device* %18, i32* null)
  store %struct.dasd_ccw_req* %19, %struct.dasd_ccw_req** %12, align 8
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %21 = call i64 @IS_ERR(%struct.dasd_ccw_req* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @DBF_WARNING, align 4
  %25 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %26 = call i32 @DBF_DEV_EVENT(i32 %24, %struct.dasd_device* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %28 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %27)
  store i32 %28, i32* %5, align 4
  br label %121

29:                                               ; preds = %4
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %31 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.dasd_psf_cuir_response*
  store %struct.dasd_psf_cuir_response* %33, %struct.dasd_psf_cuir_response** %10, align 8
  %34 = load i32, i32* @PSF_ORDER_CUIR_RESPONSE, align 4
  %35 = load %struct.dasd_psf_cuir_response*, %struct.dasd_psf_cuir_response** %10, align 8
  %36 = getelementptr inbounds %struct.dasd_psf_cuir_response, %struct.dasd_psf_cuir_response* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.dasd_psf_cuir_response*, %struct.dasd_psf_cuir_response** %10, align 8
  %39 = getelementptr inbounds %struct.dasd_psf_cuir_response, %struct.dasd_psf_cuir_response* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dasd_psf_cuir_response*, %struct.dasd_psf_cuir_response** %10, align 8
  %49 = getelementptr inbounds %struct.dasd_psf_cuir_response, %struct.dasd_psf_cuir_response* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.dasd_psf_cuir_response*, %struct.dasd_psf_cuir_response** %10, align 8
  %52 = getelementptr inbounds %struct.dasd_psf_cuir_response, %struct.dasd_psf_cuir_response* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %54 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dasd_psf_cuir_response*, %struct.dasd_psf_cuir_response** %10, align 8
  %62 = getelementptr inbounds %struct.dasd_psf_cuir_response, %struct.dasd_psf_cuir_response* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %64 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dasd_psf_cuir_response*, %struct.dasd_psf_cuir_response** %10, align 8
  %72 = getelementptr inbounds %struct.dasd_psf_cuir_response, %struct.dasd_psf_cuir_response* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %74 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %73, i32 0, i32 8
  %75 = load %struct.ccw1*, %struct.ccw1** %74, align 8
  store %struct.ccw1* %75, %struct.ccw1** %13, align 8
  %76 = load i32, i32* @DASD_ECKD_CCW_PSF, align 4
  %77 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %78 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.dasd_psf_cuir_response*, %struct.dasd_psf_cuir_response** %10, align 8
  %80 = ptrtoint %struct.dasd_psf_cuir_response* %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %83 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @CCW_FLAG_SLI, align 4
  %85 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %86 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ccw1*, %struct.ccw1** %13, align 8
  %88 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %87, i32 0, i32 0
  store i32 32, i32* %88, align 8
  %89 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %90 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %91 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %90, i32 0, i32 7
  store %struct.dasd_device* %89, %struct.dasd_device** %91, align 8
  %92 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %93 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %94 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %93, i32 0, i32 2
  store %struct.dasd_device* %92, %struct.dasd_device** %94, align 8
  %95 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %96 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %95, i32 0, i32 6
  store i32* null, i32** %96, align 8
  %97 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %98 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %97, i32 0, i32 0
  store i32 256, i32* %98, align 8
  %99 = load i32, i32* @HZ, align 4
  %100 = mul nsw i32 10, %99
  %101 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %102 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = call i32 (...) @get_tod_clock()
  %104 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %105 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @DASD_CQR_FILLED, align 4
  %107 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %108 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @DASD_CQR_VERIFY_PATH, align 4
  %110 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %111 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %110, i32 0, i32 3
  %112 = call i32 @set_bit(i32 %109, i32* %111)
  %113 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %114 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %113)
  store i32 %114, i32* %14, align 4
  %115 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %116 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %12, align 8
  %117 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %116, i32 0, i32 2
  %118 = load %struct.dasd_device*, %struct.dasd_device** %117, align 8
  %119 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %115, %struct.dasd_device* %118)
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %29, %23
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @pathmask_to_pos(i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
