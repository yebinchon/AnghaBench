; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-smm.c_dell_smbios_smm_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-smm.c_dell_smbios_smm_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calling_interface_buffer = type { i32 }
%struct.smi_cmd = type { i32, i32, i32, i32, i32 }

@SMI_CMD_MAGIC = common dso_local global i32 0, align 4
@da_command_address = common dso_local global i32 0, align 4
@da_command_code = common dso_local global i32 0, align 4
@buffer = common dso_local global %struct.calling_interface_buffer* null, align 8
@smm_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.calling_interface_buffer*)* @dell_smbios_smm_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_smbios_smm_call(%struct.calling_interface_buffer* %0) #0 {
  %2 = alloca %struct.calling_interface_buffer*, align 8
  %3 = alloca %struct.smi_cmd, align 4
  %4 = alloca i64, align 8
  store %struct.calling_interface_buffer* %0, %struct.calling_interface_buffer** %2, align 8
  store i64 4, i64* %4, align 8
  %5 = load i32, i32* @SMI_CMD_MAGIC, align 4
  %6 = getelementptr inbounds %struct.smi_cmd, %struct.smi_cmd* %3, i32 0, i32 4
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @da_command_address, align 4
  %8 = getelementptr inbounds %struct.smi_cmd, %struct.smi_cmd* %3, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @da_command_code, align 4
  %10 = getelementptr inbounds %struct.smi_cmd, %struct.smi_cmd* %3, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** @buffer, align 8
  %12 = call i32 @virt_to_phys(%struct.calling_interface_buffer* %11)
  %13 = getelementptr inbounds %struct.smi_cmd, %struct.smi_cmd* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.smi_cmd, %struct.smi_cmd* %3, i32 0, i32 0
  store i32 1112754481, i32* %14, align 4
  %15 = call i32 @mutex_lock(i32* @smm_mutex)
  %16 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** @buffer, align 8
  %17 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @memcpy(%struct.calling_interface_buffer* %16, %struct.calling_interface_buffer* %17, i64 %18)
  %20 = call i32 @dcdbas_smi_request(%struct.smi_cmd* %3)
  %21 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** %2, align 8
  %22 = load %struct.calling_interface_buffer*, %struct.calling_interface_buffer** @buffer, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @memcpy(%struct.calling_interface_buffer* %21, %struct.calling_interface_buffer* %22, i64 %23)
  %25 = call i32 @mutex_unlock(i32* @smm_mutex)
  ret i32 0
}

declare dso_local i32 @virt_to_phys(%struct.calling_interface_buffer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.calling_interface_buffer*, %struct.calling_interface_buffer*, i64) #1

declare dso_local i32 @dcdbas_smi_request(%struct.smi_cmd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
