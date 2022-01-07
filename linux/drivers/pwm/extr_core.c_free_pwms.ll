; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_free_pwms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_free_pwms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32, %struct.pwm_device*, i32 }
%struct.pwm_device = type { i32 }

@pwm_tree = common dso_local global i32 0, align 4
@allocated_pwms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*)* @free_pwms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pwms(%struct.pwm_chip* %0) #0 {
  %2 = alloca %struct.pwm_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %8 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %13 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %12, i32 0, i32 1
  %14 = load %struct.pwm_device*, %struct.pwm_device** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %14, i64 %16
  store %struct.pwm_device* %17, %struct.pwm_device** %4, align 8
  %18 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %19 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @radix_tree_delete(i32* @pwm_tree, i32 %20)
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  %26 = load i32, i32* @allocated_pwms, align 4
  %27 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %28 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %31 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bitmap_clear(i32 %26, i32 %29, i32 %32)
  %34 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %35 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %34, i32 0, i32 1
  %36 = load %struct.pwm_device*, %struct.pwm_device** %35, align 8
  %37 = call i32 @kfree(%struct.pwm_device* %36)
  %38 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %39 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %38, i32 0, i32 1
  store %struct.pwm_device* null, %struct.pwm_device** %39, align 8
  ret void
}

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.pwm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
