; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_get_chip_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_get_chip_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pwm_get_chip_data(%struct.pwm_device* %0) #0 {
  %2 = alloca %struct.pwm_device*, align 8
  store %struct.pwm_device* %0, %struct.pwm_device** %2, align 8
  %3 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %4 = icmp ne %struct.pwm_device* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.pwm_device*, %struct.pwm_device** %2, align 8
  %7 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i8* [ %8, %5 ], [ null, %9 ]
  ret i8* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
