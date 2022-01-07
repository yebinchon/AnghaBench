; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.cpcap_rtc = type { i32 }
%struct.cpcap_time = type { i32, i32, i32 }

@CPCAP_REG_TOD2 = common dso_local global i32 0, align 4
@CPCAP_REG_DAY = common dso_local global i32 0, align 4
@CPCAP_REG_TOD1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to read time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @cpcap_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.cpcap_rtc*, align 8
  %7 = alloca %struct.cpcap_time, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.cpcap_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.cpcap_rtc* %11, %struct.cpcap_rtc** %6, align 8
  %12 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CPCAP_REG_TOD2, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %8)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %18 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CPCAP_REG_DAY, align 4
  %21 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 0
  %22 = call i32 @regmap_read(i32 %19, i32 %20, i32* %21)
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %26 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CPCAP_REG_TOD1, align 4
  %29 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 1
  %30 = call i32 @regmap_read(i32 %27, i32 %28, i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %34 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CPCAP_REG_TOD2, align 4
  %37 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 2
  %38 = call i32 @regmap_read(i32 %35, i32 %36, i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %47 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CPCAP_REG_DAY, align 4
  %50 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %7, i32 0, i32 0
  %51 = call i32 @regmap_read(i32 %48, i32 %49, i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %45, %2
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = call i32 @cpcap2rtc_time(%struct.rtc_time* %63, %struct.cpcap_time* %7)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.cpcap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cpcap2rtc_time(%struct.rtc_time*, %struct.cpcap_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
