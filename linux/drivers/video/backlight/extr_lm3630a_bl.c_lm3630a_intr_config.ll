; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_intr_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_intr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3630a_chip = type { i32, i32, i32, i32 }

@REG_INT_EN = common dso_local global i32 0, align 4
@lm3630a_delayed_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"lm3630a-irqthd\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"create irq thread fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lm3630a_isr_func = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"lm3630a_irq\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"request threaded irq fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3630a_chip*)* @lm3630a_intr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_intr_config(%struct.lm3630a_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3630a_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.lm3630a_chip* %0, %struct.lm3630a_chip** %3, align 8
  %5 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %6 = load i32, i32* @REG_INT_EN, align 4
  %7 = call i32 @lm3630a_write(%struct.lm3630a_chip* %5, i32 %6, i32 135)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %14 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %13, i32 0, i32 3
  %15 = load i32, i32* @lm3630a_delayed_func, align 4
  %16 = call i32 @INIT_DELAYED_WORK(i32* %14, i32 %15)
  %17 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %19 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %21 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %12
  %25 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %26 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %12
  %32 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %33 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @lm3630a_isr_func, align 4
  %36 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %37 = load i32, i32* @IRQF_ONESHOT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %40 = call i64 @request_threaded_irq(i32 %34, i32* null, i32 %35, i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.lm3630a_chip* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %31
  %43 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %44 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %3, align 8
  %48 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @destroy_workqueue(i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %31
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %42, %24, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @lm3630a_write(%struct.lm3630a_chip*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.lm3630a_chip*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
