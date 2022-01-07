; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map*, i32 }
%struct.wl1251_acx_mem_map = type { i32, i32, i32, i32 }

@RX_CFG_PROMISCUOUS = common dso_local global i32 0, align 4
@RX_CFG_TSF = common dso_local global i32 0, align 4
@RX_FILTER_OPTION_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%d tx blocks at 0x%x, %d rx blocks at 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_hw_init(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.wl1251_acx_mem_map*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %6 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %7 = call i32 @wl1251_hw_init_hwenc_config(%struct.wl1251* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %140

12:                                               ; preds = %1
  %13 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %14 = call i32 @wl1251_hw_init_templates_config(%struct.wl1251* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %140

19:                                               ; preds = %12
  %20 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %21 = call i32 @wl1251_hw_init_mem_config(%struct.wl1251* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %140

26:                                               ; preds = %19
  %27 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %28 = call i32 @wl1251_hw_init_data_path_config(%struct.wl1251* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %134

32:                                               ; preds = %26
  %33 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %34 = load i32, i32* @RX_CFG_PROMISCUOUS, align 4
  %35 = load i32, i32* @RX_CFG_TSF, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RX_FILTER_OPTION_DEF, align 4
  %38 = call i32 @wl1251_hw_init_rx_config(%struct.wl1251* %33, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %129

42:                                               ; preds = %32
  %43 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %44 = call i32 @wl1251_hw_init_tx_queue_config(%struct.wl1251* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %129

48:                                               ; preds = %42
  %49 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %50 = call i32 @wl1251_hw_init_phy_config(%struct.wl1251* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %129

54:                                               ; preds = %48
  %55 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %56 = call i32 @wl1251_acx_conn_monit_params(%struct.wl1251* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %129

60:                                               ; preds = %54
  %61 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %62 = call i32 @wl1251_hw_init_beacon_filter(%struct.wl1251* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %129

66:                                               ; preds = %60
  %67 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %68 = call i32 @wl1251_hw_init_pta(%struct.wl1251* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %129

72:                                               ; preds = %66
  %73 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %74 = call i32 @wl1251_hw_init_energy_detection(%struct.wl1251* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %129

78:                                               ; preds = %72
  %79 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %80 = call i32 @wl1251_hw_init_beacon_broadcast(%struct.wl1251* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %129

84:                                               ; preds = %78
  %85 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %86 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %87 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @wl1251_cmd_data_path_rx(%struct.wl1251* %85, i32 %88, i32 1)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %129

93:                                               ; preds = %84
  %94 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %95 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %96 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @wl1251_cmd_data_path_tx(%struct.wl1251* %94, i32 %97, i32 1)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %129

102:                                              ; preds = %93
  %103 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %104 = call i32 @wl1251_hw_init_power_auth(%struct.wl1251* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %129

108:                                              ; preds = %102
  %109 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %110 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %109, i32 0, i32 0
  %111 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %110, align 8
  store %struct.wl1251_acx_mem_map* %111, %struct.wl1251_acx_mem_map** %4, align 8
  %112 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %4, align 8
  %113 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %116 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %115, i32 0, i32 1
  %117 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %116, align 8
  %118 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %4, align 8
  %121 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %124 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %123, i32 0, i32 1
  %125 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %124, align 8
  %126 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @wl1251_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %119, i32 %122, i32 %127)
  store i32 0, i32* %2, align 4
  br label %140

129:                                              ; preds = %107, %101, %92, %83, %77, %71, %65, %59, %53, %47, %41
  %130 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %131 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %130, i32 0, i32 1
  %132 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %131, align 8
  %133 = call i32 @kfree(%struct.wl1251_acx_mem_map* %132)
  br label %134

134:                                              ; preds = %129, %31
  %135 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %136 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %135, i32 0, i32 0
  %137 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %136, align 8
  %138 = call i32 @kfree(%struct.wl1251_acx_mem_map* %137)
  %139 = load i32, i32* %5, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %134, %108, %24, %17, %10
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @wl1251_hw_init_hwenc_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_templates_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_mem_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_data_path_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_rx_config(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_hw_init_tx_queue_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_phy_config(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_conn_monit_params(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_beacon_filter(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_pta(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_energy_detection(%struct.wl1251*) #1

declare dso_local i32 @wl1251_hw_init_beacon_broadcast(%struct.wl1251*) #1

declare dso_local i32 @wl1251_cmd_data_path_rx(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_cmd_data_path_tx(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_hw_init_power_auth(%struct.wl1251*) #1

declare dso_local i32 @wl1251_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.wl1251_acx_mem_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
