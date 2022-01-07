; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwmchip_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwmchip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32, i32, %struct.pwm_device* }
%struct.pwm_device = type { i32 }

@pwm_lock = common dso_local global i32 0, align 4
@PWMF_REQUESTED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwmchip_remove(%struct.pwm_chip* %0) #0 {
  %2 = alloca %struct.pwm_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %7 = call i32 @pwmchip_sysfs_unexport(%struct.pwm_chip* %6)
  %8 = call i32 @mutex_lock(i32* @pwm_lock)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %12 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %17 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %16, i32 0, i32 2
  %18 = load %struct.pwm_device*, %struct.pwm_device** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %18, i64 %20
  store %struct.pwm_device* %21, %struct.pwm_device** %5, align 8
  %22 = load i32, i32* @PWMF_REQUESTED, align 4
  %23 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %24 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %47

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %36 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %35, i32 0, i32 1
  %37 = call i32 @list_del_init(i32* %36)
  %38 = load i32, i32* @CONFIG_OF, align 4
  %39 = call i64 @IS_ENABLED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %43 = call i32 @of_pwmchip_remove(%struct.pwm_chip* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %46 = call i32 @free_pwms(%struct.pwm_chip* %45)
  br label %47

47:                                               ; preds = %44, %27
  %48 = call i32 @mutex_unlock(i32* @pwm_lock)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @pwmchip_sysfs_unexport(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_pwmchip_remove(%struct.pwm_chip*) #1

declare dso_local i32 @free_pwms(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
