; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_init_constant_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_init_constant_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14577_charger = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAXIM_CHARGER_CONSTANT_VOLTAGE_MIN = common dso_local global i32 0, align 4
@MAXIM_CHARGER_CONSTANT_VOLTAGE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAXIM_CHARGER_CONSTANT_VOLTAGE_STEP = common dso_local global i32 0, align 4
@CHGCTRL3_MBCCVWRC_SHIFT = common dso_local global i32 0, align 4
@MAX14577_CHG_REG_CHG_CTRL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14577_charger*, i32)* @max14577_init_constant_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_init_constant_voltage(%struct.max14577_charger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max14577_charger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max14577_charger* %0, %struct.max14577_charger** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAXIM_CHARGER_CONSTANT_VOLTAGE_MIN, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAXIM_CHARGER_CONSTANT_VOLTAGE_MAX, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 4200000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %51

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAXIM_CHARGER_CONSTANT_VOLTAGE_MAX, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 31, i32* %6, align 4
  br label %50

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp ule i32 %28, 4280000
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @MAXIM_CHARGER_CONSTANT_VOLTAGE_MIN, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @MAXIM_CHARGER_CONSTANT_VOLTAGE_STEP, align 4
  %36 = load i32, i32* %7, align 4
  %37 = udiv i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ule i32 %38, 4180000
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = add i32 1, %41
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %40
  br label %49

46:                                               ; preds = %27
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* @CHGCTRL3_MBCCVWRC_SHIFT, align 4
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.max14577_charger*, %struct.max14577_charger** %4, align 8
  %56 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MAX14577_CHG_REG_CHG_CTRL3, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @max14577_write_reg(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %51, %46, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @max14577_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
