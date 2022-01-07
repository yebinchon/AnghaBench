; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rx8025_data = type { i32, i32 }

@RX8025_BIT_CTRL1_DALE = common dso_local global i32 0, align 4
@RX8025_REG_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rx8025_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8025_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx8025_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.rx8025_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.rx8025_data* %10, %struct.rx8025_data** %6, align 8
  %11 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %12 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @RX8025_BIT_CTRL1_DALE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @RX8025_BIT_CTRL1_DALE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %28 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %34 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %36 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RX8025_REG_CTRL1, align 4
  %39 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %40 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rx8025_write_reg(i32 %37, i32 %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %25
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.rx8025_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rx8025_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
