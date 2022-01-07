; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_init_eoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_init_eoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_charger = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN = common dso_local global i32 0, align 4
@MAX14577_CHARGER_EOC_CURRENT_LIMIT_MAX = common dso_local global i32 0, align 4
@MAX14577_CHARGER_EOC_CURRENT_LIMIT_STEP = common dso_local global i32 0, align 4
@CHGCTRL5_EOCS_SHIFT = common dso_local global i32 0, align 4
@MAX14577_CHG_REG_CHG_CTRL5 = common dso_local global i32 0, align 4
@CHGCTRL5_EOCS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_charger*, i32)* @max14577_init_eoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_init_eoc(%struct.max14577_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max14577_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max14577_charger* %0, %struct.max14577_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 15, i32* %6, align 4
  %8 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %9 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %42 [
    i32 128, label %13
    i32 129, label %41
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 5000
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %72

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp uge i32 %20, 7500
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %23, 10000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %40

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp ule i32 %27, 50000
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = udiv i32 %30, 5000
  store i32 %31, i32* %6, align 4
  br label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @min(i32 %33, i32 100000)
  %35 = sub i32 %34, 50000
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = udiv i32 %36, 10000
  %38 = add i32 10, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %29
  br label %40

40:                                               ; preds = %39, %25
  br label %59

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %2, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %72

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MAX14577_CHARGER_EOC_CURRENT_LIMIT_MAX, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MAX14577_CHARGER_EOC_CURRENT_LIMIT_STEP, align 4
  %58 = udiv i32 %56, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %49, %40
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @CHGCTRL5_EOCS_SHIFT, align 4
  %62 = shl i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %64 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MAX14577_CHG_REG_CHG_CTRL5, align 4
  %69 = load i32, i32* @CHGCTRL5_EOCS_MASK, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @max14577_update_reg(i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %59, %46, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max14577_update_reg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
