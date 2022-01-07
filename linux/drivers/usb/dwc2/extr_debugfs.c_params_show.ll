; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_debugfs.c_params_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_debugfs.c_params_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dwc2_hsotg* }
%struct.dwc2_hsotg = type { %struct.dwc2_core_params }
%struct.dwc2_core_params = type { i32* }

@otg_cap = common dso_local global i32 0, align 4
@dma_desc_enable = common dso_local global i32 0, align 4
@dma_desc_fs_enable = common dso_local global i32 0, align 4
@speed = common dso_local global i32 0, align 4
@enable_dynamic_fifo = common dso_local global i32 0, align 4
@en_multiple_tx_fifo = common dso_local global i32 0, align 4
@host_rx_fifo_size = common dso_local global i32 0, align 4
@host_nperio_tx_fifo_size = common dso_local global i32 0, align 4
@host_perio_tx_fifo_size = common dso_local global i32 0, align 4
@max_transfer_size = common dso_local global i32 0, align 4
@max_packet_count = common dso_local global i32 0, align 4
@host_channels = common dso_local global i32 0, align 4
@phy_type = common dso_local global i32 0, align 4
@phy_utmi_width = common dso_local global i32 0, align 4
@phy_ulpi_ddr = common dso_local global i32 0, align 4
@phy_ulpi_ext_vbus = common dso_local global i32 0, align 4
@i2c_enable = common dso_local global i32 0, align 4
@ipg_isoc_en = common dso_local global i32 0, align 4
@ulpi_fs_ls = common dso_local global i32 0, align 4
@host_support_fs_ls_low_power = common dso_local global i32 0, align 4
@host_ls_low_power_phy_clk = common dso_local global i32 0, align 4
@ts_dline = common dso_local global i32 0, align 4
@reload_ctl = common dso_local global i32 0, align 4
@ahbcfg = common dso_local global i32 0, align 4
@uframe_sched = common dso_local global i32 0, align 4
@external_id_pin_ctl = common dso_local global i32 0, align 4
@power_down = common dso_local global i32 0, align 4
@lpm = common dso_local global i32 0, align 4
@lpm_clock_gating = common dso_local global i32 0, align 4
@besl = common dso_local global i32 0, align 4
@hird_threshold_en = common dso_local global i32 0, align 4
@hird_threshold = common dso_local global i32 0, align 4
@service_interval = common dso_local global i32 0, align 4
@host_dma = common dso_local global i32 0, align 4
@g_dma = common dso_local global i32 0, align 4
@g_dma_desc = common dso_local global i32 0, align 4
@g_rx_fifo_size = common dso_local global i32 0, align 4
@g_np_tx_fifo_size = common dso_local global i32 0, align 4
@MAX_EPS_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"g_tx_fifo_size[%d]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%-30s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @params_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @params_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_core_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %10, align 8
  store %struct.dwc2_hsotg* %11, %struct.dwc2_hsotg** %5, align 8
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 0
  store %struct.dwc2_core_params* %13, %struct.dwc2_core_params** %6, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %16 = load i32, i32* @otg_cap, align 4
  %17 = call i32 @print_param(%struct.seq_file* %14, %struct.dwc2_core_params* %15, i32 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %20 = load i32, i32* @dma_desc_enable, align 4
  %21 = call i32 @print_param(%struct.seq_file* %18, %struct.dwc2_core_params* %19, i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %24 = load i32, i32* @dma_desc_fs_enable, align 4
  %25 = call i32 @print_param(%struct.seq_file* %22, %struct.dwc2_core_params* %23, i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %28 = load i32, i32* @speed, align 4
  %29 = call i32 @print_param(%struct.seq_file* %26, %struct.dwc2_core_params* %27, i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %32 = load i32, i32* @enable_dynamic_fifo, align 4
  %33 = call i32 @print_param(%struct.seq_file* %30, %struct.dwc2_core_params* %31, i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %36 = load i32, i32* @en_multiple_tx_fifo, align 4
  %37 = call i32 @print_param(%struct.seq_file* %34, %struct.dwc2_core_params* %35, i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %40 = load i32, i32* @host_rx_fifo_size, align 4
  %41 = call i32 @print_param(%struct.seq_file* %38, %struct.dwc2_core_params* %39, i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %44 = load i32, i32* @host_nperio_tx_fifo_size, align 4
  %45 = call i32 @print_param(%struct.seq_file* %42, %struct.dwc2_core_params* %43, i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %48 = load i32, i32* @host_perio_tx_fifo_size, align 4
  %49 = call i32 @print_param(%struct.seq_file* %46, %struct.dwc2_core_params* %47, i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %52 = load i32, i32* @max_transfer_size, align 4
  %53 = call i32 @print_param(%struct.seq_file* %50, %struct.dwc2_core_params* %51, i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %56 = load i32, i32* @max_packet_count, align 4
  %57 = call i32 @print_param(%struct.seq_file* %54, %struct.dwc2_core_params* %55, i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %60 = load i32, i32* @host_channels, align 4
  %61 = call i32 @print_param(%struct.seq_file* %58, %struct.dwc2_core_params* %59, i32 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %64 = load i32, i32* @phy_type, align 4
  %65 = call i32 @print_param(%struct.seq_file* %62, %struct.dwc2_core_params* %63, i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %68 = load i32, i32* @phy_utmi_width, align 4
  %69 = call i32 @print_param(%struct.seq_file* %66, %struct.dwc2_core_params* %67, i32 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %72 = load i32, i32* @phy_ulpi_ddr, align 4
  %73 = call i32 @print_param(%struct.seq_file* %70, %struct.dwc2_core_params* %71, i32 %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %76 = load i32, i32* @phy_ulpi_ext_vbus, align 4
  %77 = call i32 @print_param(%struct.seq_file* %74, %struct.dwc2_core_params* %75, i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %80 = load i32, i32* @i2c_enable, align 4
  %81 = call i32 @print_param(%struct.seq_file* %78, %struct.dwc2_core_params* %79, i32 %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %84 = load i32, i32* @ipg_isoc_en, align 4
  %85 = call i32 @print_param(%struct.seq_file* %82, %struct.dwc2_core_params* %83, i32 %84)
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %88 = load i32, i32* @ulpi_fs_ls, align 4
  %89 = call i32 @print_param(%struct.seq_file* %86, %struct.dwc2_core_params* %87, i32 %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %92 = load i32, i32* @host_support_fs_ls_low_power, align 4
  %93 = call i32 @print_param(%struct.seq_file* %90, %struct.dwc2_core_params* %91, i32 %92)
  %94 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %95 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %96 = load i32, i32* @host_ls_low_power_phy_clk, align 4
  %97 = call i32 @print_param(%struct.seq_file* %94, %struct.dwc2_core_params* %95, i32 %96)
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %100 = load i32, i32* @ts_dline, align 4
  %101 = call i32 @print_param(%struct.seq_file* %98, %struct.dwc2_core_params* %99, i32 %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %104 = load i32, i32* @reload_ctl, align 4
  %105 = call i32 @print_param(%struct.seq_file* %102, %struct.dwc2_core_params* %103, i32 %104)
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %108 = load i32, i32* @ahbcfg, align 4
  %109 = call i32 @print_param_hex(%struct.seq_file* %106, %struct.dwc2_core_params* %107, i32 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %112 = load i32, i32* @uframe_sched, align 4
  %113 = call i32 @print_param(%struct.seq_file* %110, %struct.dwc2_core_params* %111, i32 %112)
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %116 = load i32, i32* @external_id_pin_ctl, align 4
  %117 = call i32 @print_param(%struct.seq_file* %114, %struct.dwc2_core_params* %115, i32 %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %119 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %120 = load i32, i32* @power_down, align 4
  %121 = call i32 @print_param(%struct.seq_file* %118, %struct.dwc2_core_params* %119, i32 %120)
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %124 = load i32, i32* @lpm, align 4
  %125 = call i32 @print_param(%struct.seq_file* %122, %struct.dwc2_core_params* %123, i32 %124)
  %126 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %127 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %128 = load i32, i32* @lpm_clock_gating, align 4
  %129 = call i32 @print_param(%struct.seq_file* %126, %struct.dwc2_core_params* %127, i32 %128)
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %132 = load i32, i32* @besl, align 4
  %133 = call i32 @print_param(%struct.seq_file* %130, %struct.dwc2_core_params* %131, i32 %132)
  %134 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %135 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %136 = load i32, i32* @hird_threshold_en, align 4
  %137 = call i32 @print_param(%struct.seq_file* %134, %struct.dwc2_core_params* %135, i32 %136)
  %138 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %139 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %140 = load i32, i32* @hird_threshold, align 4
  %141 = call i32 @print_param(%struct.seq_file* %138, %struct.dwc2_core_params* %139, i32 %140)
  %142 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %143 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %144 = load i32, i32* @service_interval, align 4
  %145 = call i32 @print_param(%struct.seq_file* %142, %struct.dwc2_core_params* %143, i32 %144)
  %146 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %147 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %148 = load i32, i32* @host_dma, align 4
  %149 = call i32 @print_param(%struct.seq_file* %146, %struct.dwc2_core_params* %147, i32 %148)
  %150 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %151 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %152 = load i32, i32* @g_dma, align 4
  %153 = call i32 @print_param(%struct.seq_file* %150, %struct.dwc2_core_params* %151, i32 %152)
  %154 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %155 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %156 = load i32, i32* @g_dma_desc, align 4
  %157 = call i32 @print_param(%struct.seq_file* %154, %struct.dwc2_core_params* %155, i32 %156)
  %158 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %159 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %160 = load i32, i32* @g_rx_fifo_size, align 4
  %161 = call i32 @print_param(%struct.seq_file* %158, %struct.dwc2_core_params* %159, i32 %160)
  %162 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %163 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %164 = load i32, i32* @g_np_tx_fifo_size, align 4
  %165 = call i32 @print_param(%struct.seq_file* %162, %struct.dwc2_core_params* %163, i32 %164)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %184, %2
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @MAX_EPS_CHANNELS, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %166
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @snprintf(i8* %171, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %172)
  %174 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %175 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %176 = load %struct.dwc2_core_params*, %struct.dwc2_core_params** %6, align 8
  %177 = getelementptr inbounds %struct.dwc2_core_params, %struct.dwc2_core_params* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @seq_printf(%struct.seq_file* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %175, i32 %182)
  br label %184

184:                                              ; preds = %170
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  br label %166

187:                                              ; preds = %166
  ret i32 0
}

declare dso_local i32 @print_param(%struct.seq_file*, %struct.dwc2_core_params*, i32) #1

declare dso_local i32 @print_param_hex(%struct.seq_file*, %struct.dwc2_core_params*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
