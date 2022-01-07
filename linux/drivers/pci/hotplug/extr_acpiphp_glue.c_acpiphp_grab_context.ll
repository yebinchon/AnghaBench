; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_grab_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_grab_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.acpi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpiphp_context* (%struct.acpi_device*)* @acpiphp_grab_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpiphp_context* @acpiphp_grab_context(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpiphp_context*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpiphp_context*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = call i32 (...) @acpi_lock_hp_context()
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call %struct.acpiphp_context* @acpiphp_get_context(%struct.acpi_device* %6)
  store %struct.acpiphp_context* %7, %struct.acpiphp_context** %4, align 8
  %8 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %9 = icmp ne %struct.acpiphp_context* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %12 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10, %1
  %19 = call i32 (...) @acpi_unlock_hp_context()
  store %struct.acpiphp_context* null, %struct.acpiphp_context** %2, align 8
  br label %30

20:                                               ; preds = %10
  %21 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %22 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 @get_bridge(%struct.TYPE_4__* %24)
  %26 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %27 = call i32 @acpiphp_put_context(%struct.acpiphp_context* %26)
  %28 = call i32 (...) @acpi_unlock_hp_context()
  %29 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  store %struct.acpiphp_context* %29, %struct.acpiphp_context** %2, align 8
  br label %30

30:                                               ; preds = %20, %18
  %31 = load %struct.acpiphp_context*, %struct.acpiphp_context** %2, align 8
  ret %struct.acpiphp_context* %31
}

declare dso_local i32 @acpi_lock_hp_context(...) #1

declare dso_local %struct.acpiphp_context* @acpiphp_get_context(%struct.acpi_device*) #1

declare dso_local i32 @acpi_unlock_hp_context(...) #1

declare dso_local i32 @get_bridge(%struct.TYPE_4__*) #1

declare dso_local i32 @acpiphp_put_context(%struct.acpiphp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
