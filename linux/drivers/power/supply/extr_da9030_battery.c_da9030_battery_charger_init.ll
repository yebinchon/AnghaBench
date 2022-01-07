; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_charger_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_charger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9030_charger = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8, i8, i8 }

@DA9030_VBATMON = common dso_local global i32 0, align 4
@DA9030_ADC_MAN_CONTROL = common dso_local global i32 0, align 4
@DA9030_ADC_LDO_INT_ENABLE = common dso_local global i32 0, align 4
@DA9030_ADC_TBATREF_ENABLE = common dso_local global i32 0, align 4
@DA9030_ADC_AUTO_CONTROL = common dso_local global i32 0, align 4
@DA9030_ADC_TBAT_ENABLE = common dso_local global i32 0, align 4
@DA9030_ADC_VBAT_IN_TXON = common dso_local global i32 0, align 4
@DA9030_ADC_VCH_ENABLE = common dso_local global i32 0, align 4
@DA9030_ADC_ICH_ENABLE = common dso_local global i32 0, align 4
@DA9030_ADC_VBAT_ENABLE = common dso_local global i32 0, align 4
@DA9030_ADC_AUTO_SLEEP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9030_charger*)* @da9030_battery_charger_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_battery_charger_init(%struct.da9030_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9030_charger*, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.da9030_charger* %0, %struct.da9030_charger** %3, align 8
  %6 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %7 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1
  store i8 %9, i8* %10, align 1
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  store i8 %9, i8* %11, align 1
  %12 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %13 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 2
  store i8 %15, i8* %16, align 1
  %17 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %18 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i8, i8* %19, align 2
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 3
  store i8 %20, i8* %21, align 1
  %22 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %23 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i8, i8* %24, align 1
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 4
  store i8 %25, i8* %26, align 1
  %27 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %28 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DA9030_VBATMON, align 4
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %32 = call i32 @da903x_writes(i32 %29, i32 %30, i32 5, i8* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %67

37:                                               ; preds = %1
  %38 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %39 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DA9030_ADC_MAN_CONTROL, align 4
  %42 = load i32, i32* @DA9030_ADC_LDO_INT_ENABLE, align 4
  %43 = load i32, i32* @DA9030_ADC_TBATREF_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @da903x_write(i32 %40, i32 %41, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %67

50:                                               ; preds = %37
  %51 = load %struct.da9030_charger*, %struct.da9030_charger** %3, align 8
  %52 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DA9030_ADC_AUTO_CONTROL, align 4
  %55 = load i32, i32* @DA9030_ADC_TBAT_ENABLE, align 4
  %56 = load i32, i32* @DA9030_ADC_VBAT_IN_TXON, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @DA9030_ADC_VCH_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DA9030_ADC_ICH_ENABLE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @DA9030_ADC_VBAT_ENABLE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @DA9030_ADC_AUTO_SLEEP_ENABLE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @da903x_write(i32 %53, i32 %54, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %50, %48, %35
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @da903x_writes(i32, i32, i32, i8*) #1

declare dso_local i32 @da903x_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
