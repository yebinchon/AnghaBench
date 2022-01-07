; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_find_slim_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_find_slim_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_device = type { i32 }
%struct.slim_controller = type { i32 }
%struct.slim_eaddr = type { i32 }
%struct.device = type { i32 }

@slim_match_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slim_device* (%struct.slim_controller*, %struct.slim_eaddr*)* @find_slim_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slim_device* @find_slim_device(%struct.slim_controller* %0, %struct.slim_eaddr* %1) #0 {
  %3 = alloca %struct.slim_device*, align 8
  %4 = alloca %struct.slim_controller*, align 8
  %5 = alloca %struct.slim_eaddr*, align 8
  %6 = alloca %struct.slim_device*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.slim_controller* %0, %struct.slim_controller** %4, align 8
  store %struct.slim_eaddr* %1, %struct.slim_eaddr** %5, align 8
  %8 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %9 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.slim_eaddr*, %struct.slim_eaddr** %5, align 8
  %12 = load i32, i32* @slim_match_dev, align 4
  %13 = call %struct.device* @device_find_child(i32 %10, %struct.slim_eaddr* %11, i32 %12)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = icmp ne %struct.device* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.slim_device* @to_slim_device(%struct.device* %17)
  store %struct.slim_device* %18, %struct.slim_device** %6, align 8
  %19 = load %struct.slim_device*, %struct.slim_device** %6, align 8
  store %struct.slim_device* %19, %struct.slim_device** %3, align 8
  br label %21

20:                                               ; preds = %2
  store %struct.slim_device* null, %struct.slim_device** %3, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = load %struct.slim_device*, %struct.slim_device** %3, align 8
  ret %struct.slim_device* %22
}

declare dso_local %struct.device* @device_find_child(i32, %struct.slim_eaddr*, i32) #1

declare dso_local %struct.slim_device* @to_slim_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
