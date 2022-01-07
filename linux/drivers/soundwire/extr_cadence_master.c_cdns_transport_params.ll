; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_transport_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_transport_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32 }
%struct.sdw_transport_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_cdns = type { i32 }

@CDNS_DPN_CONFIG_BGC = common dso_local global i32 0, align 4
@CDNS_DPN_CONFIG_BPM = common dso_local global i32 0, align 4
@CDNS_DPN_OFFSET_CTRL_1 = common dso_local global i32 0, align 4
@CDNS_DPN_OFFSET_CTRL_2 = common dso_local global i32 0, align 4
@CDNS_DPN_HCTRL_HSTART = common dso_local global i32 0, align 4
@CDNS_DPN_HCTRL_HSTOP = common dso_local global i32 0, align 4
@CDNS_DPN_HCTRL_LCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_transport_params*, i32)* @cdns_transport_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_transport_params(%struct.sdw_bus* %0, %struct.sdw_transport_params* %1, i32 %2) #0 {
  %4 = alloca %struct.sdw_bus*, align 8
  %5 = alloca %struct.sdw_transport_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdw_cdns*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %4, align 8
  store %struct.sdw_transport_params* %1, %struct.sdw_transport_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %17 = call %struct.sdw_cdns* @bus_to_cdns(%struct.sdw_bus* %16)
  store %struct.sdw_cdns* %17, %struct.sdw_cdns** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %19 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @CDNS_DPN_B1_CONFIG(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @CDNS_DPN_B1_SAMPLE_CTRL(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @CDNS_DPN_B1_HCTRL(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @CDNS_DPN_B1_OFFSET_CTRL(i32 %30)
  store i32 %31, i32* %9, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @CDNS_DPN_B0_CONFIG(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @CDNS_DPN_B0_SAMPLE_CTRL(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @CDNS_DPN_B0_HCTRL(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @CDNS_DPN_B0_OFFSET_CTRL(i32 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %32, %23
  %42 = load %struct.sdw_cdns*, %struct.sdw_cdns** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @cdns_readl(%struct.sdw_cdns* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %46 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CDNS_DPN_CONFIG_BGC, align 4
  %49 = call i32 @SDW_REG_SHIFT(i32 %48)
  %50 = shl i32 %47, %49
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %54 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CDNS_DPN_CONFIG_BPM, align 4
  %57 = call i32 @SDW_REG_SHIFT(i32 %56)
  %58 = shl i32 %55, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load %struct.sdw_cdns*, %struct.sdw_cdns** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @cdns_writel(%struct.sdw_cdns* %61, i32 %62, i32 %63)
  %65 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %66 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CDNS_DPN_OFFSET_CTRL_1, align 4
  %69 = call i32 @SDW_REG_SHIFT(i32 %68)
  %70 = shl i32 %67, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %74 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CDNS_DPN_OFFSET_CTRL_2, align 4
  %77 = call i32 @SDW_REG_SHIFT(i32 %76)
  %78 = shl i32 %75, %77
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.sdw_cdns*, %struct.sdw_cdns** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @cdns_writel(%struct.sdw_cdns* %81, i32 %82, i32 %83)
  %85 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %86 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CDNS_DPN_HCTRL_HSTART, align 4
  %89 = call i32 @SDW_REG_SHIFT(i32 %88)
  %90 = shl i32 %87, %89
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %94 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CDNS_DPN_HCTRL_HSTOP, align 4
  %97 = call i32 @SDW_REG_SHIFT(i32 %96)
  %98 = shl i32 %95, %97
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %102 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CDNS_DPN_HCTRL_LCTRL, align 4
  %105 = call i32 @SDW_REG_SHIFT(i32 %104)
  %106 = shl i32 %103, %105
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load %struct.sdw_cdns*, %struct.sdw_cdns** %7, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @cdns_writel(%struct.sdw_cdns* %109, i32 %110, i32 %111)
  %113 = load %struct.sdw_cdns*, %struct.sdw_cdns** %7, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %5, align 8
  %116 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @cdns_writel(%struct.sdw_cdns* %113, i32 %114, i32 %118)
  ret i32 0
}

declare dso_local %struct.sdw_cdns* @bus_to_cdns(%struct.sdw_bus*) #1

declare dso_local i32 @CDNS_DPN_B1_CONFIG(i32) #1

declare dso_local i32 @CDNS_DPN_B1_SAMPLE_CTRL(i32) #1

declare dso_local i32 @CDNS_DPN_B1_HCTRL(i32) #1

declare dso_local i32 @CDNS_DPN_B1_OFFSET_CTRL(i32) #1

declare dso_local i32 @CDNS_DPN_B0_CONFIG(i32) #1

declare dso_local i32 @CDNS_DPN_B0_SAMPLE_CTRL(i32) #1

declare dso_local i32 @CDNS_DPN_B0_HCTRL(i32) #1

declare dso_local i32 @CDNS_DPN_B0_OFFSET_CTRL(i32) #1

declare dso_local i32 @cdns_readl(%struct.sdw_cdns*, i32) #1

declare dso_local i32 @SDW_REG_SHIFT(i32) #1

declare dso_local i32 @cdns_writel(%struct.sdw_cdns*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
