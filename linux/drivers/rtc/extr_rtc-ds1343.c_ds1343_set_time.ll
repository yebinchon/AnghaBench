; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ds1343_priv = type { i32 }

@DS1343_SECONDS_REG = common dso_local global i32 0, align 4
@DS1343_MINUTES_REG = common dso_local global i32 0, align 4
@DS1343_HOURS_REG = common dso_local global i32 0, align 4
@DS1343_DAY_REG = common dso_local global i32 0, align 4
@DS1343_DATE_REG = common dso_local global i32 0, align 4
@DS1343_MONTH_REG = common dso_local global i32 0, align 4
@DS1343_YEAR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1343_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.ds1343_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.ds1343_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds1343_priv* %9, %struct.ds1343_priv** %6, align 8
  %10 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %11 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DS1343_SECONDS_REG, align 4
  %14 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bin2bcd(i32 %16)
  %18 = call i32 @regmap_write(i32 %12, i32 %13, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DS1343_MINUTES_REG, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bin2bcd(i32 %30)
  %32 = call i32 @regmap_write(i32 %26, i32 %27, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %115

37:                                               ; preds = %23
  %38 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DS1343_HOURS_REG, align 4
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bin2bcd(i32 %44)
  %46 = and i32 %45, 63
  %47 = call i32 @regmap_write(i32 %40, i32 %41, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %115

52:                                               ; preds = %37
  %53 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %54 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DS1343_DAY_REG, align 4
  %57 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @bin2bcd(i32 %60)
  %62 = call i32 @regmap_write(i32 %55, i32 %56, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %115

67:                                               ; preds = %52
  %68 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %69 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DS1343_DATE_REG, align 4
  %72 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bin2bcd(i32 %74)
  %76 = call i32 @regmap_write(i32 %70, i32 %71, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %115

81:                                               ; preds = %67
  %82 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %83 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DS1343_MONTH_REG, align 4
  %86 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @bin2bcd(i32 %89)
  %91 = call i32 @regmap_write(i32 %84, i32 %85, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %115

96:                                               ; preds = %81
  %97 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = srem i32 %99, 100
  store i32 %100, i32* %98, align 4
  %101 = load %struct.ds1343_priv*, %struct.ds1343_priv** %6, align 8
  %102 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DS1343_YEAR_REG, align 4
  %105 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bin2bcd(i32 %107)
  %109 = call i32 @regmap_write(i32 %103, i32 %104, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %96
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %112, %94, %79, %65, %50, %35, %21
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.ds1343_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
