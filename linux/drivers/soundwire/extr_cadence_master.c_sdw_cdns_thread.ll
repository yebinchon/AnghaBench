; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Slave status change\0A\00", align 1
@CDNS_MCP_SLAVE_INTSTAT0 = common dso_local global i32 0, align 4
@CDNS_MCP_SLAVE_INTSTAT1 = common dso_local global i32 0, align 4
@CDNS_MCP_INTSTAT = common dso_local global i32 0, align 4
@CDNS_MCP_INT_SLAVE_MASK = common dso_local global i32 0, align 4
@CDNS_MCP_INTMASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_cdns_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdw_cdns*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sdw_cdns*
  store %struct.sdw_cdns* %9, %struct.sdw_cdns** %5, align 8
  %10 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %11 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_dbg_ratelimited(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %15 = load i32, i32* @CDNS_MCP_SLAVE_INTSTAT0, align 4
  %16 = call i32 @cdns_readl(%struct.sdw_cdns* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %18 = load i32, i32* @CDNS_MCP_SLAVE_INTSTAT1, align 4
  %19 = call i32 @cdns_readl(%struct.sdw_cdns* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cdns_update_slave_status(%struct.sdw_cdns* %20, i32 %21, i32 %22)
  %24 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %25 = load i32, i32* @CDNS_MCP_SLAVE_INTSTAT0, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @cdns_writel(%struct.sdw_cdns* %24, i32 %25, i32 %26)
  %28 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %29 = load i32, i32* @CDNS_MCP_SLAVE_INTSTAT1, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @cdns_writel(%struct.sdw_cdns* %28, i32 %29, i32 %30)
  %32 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %33 = load i32, i32* @CDNS_MCP_INTSTAT, align 4
  %34 = load i32, i32* @CDNS_MCP_INT_SLAVE_MASK, align 4
  %35 = call i32 @cdns_writel(%struct.sdw_cdns* %32, i32 %33, i32 %34)
  %36 = load %struct.sdw_cdns*, %struct.sdw_cdns** %5, align 8
  %37 = load i32, i32* @CDNS_MCP_INTMASK, align 4
  %38 = load i32, i32* @CDNS_MCP_INT_SLAVE_MASK, align 4
  %39 = load i32, i32* @CDNS_MCP_INT_SLAVE_MASK, align 4
  %40 = call i32 @cdns_updatel(%struct.sdw_cdns* %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*) #1

declare dso_local i32 @cdns_readl(%struct.sdw_cdns*, i32) #1

declare dso_local i32 @cdns_update_slave_status(%struct.sdw_cdns*, i32, i32) #1

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i32) #1

declare dso_local i32 @cdns_updatel(%struct.sdw_cdns*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
