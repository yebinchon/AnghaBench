; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3630a_bl.c_lm3630a_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm3630a_chip = type { i32, i64, i32 }

@REG_BRT_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c failed to access register\0A\00", align 1
@REG_BRT_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lm3630a_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3630a_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3630a_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.lm3630a_chip* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.lm3630a_chip* %6, %struct.lm3630a_chip** %4, align 8
  %7 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %8 = load i32, i32* @REG_BRT_A, align 4
  %9 = call i32 @lm3630a_write(%struct.lm3630a_chip* %7, i32 %8, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %14 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %19 = load i32, i32* @REG_BRT_B, align 4
  %20 = call i32 @lm3630a_write(%struct.lm3630a_chip* %18, i32 %19, i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %25 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %30 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %35 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %38 = call i32 @free_irq(i64 %36, %struct.lm3630a_chip* %37)
  %39 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %40 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @flush_workqueue(i32 %41)
  %43 = load %struct.lm3630a_chip*, %struct.lm3630a_chip** %4, align 8
  %44 = getelementptr inbounds %struct.lm3630a_chip, %struct.lm3630a_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @destroy_workqueue(i32 %45)
  br label %47

47:                                               ; preds = %33, %28
  ret i32 0
}

declare dso_local %struct.lm3630a_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @lm3630a_write(%struct.lm3630a_chip*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @free_irq(i64, %struct.lm3630a_chip*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
