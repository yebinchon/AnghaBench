; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_led_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_led_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeepc_laptop*)* @eeepc_led_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeepc_led_exit(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca %struct.eeepc_laptop*, align 8
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %2, align 8
  %3 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %4 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @IS_ERR_OR_NULL(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %11 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %10, i32 0, i32 1
  %12 = call i32 @led_classdev_unregister(%struct.TYPE_2__* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %15 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %20 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @destroy_workqueue(i64 %21)
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
