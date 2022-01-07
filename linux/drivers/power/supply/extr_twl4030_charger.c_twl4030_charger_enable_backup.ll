; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_charger_enable_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_charger_enable_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@TWL4030_BBCHEN = common dso_local global i32 0, align 4
@TWL4030_BB_CFG = common dso_local global i32 0, align 4
@TWL4030_BBSEL_3V2 = common dso_local global i32 0, align 4
@TWL4030_BBSEL_3V1 = common dso_local global i32 0, align 4
@TWL4030_BBSEL_3V0 = common dso_local global i32 0, align 4
@TWL4030_BBSEL_2V5 = common dso_local global i32 0, align 4
@TWL4030_BBISEL_1000uA = common dso_local global i32 0, align 4
@TWL4030_BBISEL_500uA = common dso_local global i32 0, align 4
@TWL4030_BBISEL_150uA = common dso_local global i32 0, align 4
@TWL4030_BBISEL_25uA = common dso_local global i32 0, align 4
@TWL4030_BBSEL_MASK = common dso_local global i32 0, align 4
@TWL4030_BBISEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @twl4030_charger_enable_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_charger_enable_backup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2500000
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 25
  br i1 %12, label %13, label %19

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %15 = load i32, i32* @TWL4030_BBCHEN, align 4
  %16 = load i32, i32* @TWL4030_BB_CFG, align 4
  %17 = call i32 @twl4030_clear_set(i32 %14, i32 %15, i32 0, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %83

19:                                               ; preds = %10
  %20 = load i32, i32* @TWL4030_BBCHEN, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 3200000
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @TWL4030_BBSEL_3V2, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %47

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 3100000
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @TWL4030_BBSEL_3V1, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %46

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 3000000
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @TWL4030_BBSEL_3V0, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @TWL4030_BBSEL_2V5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 1000
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @TWL4030_BBISEL_1000uA, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %74

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 500
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @TWL4030_BBISEL_500uA, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %73

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = icmp sge i32 %62, 150
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @TWL4030_BBISEL_150uA, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @TWL4030_BBISEL_25uA, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %76 = load i32, i32* @TWL4030_BBSEL_MASK, align 4
  %77 = load i32, i32* @TWL4030_BBISEL_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @TWL4030_BB_CFG, align 4
  %81 = call i32 @twl4030_clear_set(i32 %75, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @twl4030_clear_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
