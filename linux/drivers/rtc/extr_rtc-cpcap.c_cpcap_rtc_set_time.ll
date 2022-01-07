; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.cpcap_rtc = type { i64, i32, i64, i32, i64, i32 }
%struct.cpcap_time = type { i32, i32, i32 }

@CPCAP_VENDOR_ST = common dso_local global i64 0, align 8
@CPCAP_REG_TOD1 = common dso_local global i32 0, align 4
@TOD1_MASK = common dso_local global i32 0, align 4
@CPCAP_REG_TOD2 = common dso_local global i32 0, align 4
@TOD2_MASK = common dso_local global i32 0, align 4
@CPCAP_REG_DAY = common dso_local global i32 0, align 4
@DAY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @cpcap_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.cpcap_rtc*, align 8
  %6 = alloca %struct.cpcap_time, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.cpcap_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.cpcap_rtc* %9, %struct.cpcap_rtc** %5, align 8
  %10 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %11 = call i32 @rtc2cpcap_time(%struct.cpcap_time* %6, %struct.rtc_time* %10)
  %12 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %18 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @disable_irq(i32 %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %23 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %28 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @disable_irq(i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %33 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CPCAP_VENDOR_ST, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %39 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CPCAP_REG_TOD1, align 4
  %42 = load i32, i32* @TOD1_MASK, align 4
  %43 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %49 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CPCAP_REG_TOD2, align 4
  %52 = load i32, i32* @TOD2_MASK, align 4
  %53 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %59 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CPCAP_REG_DAY, align 4
  %62 = load i32, i32* @DAY_MASK, align 4
  %63 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %6, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %107

68:                                               ; preds = %31
  %69 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %70 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CPCAP_REG_TOD1, align 4
  %73 = load i32, i32* @TOD1_MASK, align 4
  %74 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %78 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CPCAP_REG_DAY, align 4
  %81 = load i32, i32* @DAY_MASK, align 4
  %82 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %6, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %88 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CPCAP_REG_TOD2, align 4
  %91 = load i32, i32* @TOD2_MASK, align 4
  %92 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %6, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %98 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @CPCAP_REG_TOD1, align 4
  %101 = load i32, i32* @TOD1_MASK, align 4
  %102 = getelementptr inbounds %struct.cpcap_time, %struct.cpcap_time* %6, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @regmap_update_bits(i32 %99, i32 %100, i32 %101, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %68, %37
  %108 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %109 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %114 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @enable_irq(i32 %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %119 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %5, align 8
  %124 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @enable_irq(i32 %125)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local %struct.cpcap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc2cpcap_time(%struct.cpcap_time*, %struct.rtc_time*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
