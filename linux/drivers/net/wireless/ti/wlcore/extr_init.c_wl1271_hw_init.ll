; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_hw_init(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %5 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %6 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct.wl1271*)**
  %10 = load i32 (%struct.wl1271*)*, i32 (%struct.wl1271*)** %9, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %12 = call i32 %10(%struct.wl1271* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %135

17:                                               ; preds = %1
  %18 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %19 = call i32 @wl1271_init_templates_config(%struct.wl1271* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %135

24:                                               ; preds = %17
  %25 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %26 = call i32 @wl12xx_acx_mem_cfg(%struct.wl1271* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %135

31:                                               ; preds = %24
  %32 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %33 = call i32 @wl12xx_init_fwlog(%struct.wl1271* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %135

38:                                               ; preds = %31
  %39 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %40 = call i32 @wlcore_cmd_regdomain_config_locked(%struct.wl1271* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %135

45:                                               ; preds = %38
  %46 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %47 = call i32 @wl1271_init_pta(%struct.wl1271* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %135

52:                                               ; preds = %45
  %53 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %54 = call i32 @wl1271_acx_init_mem_config(%struct.wl1271* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %135

59:                                               ; preds = %52
  %60 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %61 = call i32 @wl12xx_init_rx_config(%struct.wl1271* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %127

65:                                               ; preds = %59
  %66 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %67 = call i32 @wl1271_acx_dco_itrim_params(%struct.wl1271* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %127

71:                                               ; preds = %65
  %72 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %73 = call i32 @wl1271_acx_tx_config_options(%struct.wl1271* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %127

77:                                               ; preds = %71
  %78 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %79 = call i32 @wl1271_acx_init_rx_interrupt(%struct.wl1271* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %127

83:                                               ; preds = %77
  %84 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %85 = call i32 @wl1271_init_energy_detection(%struct.wl1271* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %127

89:                                               ; preds = %83
  %90 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %91 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @wl1271_acx_frag_threshold(%struct.wl1271* %90, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %127

102:                                              ; preds = %89
  %103 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %104 = call i32 @wl1271_cmd_data_path(%struct.wl1271* %103, i32 1)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %127

108:                                              ; preds = %102
  %109 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %110 = call i32 @wl1271_acx_pm_config(%struct.wl1271* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %127

114:                                              ; preds = %108
  %115 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %116 = call i32 @wl12xx_acx_set_rate_mgmt_params(%struct.wl1271* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %127

120:                                              ; preds = %114
  %121 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %122 = call i32 @wl12xx_acx_config_hangover(%struct.wl1271* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %127

126:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %135

127:                                              ; preds = %125, %119, %113, %107, %101, %88, %82, %76, %70, %64
  %128 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %129 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @kfree(i32* %130)
  %132 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %133 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %127, %126, %57, %50, %43, %36, %29, %22, %15
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @wl1271_init_templates_config(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_acx_mem_cfg(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_init_fwlog(%struct.wl1271*) #1

declare dso_local i32 @wlcore_cmd_regdomain_config_locked(%struct.wl1271*) #1

declare dso_local i32 @wl1271_init_pta(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_init_mem_config(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_init_rx_config(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_dco_itrim_params(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_tx_config_options(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_init_rx_interrupt(%struct.wl1271*) #1

declare dso_local i32 @wl1271_init_energy_detection(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_frag_threshold(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_cmd_data_path(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_acx_pm_config(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_acx_set_rate_mgmt_params(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_acx_config_hangover(%struct.wl1271*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
