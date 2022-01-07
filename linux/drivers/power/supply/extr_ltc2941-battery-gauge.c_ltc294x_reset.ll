; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc294x_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@LTC294X_REG_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not read registers from device\0A\00", align 1
@LTC294X_REG_CONTROL_ALCC_CONFIG_DISABLED = common dso_local global i32 0, align 4
@LTC2942_REG_CONTROL_MODE_SCAN = common dso_local global i32 0, align 4
@LTC2943_REG_CONTROL_MODE_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not write register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc294x_info*, i32)* @ltc294x_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc294x_reset(%struct.ltc294x_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ltc294x_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ltc294x_info* %0, %struct.ltc294x_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %10 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* @LTC294X_REG_CONTROL, align 4
  %13 = call i32 @ltc294x_read_regs(%struct.TYPE_3__* %11, i32 %12, i32* %7, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %18 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %59

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @LTC294X_REG_CONTROL_PRESCALER_SET(i32 %23)
  %25 = load i32, i32* @LTC294X_REG_CONTROL_ALCC_CONFIG_DISABLED, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %28 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %38 [
    i32 130, label %30
    i32 129, label %34
    i32 128, label %34
  ]

30:                                               ; preds = %22
  %31 = load i32, i32* @LTC2942_REG_CONTROL_MODE_SCAN, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %39

34:                                               ; preds = %22, %22
  %35 = load i32, i32* @LTC2943_REG_CONTROL_MODE_SCAN, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %34, %30
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %45 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* @LTC294X_REG_CONTROL, align 4
  %48 = call i32 @ltc294x_write_regs(%struct.TYPE_3__* %46, i32 %47, i32* %8, i32 1)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.ltc294x_info*, %struct.ltc294x_info** %4, align 8
  %53 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %59

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %39
  store i32 0, i32* %3, align 4
  br label %61

59:                                               ; preds = %51, %16
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ltc294x_read_regs(%struct.TYPE_3__*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @LTC294X_REG_CONTROL_PRESCALER_SET(i32) #1

declare dso_local i32 @ltc294x_write_regs(%struct.TYPE_3__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
