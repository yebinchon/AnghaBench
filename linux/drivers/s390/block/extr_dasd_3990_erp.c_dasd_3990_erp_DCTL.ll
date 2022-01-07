; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_DCTL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_DCTL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, i64, %struct.dasd_device*, %struct.dasd_device*, %struct.dasd_ccw_req*, {}*, i32, %struct.ccw1*, %struct.DCTL_data* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ccw1 = type { i32, i64, i32 }
%struct.DCTL_data = type { i32, i8 }

@.str = private unnamed_addr constant [29 x i8] c"Unable to allocate DCTL-CQR\0A\00", align 1
@DASD_CQR_FAILED = common dso_local global i32 0, align 4
@CCW_CMD_DCTL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8)* @dasd_3990_erp_DCTL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_3990_erp_DCTL(%struct.dasd_ccw_req* %0, i8 signext %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca %struct.DCTL_data*, align 8
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %10, i32 0, i32 6
  %12 = load %struct.dasd_device*, %struct.dasd_device** %11, align 8
  store %struct.dasd_device* %12, %struct.dasd_device** %6, align 8
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 4
  %15 = bitcast i64* %14 to i8*
  %16 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %17 = call %struct.dasd_ccw_req* @dasd_alloc_erp_request(i8* %15, i32 1, i32 8, %struct.dasd_device* %16)
  store %struct.dasd_ccw_req* %17, %struct.dasd_ccw_req** %9, align 8
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %19 = call i64 @IS_ERR(%struct.dasd_ccw_req* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @DASD_CQR_FAILED, align 4
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %29 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %30, %struct.dasd_ccw_req** %3, align 8
  br label %89

31:                                               ; preds = %2
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 11
  %34 = load %struct.DCTL_data*, %struct.DCTL_data** %33, align 8
  store %struct.DCTL_data* %34, %struct.DCTL_data** %7, align 8
  %35 = load %struct.DCTL_data*, %struct.DCTL_data** %7, align 8
  %36 = getelementptr inbounds %struct.DCTL_data, %struct.DCTL_data* %35, i32 0, i32 0
  store i32 2, i32* %36, align 4
  %37 = load i8, i8* %5, align 1
  %38 = load %struct.DCTL_data*, %struct.DCTL_data** %7, align 8
  %39 = getelementptr inbounds %struct.DCTL_data, %struct.DCTL_data* %38, i32 0, i32 1
  store i8 %37, i8* %39, align 4
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 10
  %42 = load %struct.ccw1*, %struct.ccw1** %41, align 8
  store %struct.ccw1* %42, %struct.ccw1** %8, align 8
  %43 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %44 = call i32 @memset(%struct.ccw1* %43, i32 0, i32 24)
  %45 = load i32, i32* @CCW_CMD_DCTL, align 4
  %46 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %47 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %49 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %48, i32 0, i32 0
  store i32 4, i32* %49, align 8
  %50 = load %struct.DCTL_data*, %struct.DCTL_data** %7, align 8
  %51 = ptrtoint %struct.DCTL_data* %50 to i64
  %52 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %53 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %55 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %58 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %60 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %59, i32 0, i32 8
  %61 = bitcast {}** %60 to %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8)**
  store %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8)* @dasd_3990_erp_DCTL, %struct.dasd_ccw_req* (%struct.dasd_ccw_req*, i8)** %61, align 8
  %62 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %63 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %64 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %63, i32 0, i32 7
  store %struct.dasd_ccw_req* %62, %struct.dasd_ccw_req** %64, align 8
  %65 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %66 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %67 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %66, i32 0, i32 6
  store %struct.dasd_device* %65, %struct.dasd_device** %67, align 8
  %68 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %70 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %69, i32 0, i32 5
  store %struct.dasd_device* %68, %struct.dasd_device** %70, align 8
  %71 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %72 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %75 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @HZ, align 4
  %77 = mul nsw i32 300, %76
  %78 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %79 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %81 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %80, i32 0, i32 1
  store i32 2, i32* %81, align 4
  %82 = call i32 (...) @get_tod_clock()
  %83 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %84 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @DASD_CQR_FILLED, align 4
  %86 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  %87 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %9, align 8
  store %struct.dasd_ccw_req* %88, %struct.dasd_ccw_req** %3, align 8
  br label %89

89:                                               ; preds = %31, %21
  %90 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  ret %struct.dasd_ccw_req* %90
}

declare dso_local %struct.dasd_ccw_req* @dasd_alloc_erp_request(i8*, i32, i32, %struct.dasd_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(%struct.ccw1*, i32, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
