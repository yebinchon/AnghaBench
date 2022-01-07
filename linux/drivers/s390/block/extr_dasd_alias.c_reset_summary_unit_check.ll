; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_reset_summary_unit_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_reset_summary_unit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_lcu = type { %struct.dasd_ccw_req* }
%struct.dasd_ccw_req = type { i32, i32, i32, i32, i32*, %struct.dasd_device*, %struct.dasd_device*, i32, i64, %struct.ccw1*, i32 }
%struct.ccw1 = type { i32, i64, i32, i32 }
%struct.dasd_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ECKD\00", align 1
@DASD_ECKD_CCW_RSCK = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alias_lcu*, %struct.dasd_device*, i8)* @reset_summary_unit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_summary_unit_check(%struct.alias_lcu* %0, %struct.dasd_device* %1, i8 signext %2) #0 {
  %4 = alloca %struct.alias_lcu*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.dasd_ccw_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccw1*, align 8
  store %struct.alias_lcu* %0, %struct.alias_lcu** %4, align 8
  store %struct.dasd_device* %1, %struct.dasd_device** %5, align 8
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %8, align 4
  %10 = load %struct.alias_lcu*, %struct.alias_lcu** %4, align 8
  %11 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %10, i32 0, i32 0
  %12 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %11, align 8
  store %struct.dasd_ccw_req* %12, %struct.dasd_ccw_req** %7, align 8
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 10
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @memcpy(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %18 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %17, i32 0, i32 10
  %19 = bitcast i32* %18 to i8*
  %20 = call i32 @ASCEBC(i8* %19, i32 4)
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 9
  %23 = load %struct.ccw1*, %struct.ccw1** %22, align 8
  store %struct.ccw1* %23, %struct.ccw1** %9, align 8
  %24 = load i32, i32* @DASD_ECKD_CCW_RSCK, align 4
  %25 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %26 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @CCW_FLAG_SLI, align 4
  %28 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %29 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %31 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %30, i32 0, i32 0
  store i32 16, i32* %31, align 8
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %36 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i8, i8* %6, align 1
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %39 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %37, i8* %42, align 1
  %43 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %44 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %45 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %44, i32 0, i32 7
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %48 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %47, i32 0, i32 0
  store i32 255, i32* %48, align 8
  %49 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %50 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %51 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %50, i32 0, i32 6
  store %struct.dasd_device* %49, %struct.dasd_device** %51, align 8
  %52 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %53 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %54 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %53, i32 0, i32 5
  store %struct.dasd_device* %52, %struct.dasd_device** %54, align 8
  %55 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %56 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @HZ, align 4
  %58 = mul nsw i32 5, %57
  %59 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %60 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = call i32 (...) @get_tod_clock()
  %62 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %63 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @DASD_CQR_FILLED, align 4
  %65 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %66 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %7, align 8
  %68 = call i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
