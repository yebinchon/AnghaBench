; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.xenbus_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.xenbus_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %7 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %8 = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %7)
  store %struct.xenbus_driver* %8, %struct.xenbus_driver** %6, align 8
  %9 = load %struct.xenbus_driver*, %struct.xenbus_driver** %6, align 8
  %10 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.xenbus_driver*, %struct.xenbus_driver** %6, align 8
  %16 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @to_xenbus_device(%struct.device* %18)
  %20 = call i32* @match_device(i32 %17, i32 %19)
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver*) #1

declare dso_local i32* @match_device(i32, i32) #1

declare dso_local i32 @to_xenbus_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
