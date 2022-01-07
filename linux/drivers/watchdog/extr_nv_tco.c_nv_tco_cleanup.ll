; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nv_tco.c_nv_tco_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nv_tco.c_nv_tco_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nowayout = common dso_local global i32 0, align 4
@tco_pci = common dso_local global i32 0, align 4
@MCP51_SMBUS_SETUP_B = common dso_local global i32 0, align 4
@MCP51_SMBUS_SETUP_B_TCO_REBOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Couldn't unset REBOOT bit.  Machine may soon reset\0A\00", align 1
@nv_tco_miscdev = common dso_local global i32 0, align 4
@tcobase = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nv_tco_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_tco_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @nowayout, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @tco_timer_stop()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @tco_pci, align 4
  %8 = load i32, i32* @MCP51_SMBUS_SETUP_B, align 4
  %9 = call i32 @pci_read_config_dword(i32 %7, i32 %8, i32* %1)
  %10 = load i32, i32* @MCP51_SMBUS_SETUP_B_TCO_REBOOT, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @tco_pci, align 4
  %15 = load i32, i32* @MCP51_SMBUS_SETUP_B, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @pci_write_config_dword(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @tco_pci, align 4
  %19 = load i32, i32* @MCP51_SMBUS_SETUP_B, align 4
  %20 = call i32 @pci_read_config_dword(i32 %18, i32 %19, i32* %1)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @MCP51_SMBUS_SETUP_B_TCO_REBOOT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = call i32 @pr_crit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %6
  %28 = call i32 @misc_deregister(i32* @nv_tco_miscdev)
  %29 = load i32, i32* @tcobase, align 4
  %30 = call i32 @release_region(i32 %29, i32 16)
  ret void
}

declare dso_local i32 @tco_timer_stop(...) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
