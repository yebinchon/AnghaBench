; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_init_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_acpiphp_glue.c_acpiphp_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@acpiphp_hotplug_notify = common dso_local global i32 0, align 4
@acpiphp_post_dock_fixup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpiphp_context* (%struct.acpi_device*)* @acpiphp_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpiphp_context* @acpiphp_init_context(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpiphp_context*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpiphp_context*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.acpiphp_context* @kzalloc(i32 12, i32 %5)
  store %struct.acpiphp_context* %6, %struct.acpiphp_context** %4, align 8
  %7 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %8 = icmp ne %struct.acpiphp_context* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.acpiphp_context* null, %struct.acpiphp_context** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %12 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @acpiphp_hotplug_notify, align 4
  %14 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %15 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @acpiphp_post_dock_fixup, align 4
  %18 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %19 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  %23 = getelementptr inbounds %struct.acpiphp_context, %struct.acpiphp_context* %22, i32 0, i32 1
  %24 = call i32 @acpi_set_hp_context(%struct.acpi_device* %21, %struct.TYPE_2__* %23)
  %25 = load %struct.acpiphp_context*, %struct.acpiphp_context** %4, align 8
  store %struct.acpiphp_context* %25, %struct.acpiphp_context** %2, align 8
  br label %26

26:                                               ; preds = %10, %9
  %27 = load %struct.acpiphp_context*, %struct.acpiphp_context** %2, align 8
  ret %struct.acpiphp_context* %27
}

declare dso_local %struct.acpiphp_context* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_set_hp_context(%struct.acpi_device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
