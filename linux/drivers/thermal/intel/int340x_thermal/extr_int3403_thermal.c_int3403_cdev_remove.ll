; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_cdev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3403_thermal.c_int3403_cdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3403_priv = type { %struct.int3403_cdev* }
%struct.int3403_cdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.int3403_priv*)* @int3403_cdev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3403_cdev_remove(%struct.int3403_priv* %0) #0 {
  %2 = alloca %struct.int3403_priv*, align 8
  %3 = alloca %struct.int3403_cdev*, align 8
  store %struct.int3403_priv* %0, %struct.int3403_priv** %2, align 8
  %4 = load %struct.int3403_priv*, %struct.int3403_priv** %2, align 8
  %5 = getelementptr inbounds %struct.int3403_priv, %struct.int3403_priv* %4, i32 0, i32 0
  %6 = load %struct.int3403_cdev*, %struct.int3403_cdev** %5, align 8
  store %struct.int3403_cdev* %6, %struct.int3403_cdev** %3, align 8
  %7 = load %struct.int3403_cdev*, %struct.int3403_cdev** %3, align 8
  %8 = getelementptr inbounds %struct.int3403_cdev, %struct.int3403_cdev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @thermal_cooling_device_unregister(i32 %9)
  ret i32 0
}

declare dso_local i32 @thermal_cooling_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
