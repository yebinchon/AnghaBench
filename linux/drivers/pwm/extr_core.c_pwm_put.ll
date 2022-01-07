; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_4__*, %struct.pwm_device*)* }

@pwm_lock = common dso_local global i32 0, align 4
@PWMF_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PWM device already freed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwm_put(%struct.pwm_device* %0) #0 {
  %2 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_device* %0, %struct.pwm_device** %2, align 8
  %3 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %4 = icmp ne %struct.pwm_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %52

6:                                                ; preds = %1
  %7 = call i32 @mutex_lock(i32* @pwm_lock)
  %8 = load i32, i32* @PWMF_REQUESTED, align 4
  %9 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %10 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %9, i32 0, i32 2
  %11 = call i32 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %50

15:                                               ; preds = %6
  %16 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %17 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_4__*, %struct.pwm_device*)*, i32 (%struct.TYPE_4__*, %struct.pwm_device*)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_4__*, %struct.pwm_device*)* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %26 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_4__*, %struct.pwm_device*)*, i32 (%struct.TYPE_4__*, %struct.pwm_device*)** %30, align 8
  %32 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %33 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %36 = call i32 %31(%struct.TYPE_4__* %34, %struct.pwm_device* %35)
  br label %37

37:                                               ; preds = %24, %15
  %38 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %39 = call i32 @pwm_set_chip_data(%struct.pwm_device* %38, i32* null)
  %40 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %41 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %43 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @module_put(i32 %48)
  br label %50

50:                                               ; preds = %37, %13
  %51 = call i32 @mutex_unlock(i32* @pwm_lock)
  br label %52

52:                                               ; preds = %50, %5
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pwm_set_chip_data(%struct.pwm_device*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
