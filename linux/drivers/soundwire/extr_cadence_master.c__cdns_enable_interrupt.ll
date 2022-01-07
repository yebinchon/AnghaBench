; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c__cdns_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c__cdns_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32 }

@CDNS_MCP_SLAVE_INTMASK0 = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_INTMASK0_MASK = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_INTMASK1 = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_INTMASK1_MASK = common dso_local global i32 0, align 4
@CDNS_MCP_INT_SLAVE_MASK = common dso_local global i32 0, align 4
@CDNS_MCP_INT_CTRL_CLASH = common dso_local global i32 0, align 4
@CDNS_MCP_INT_DATA_CLASH = common dso_local global i32 0, align 4
@CDNS_MCP_INT_PARITY = common dso_local global i32 0, align 4
@CDNS_MCP_INT_RX_WL = common dso_local global i32 0, align 4
@CDNS_MCP_INT_IRQ = common dso_local global i32 0, align 4
@interrupt_mask = common dso_local global i32 0, align 4
@CDNS_MCP_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*)* @_cdns_enable_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cdns_enable_interrupt(%struct.sdw_cdns* %0) #0 {
  %2 = alloca %struct.sdw_cdns*, align 8
  %3 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %2, align 8
  %4 = load %struct.sdw_cdns*, %struct.sdw_cdns** %2, align 8
  %5 = load i32, i32* @CDNS_MCP_SLAVE_INTMASK0, align 4
  %6 = load i32, i32* @CDNS_MCP_SLAVE_INTMASK0_MASK, align 4
  %7 = call i32 @cdns_writel(%struct.sdw_cdns* %4, i32 %5, i32 %6)
  %8 = load %struct.sdw_cdns*, %struct.sdw_cdns** %2, align 8
  %9 = load i32, i32* @CDNS_MCP_SLAVE_INTMASK1, align 4
  %10 = load i32, i32* @CDNS_MCP_SLAVE_INTMASK1_MASK, align 4
  %11 = call i32 @cdns_writel(%struct.sdw_cdns* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @CDNS_MCP_INT_SLAVE_MASK, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @CDNS_MCP_INT_CTRL_CLASH, align 4
  %14 = load i32, i32* @CDNS_MCP_INT_DATA_CLASH, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CDNS_MCP_INT_PARITY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @CDNS_MCP_INT_RX_WL, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @CDNS_MCP_INT_IRQ, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @interrupt_mask, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @interrupt_mask, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %1
  %31 = load %struct.sdw_cdns*, %struct.sdw_cdns** %2, align 8
  %32 = load i32, i32* @CDNS_MCP_INTMASK, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @cdns_writel(%struct.sdw_cdns* %31, i32 %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
