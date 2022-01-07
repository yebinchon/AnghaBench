; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_bus_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_bus_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { %struct.sdw_master_prop }
%struct.sdw_master_prop = type { i32 }
%struct.sdw_bus_params = type { i32, i64 }
%struct.sdw_cdns = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"NULL curr_dr_freq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SDW_DOUBLE_RATE_FACTOR = common dso_local global i32 0, align 4
@CDNS_MCP_CLK_CTRL1 = common dso_local global i32 0, align 4
@CDNS_MCP_CLK_CTRL0 = common dso_local global i32 0, align 4
@CDNS_MCP_CLK_MCLKD_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns_bus_conf(%struct.sdw_bus* %0, %struct.sdw_bus_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdw_bus*, align 8
  %5 = alloca %struct.sdw_bus_params*, align 8
  %6 = alloca %struct.sdw_master_prop*, align 8
  %7 = alloca %struct.sdw_cdns*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %4, align 8
  store %struct.sdw_bus_params* %1, %struct.sdw_bus_params** %5, align 8
  %10 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %11 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %10, i32 0, i32 0
  store %struct.sdw_master_prop* %11, %struct.sdw_master_prop** %6, align 8
  %12 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %13 = call %struct.sdw_cdns* @bus_to_cdns(%struct.sdw_bus* %12)
  store %struct.sdw_cdns* %13, %struct.sdw_cdns** %7, align 8
  %14 = load %struct.sdw_bus_params*, %struct.sdw_bus_params** %5, align 8
  %15 = getelementptr inbounds %struct.sdw_bus_params, %struct.sdw_bus_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.sdw_cdns*, %struct.sdw_cdns** %7, align 8
  %20 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %6, align 8
  %27 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SDW_DOUBLE_RATE_FACTOR, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load %struct.sdw_bus_params*, %struct.sdw_bus_params** %5, align 8
  %32 = getelementptr inbounds %struct.sdw_bus_params, %struct.sdw_bus_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = load %struct.sdw_bus_params*, %struct.sdw_bus_params** %5, align 8
  %38 = getelementptr inbounds %struct.sdw_bus_params, %struct.sdw_bus_params* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @CDNS_MCP_CLK_CTRL1, align 4
  store i32 %42, i32* %8, align 4
  br label %45

43:                                               ; preds = %25
  %44 = load i32, i32* @CDNS_MCP_CLK_CTRL0, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.sdw_cdns*, %struct.sdw_cdns** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CDNS_MCP_CLK_MCLKD_MASK, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @cdns_updatel(%struct.sdw_cdns* %46, i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.sdw_cdns* @bus_to_cdns(%struct.sdw_bus*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cdns_updatel(%struct.sdw_cdns*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
