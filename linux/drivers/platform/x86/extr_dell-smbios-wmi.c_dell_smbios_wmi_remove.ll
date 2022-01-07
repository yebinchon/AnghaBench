; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-wmi.c_dell_smbios_wmi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-wmi.c_dell_smbios_wmi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%struct.wmi_smbios_priv = type { i64, i32, i32 }

@call_mutex = common dso_local global i32 0, align 4
@list_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi_device*)* @dell_smbios_wmi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_smbios_wmi_remove(%struct.wmi_device* %0) #0 {
  %2 = alloca %struct.wmi_device*, align 8
  %3 = alloca %struct.wmi_smbios_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.wmi_device* %0, %struct.wmi_device** %2, align 8
  %5 = load %struct.wmi_device*, %struct.wmi_device** %2, align 8
  %6 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %5, i32 0, i32 0
  %7 = call %struct.wmi_smbios_priv* @dev_get_drvdata(i32* %6)
  store %struct.wmi_smbios_priv* %7, %struct.wmi_smbios_priv** %3, align 8
  %8 = call i32 @mutex_lock(i32* @call_mutex)
  %9 = call i32 @mutex_lock(i32* @list_mutex)
  %10 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  %13 = call i32 @mutex_unlock(i32* @list_mutex)
  %14 = load %struct.wmi_device*, %struct.wmi_device** %2, align 8
  %15 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %14, i32 0, i32 0
  %16 = call i32 @dell_smbios_unregister_device(i32* %15)
  %17 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @get_order(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %22 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @free_pages(i64 %23, i32 %24)
  %26 = call i32 @mutex_unlock(i32* @call_mutex)
  ret i32 0
}

declare dso_local %struct.wmi_smbios_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dell_smbios_unregister_device(i32*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
