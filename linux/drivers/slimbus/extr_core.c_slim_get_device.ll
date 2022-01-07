; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_device = type { i32 }
%struct.slim_controller = type { i32 }
%struct.slim_eaddr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slim_device* @slim_get_device(%struct.slim_controller* %0, %struct.slim_eaddr* %1) #0 {
  %3 = alloca %struct.slim_device*, align 8
  %4 = alloca %struct.slim_controller*, align 8
  %5 = alloca %struct.slim_eaddr*, align 8
  %6 = alloca %struct.slim_device*, align 8
  store %struct.slim_controller* %0, %struct.slim_controller** %4, align 8
  store %struct.slim_eaddr* %1, %struct.slim_eaddr** %5, align 8
  %7 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %8 = load %struct.slim_eaddr*, %struct.slim_eaddr** %5, align 8
  %9 = call %struct.slim_device* @find_slim_device(%struct.slim_controller* %7, %struct.slim_eaddr* %8)
  store %struct.slim_device* %9, %struct.slim_device** %6, align 8
  %10 = load %struct.slim_device*, %struct.slim_device** %6, align 8
  %11 = icmp ne %struct.slim_device* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %14 = load %struct.slim_eaddr*, %struct.slim_eaddr** %5, align 8
  %15 = call %struct.slim_device* @slim_alloc_device(%struct.slim_controller* %13, %struct.slim_eaddr* %14, i32* null)
  store %struct.slim_device* %15, %struct.slim_device** %6, align 8
  %16 = load %struct.slim_device*, %struct.slim_device** %6, align 8
  %17 = icmp ne %struct.slim_device* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.slim_device* @ERR_PTR(i32 %20)
  store %struct.slim_device* %21, %struct.slim_device** %3, align 8
  br label %25

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.slim_device*, %struct.slim_device** %6, align 8
  store %struct.slim_device* %24, %struct.slim_device** %3, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load %struct.slim_device*, %struct.slim_device** %3, align 8
  ret %struct.slim_device* %26
}

declare dso_local %struct.slim_device* @find_slim_device(%struct.slim_controller*, %struct.slim_eaddr*) #1

declare dso_local %struct.slim_device* @slim_alloc_device(%struct.slim_controller*, %struct.slim_eaddr*, i32*) #1

declare dso_local %struct.slim_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
