; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spmi_driver = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @spmi_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_drv_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.spmi_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.spmi_driver* @to_spmi_driver(i32 %6)
  store %struct.spmi_driver* %7, %struct.spmi_driver** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call i32 @pm_runtime_get_sync(%struct.device* %8)
  %10 = load %struct.spmi_driver*, %struct.spmi_driver** %3, align 8
  %11 = getelementptr inbounds %struct.spmi_driver, %struct.spmi_driver* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @to_spmi_device(%struct.device* %13)
  %15 = call i32 %12(i32 %14)
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 @pm_runtime_put_noidle(%struct.device* %16)
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = call i32 @pm_runtime_disable(%struct.device* %18)
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = call i32 @pm_runtime_set_suspended(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 @pm_runtime_put_noidle(%struct.device* %22)
  ret i32 0
}

declare dso_local %struct.spmi_driver* @to_spmi_driver(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @to_spmi_device(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
