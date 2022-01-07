; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_get_const_charge_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_get_const_charge_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@STAT_A = common dso_local global i32 0, align 4
@STAT_A_FLOAT_VOLTAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*)* @get_const_charge_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_const_charge_voltage(%struct.smb347_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb347_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %3, align 8
  %7 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %8 = call i32 @smb347_is_ps_online(%struct.smb347_charger* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODATA, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.smb347_charger*, %struct.smb347_charger** %3, align 8
  %15 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STAT_A, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %6)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %13
  %24 = load i32, i32* @STAT_A_FLOAT_VOLTAGE_MASK, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ugt i32 %27, 61
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 61, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %6, align 4
  %32 = mul i32 %31, 20000
  %33 = add i32 3500000, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %21, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @smb347_is_ps_online(%struct.smb347_charger*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
