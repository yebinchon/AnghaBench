; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.ds1343_priv = type { i64, i32, i64, i64, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DS1343_STATUS_REG = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@DS1343_IRQF0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1343_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ds1343_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ds1343_priv* @dev_get_drvdata(%struct.device* %9)
  store %struct.ds1343_priv* %10, %struct.ds1343_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %20 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %19, i32 0, i32 6
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DS1343_STATUS_REG, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %8)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %107

30:                                               ; preds = %18
  %31 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RTC_AF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DS1343_IRQF0, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %52 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %30
  br label %60

56:                                               ; preds = %30
  %57 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %58 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i64 [ 0, %55 ], [ %59, %56 ]
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %66 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %74

70:                                               ; preds = %60
  %71 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %72 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  br label %74

74:                                               ; preds = %70, %69
  %75 = phi i64 [ 0, %69 ], [ %73, %70 ]
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i64 %75, i64* %78, align 8
  %79 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %80 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %88

84:                                               ; preds = %74
  %85 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %86 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  br label %88

88:                                               ; preds = %84, %83
  %89 = phi i64 [ 0, %83 ], [ %87, %84 ]
  %90 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i64 %89, i64* %92, align 8
  %93 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %94 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %100 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = phi i64 [ 0, %97 ], [ %101, %98 ]
  %104 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %105 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %102, %29
  %108 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %109 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %108, i32 0, i32 6
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.ds1343_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
