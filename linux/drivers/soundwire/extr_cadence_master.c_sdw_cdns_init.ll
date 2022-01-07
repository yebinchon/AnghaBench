; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_sdw_cdns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32, %struct.sdw_bus }
%struct.sdw_bus = type { %struct.sdw_master_prop }
%struct.sdw_master_prop = type { i32, i32, i32, i32 }

@CDNS_MCP_CONTROL = common dso_local global i32 0, align 4
@CDNS_MCP_CONTROL_CLK_STOP_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't exit from clock stop\0A\00", align 1
@CDNS_MCP_CLK_CTRL0 = common dso_local global i32 0, align 4
@CDNS_MCP_CLK_MCLKD_MASK = common dso_local global i32 0, align 4
@CDNS_MCP_CLK_CTRL1 = common dso_local global i32 0, align 4
@CDNS_MCP_FRAME_SHAPE_INIT = common dso_local global i32 0, align 4
@CDNS_MCP_SSP_CTRL0 = common dso_local global i32 0, align 4
@CDNS_DEFAULT_SSP_INTERVAL = common dso_local global i32 0, align 4
@CDNS_MCP_SSP_CTRL1 = common dso_local global i32 0, align 4
@CDNS_MCP_CONTROL_CMD_ACCEPT = common dso_local global i32 0, align 4
@CDNS_MCP_CONFIG = common dso_local global i32 0, align 4
@CDNS_MCP_CONFIG_MCMD_RETRY = common dso_local global i32 0, align 4
@CDNS_MCP_CONFIG_MPREQ_DELAY = common dso_local global i32 0, align 4
@CDNS_MCP_CONFIG_BUS_REL = common dso_local global i32 0, align 4
@CDNS_MCP_CONFIG_SNIFFER = common dso_local global i32 0, align 4
@CDNS_MCP_CONFIG_CMD = common dso_local global i32 0, align 4
@CDNS_MCP_CONFIG_OP = common dso_local global i32 0, align 4
@CDNS_MCP_CONFIG_OP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_cdns_init(%struct.sdw_cdns* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdw_cdns*, align 8
  %4 = alloca %struct.sdw_bus*, align 8
  %5 = alloca %struct.sdw_master_prop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %3, align 8
  %9 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %10 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %9, i32 0, i32 1
  store %struct.sdw_bus* %10, %struct.sdw_bus** %4, align 8
  %11 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %12 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %11, i32 0, i32 0
  store %struct.sdw_master_prop* %12, %struct.sdw_master_prop** %5, align 8
  %13 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %14 = load i32, i32* @CDNS_MCP_CONTROL, align 4
  %15 = load i32, i32* @CDNS_MCP_CONTROL_CLK_STOP_CLR, align 4
  %16 = call i32 @cdns_clear_bit(%struct.sdw_cdns* %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %21 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %102

25:                                               ; preds = %1
  %26 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %5, align 8
  %27 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %5, align 8
  %30 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %28, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %35 = load i32, i32* @CDNS_MCP_CLK_CTRL0, align 4
  %36 = load i32, i32* @CDNS_MCP_CLK_MCLKD_MASK, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @cdns_updatel(%struct.sdw_cdns* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %40 = load i32, i32* @CDNS_MCP_CLK_CTRL1, align 4
  %41 = load i32, i32* @CDNS_MCP_CLK_MCLKD_MASK, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @cdns_updatel(%struct.sdw_cdns* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %5, align 8
  %45 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %5, align 8
  %48 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cdns_set_initial_frame_shape(i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %52 = load i32, i32* @CDNS_MCP_FRAME_SHAPE_INIT, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @cdns_writel(%struct.sdw_cdns* %51, i32 %52, i32 %53)
  %55 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %56 = load i32, i32* @CDNS_MCP_SSP_CTRL0, align 4
  %57 = load i32, i32* @CDNS_DEFAULT_SSP_INTERVAL, align 4
  %58 = call i32 @cdns_writel(%struct.sdw_cdns* %55, i32 %56, i32 %57)
  %59 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %60 = load i32, i32* @CDNS_MCP_SSP_CTRL1, align 4
  %61 = load i32, i32* @CDNS_DEFAULT_SSP_INTERVAL, align 4
  %62 = call i32 @cdns_writel(%struct.sdw_cdns* %59, i32 %60, i32 %61)
  %63 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %64 = load i32, i32* @CDNS_MCP_CONTROL, align 4
  %65 = load i32, i32* @CDNS_MCP_CONTROL_CMD_ACCEPT, align 4
  %66 = load i32, i32* @CDNS_MCP_CONTROL_CMD_ACCEPT, align 4
  %67 = call i32 @cdns_updatel(%struct.sdw_cdns* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %69 = load i32, i32* @CDNS_MCP_CONFIG, align 4
  %70 = call i32 @cdns_readl(%struct.sdw_cdns* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @CDNS_MCP_CONFIG_MCMD_RETRY, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @CDNS_MCP_CONFIG_MPREQ_DELAY, align 4
  %75 = call i32 @SDW_REG_SHIFT(i32 %74)
  %76 = shl i32 15, %75
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @CDNS_MCP_CONFIG_BUS_REL, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @CDNS_MCP_CONFIG_SNIFFER, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @CDNS_MCP_CONFIG_CMD, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @CDNS_MCP_CONFIG_OP, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @CDNS_MCP_CONFIG_OP_NORMAL, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.sdw_cdns*, %struct.sdw_cdns** %3, align 8
  %99 = load i32, i32* @CDNS_MCP_CONFIG, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @cdns_writel(%struct.sdw_cdns* %98, i32 %99, i32 %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %25, %19
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @cdns_clear_bit(%struct.sdw_cdns*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cdns_updatel(%struct.sdw_cdns*, i32, i32, i32) #1

declare dso_local i32 @cdns_set_initial_frame_shape(i32, i32) #1

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i32) #1

declare dso_local i32 @cdns_readl(%struct.sdw_cdns*, i32) #1

declare dso_local i32 @SDW_REG_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
