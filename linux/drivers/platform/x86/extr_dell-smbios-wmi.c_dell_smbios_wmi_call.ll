; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-wmi.c_dell_smbios_wmi_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-wmi.c_dell_smbios_wmi_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calling_interface_buffer = type { i32 }
%struct.wmi_smbios_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.calling_interface_buffer, i32 }

@call_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.calling_interface_buffer*)* @dell_smbios_wmi_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_smbios_wmi_call(%struct.calling_interface_buffer* %0) #0 {
  %2 = alloca %struct.calling_interface_buffer*, align 8
  %3 = alloca %struct.wmi_smbios_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.calling_interface_buffer* %0, %struct.calling_interface_buffer** %2, align 8
  %7 = call i32 @mutex_lock(i32* @call_mutex)
  %8 = call %struct.wmi_smbios_priv* (...) @get_first_smbios_priv()
  store %struct.wmi_smbios_priv* %8, %struct.wmi_smbios_priv** %3, align 8
  %9 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %10 = icmp ne %struct.wmi_smbios_priv* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %46

14:                                               ; preds = %1
  store i64 4, i64* %5, align 8
  %15 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %4, align 8
  %22 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %23 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @memset(i32* %25, i32 0, i64 %26)
  %28 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %29 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %2, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @memcpy(%struct.calling_interface_buffer* %31, %struct.calling_interface_buffer* %32, i64 %33)
  %35 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %36 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @run_smbios_call(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %2, align 8
  %40 = load %struct.wmi_smbios_priv*, %struct.wmi_smbios_priv** %3, align 8
  %41 = getelementptr inbounds %struct.wmi_smbios_priv, %struct.wmi_smbios_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @memcpy(%struct.calling_interface_buffer* %39, %struct.calling_interface_buffer* %43, i64 %44)
  br label %46

46:                                               ; preds = %14, %11
  %47 = call i32 @mutex_unlock(i32* @call_mutex)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wmi_smbios_priv* @get_first_smbios_priv(...) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @memcpy(%struct.calling_interface_buffer*, %struct.calling_interface_buffer*, i64) #1

declare dso_local i32 @run_smbios_call(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
