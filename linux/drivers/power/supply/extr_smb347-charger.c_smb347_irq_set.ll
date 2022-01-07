; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_irq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_irq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32 }

@CFG_FAULT_IRQ = common dso_local global i32 0, align 4
@CFG_FAULT_IRQ_DCIN_UV = common dso_local global i32 0, align 4
@CFG_STATUS_IRQ = common dso_local global i32 0, align 4
@CFG_STATUS_IRQ_TERMINATION_OR_TAPER = common dso_local global i32 0, align 4
@CFG_STATUS_IRQ_CHARGE_TIMEOUT = common dso_local global i32 0, align 4
@CFG_PIN = common dso_local global i32 0, align 4
@CFG_PIN_EN_CHARGER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*, i32)* @smb347_irq_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_irq_set(%struct.smb347_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb347_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %8 = call i32 @smb347_set_writable(%struct.smb347_charger* %7, i32 1)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %15 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CFG_FAULT_IRQ, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @CFG_FAULT_IRQ_DCIN_UV, align 4
  br label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 255, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %61

29:                                               ; preds = %23
  %30 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %31 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CFG_STATUS_IRQ, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @CFG_STATUS_IRQ_TERMINATION_OR_TAPER, align 4
  %38 = load i32, i32* @CFG_STATUS_IRQ_CHARGE_TIMEOUT, align 4
  %39 = or i32 %37, %38
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 0, %40 ]
  %43 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 255, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %61

47:                                               ; preds = %41
  %48 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %49 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CFG_PIN, align 4
  %52 = load i32, i32* @CFG_PIN_EN_CHARGER_ERROR, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @CFG_PIN_EN_CHARGER_ERROR, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %46, %28
  %62 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %63 = call i32 @smb347_set_writable(%struct.smb347_charger* %62, i32 0)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @smb347_set_writable(%struct.smb347_charger*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
