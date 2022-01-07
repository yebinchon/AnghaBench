; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_device_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_device_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siox_device_connected(%struct.siox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siox_device*, align 8
  store %struct.siox_device* %0, %struct.siox_device** %3, align 8
  %4 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %5 = call i32 @siox_device_synced(%struct.siox_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %10 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %11 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @siox_device_wdg_error(%struct.siox_device* %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %8, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @siox_device_synced(%struct.siox_device*) #1

declare dso_local i32 @siox_device_wdg_error(%struct.siox_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
