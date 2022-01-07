; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-renesas-tpu.c_tpu_pwm_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpu_pwm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@TPU_TSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpu_pwm_device*, i32)* @tpu_pwm_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpu_pwm_start_stop(%struct.tpu_pwm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.tpu_pwm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tpu_pwm_device* %0, %struct.tpu_pwm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %8 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %14 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TPU_TSTR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread16(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %25 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 1, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %32 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %30, %23
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %41 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TPU_TSTR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @iowrite16(i32 %39, i64 %46)
  %48 = load %struct.tpu_pwm_device*, %struct.tpu_pwm_device** %3, align 8
  %49 = getelementptr inbounds %struct.tpu_pwm_device, %struct.tpu_pwm_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
