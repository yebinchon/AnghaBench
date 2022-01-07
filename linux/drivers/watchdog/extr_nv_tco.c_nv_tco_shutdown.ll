; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nv_tco.c_nv_tco_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nv_tco.c_nv_tco_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@tco_pci = common dso_local global i32 0, align 4
@MCP51_SMBUS_SETUP_B = common dso_local global i32 0, align 4
@MCP51_SMBUS_SETUP_B_TCO_REBOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @nv_tco_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_tco_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = call i32 (...) @tco_timer_stop()
  %5 = load i32, i32* @tco_pci, align 4
  %6 = load i32, i32* @MCP51_SMBUS_SETUP_B, align 4
  %7 = call i32 @pci_read_config_dword(i32 %5, i32 %6, i32* %3)
  %8 = load i32, i32* @MCP51_SMBUS_SETUP_B_TCO_REBOOT, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @tco_pci, align 4
  %13 = load i32, i32* @MCP51_SMBUS_SETUP_B, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_write_config_dword(i32 %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @tco_timer_stop(...) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
