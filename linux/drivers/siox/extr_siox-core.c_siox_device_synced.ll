; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_device_synced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_device_synced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siox_device_synced(%struct.siox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siox_device*, align 8
  store %struct.siox_device* %0, %struct.siox_device** %3, align 8
  %4 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %5 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %6 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @siox_device_type_error(%struct.siox_device* %4, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %13 = load %struct.siox_device*, %struct.siox_device** %3, align 8
  %14 = getelementptr inbounds %struct.siox_device, %struct.siox_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @siox_device_counter_error(%struct.siox_device* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @siox_device_type_error(%struct.siox_device*, i32) #1

declare dso_local i32 @siox_device_counter_error(%struct.siox_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
