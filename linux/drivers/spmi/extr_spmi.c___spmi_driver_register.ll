; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c___spmi_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c___spmi_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.module*, i32* }
%struct.module = type { i32 }

@spmi_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__spmi_driver_register(%struct.spmi_driver* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.spmi_driver*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.spmi_driver* %0, %struct.spmi_driver** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %5 = load %struct.spmi_driver*, %struct.spmi_driver** %3, align 8
  %6 = getelementptr inbounds %struct.spmi_driver, %struct.spmi_driver* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i32* @spmi_bus_type, i32** %7, align 8
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = load %struct.spmi_driver*, %struct.spmi_driver** %3, align 8
  %10 = getelementptr inbounds %struct.spmi_driver, %struct.spmi_driver* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.module* %8, %struct.module** %11, align 8
  %12 = load %struct.spmi_driver*, %struct.spmi_driver** %3, align 8
  %13 = getelementptr inbounds %struct.spmi_driver, %struct.spmi_driver* %12, i32 0, i32 0
  %14 = call i32 @driver_register(%struct.TYPE_2__* %13)
  ret i32 %14
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
