; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_set_voltage_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_set_voltage_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CFG_FLOAT_VOLTAGE = common dso_local global i32 0, align 4
@CFG_FLOAT_VOLTAGE_THRESHOLD_MASK = common dso_local global i32 0, align 4
@CFG_FLOAT_VOLTAGE_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@CFG_FLOAT_VOLTAGE_FLOAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*)* @smb347_set_voltage_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_set_voltage_limits(%struct.smb347_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb347_charger*, align 8
  %4 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %3, align 8
  %5 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %6 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %13 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @clamp_val(i32 %17, i32 2400000, i32 3000000)
  %19 = sub nsw i32 %18, 2400000
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 200000
  store i32 %21, i32* %4, align 4
  %22 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %23 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CFG_FLOAT_VOLTAGE, align 4
  %26 = load i32, i32* @CFG_FLOAT_VOLTAGE_THRESHOLD_MASK, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CFG_FLOAT_VOLTAGE_THRESHOLD_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %11
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %67

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %38 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %45 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @clamp_val(i32 %49, i32 3500000, i32 4500000)
  %51 = sub nsw i32 %50, 3500000
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %52, 20000
  store i32 %53, i32* %4, align 4
  %54 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %55 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CFG_FLOAT_VOLTAGE, align 4
  %58 = load i32, i32* @CFG_FLOAT_VOLTAGE_FLOAT_MASK, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %36
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63, %33
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
