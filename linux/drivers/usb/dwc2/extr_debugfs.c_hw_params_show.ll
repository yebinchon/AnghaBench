; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_debugfs.c_hw_params_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_debugfs.c_hw_params_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dwc2_hsotg* }
%struct.dwc2_hsotg = type { %struct.dwc2_hw_params }
%struct.dwc2_hw_params = type { i32 }

@op_mode = common dso_local global i32 0, align 4
@arch = common dso_local global i32 0, align 4
@dma_desc_enable = common dso_local global i32 0, align 4
@enable_dynamic_fifo = common dso_local global i32 0, align 4
@en_multiple_tx_fifo = common dso_local global i32 0, align 4
@rx_fifo_size = common dso_local global i32 0, align 4
@host_nperio_tx_fifo_size = common dso_local global i32 0, align 4
@dev_nperio_tx_fifo_size = common dso_local global i32 0, align 4
@host_perio_tx_fifo_size = common dso_local global i32 0, align 4
@nperio_tx_q_depth = common dso_local global i32 0, align 4
@host_perio_tx_q_depth = common dso_local global i32 0, align 4
@dev_token_q_depth = common dso_local global i32 0, align 4
@max_transfer_size = common dso_local global i32 0, align 4
@max_packet_count = common dso_local global i32 0, align 4
@host_channels = common dso_local global i32 0, align 4
@hs_phy_type = common dso_local global i32 0, align 4
@fs_phy_type = common dso_local global i32 0, align 4
@i2c_enable = common dso_local global i32 0, align 4
@num_dev_ep = common dso_local global i32 0, align 4
@num_dev_perio_in_ep = common dso_local global i32 0, align 4
@total_fifo_size = common dso_local global i32 0, align 4
@power_optimized = common dso_local global i32 0, align 4
@utmi_phy_data_width = common dso_local global i32 0, align 4
@snpsid = common dso_local global i32 0, align 4
@dev_ep_dirs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hw_params_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_params_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_hw_params*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  store %struct.dwc2_hsotg* %9, %struct.dwc2_hsotg** %5, align 8
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 0
  store %struct.dwc2_hw_params* %11, %struct.dwc2_hw_params** %6, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %14 = load i32, i32* @op_mode, align 4
  %15 = call i32 @print_param(%struct.seq_file* %12, %struct.dwc2_hw_params* %13, i32 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %18 = load i32, i32* @arch, align 4
  %19 = call i32 @print_param(%struct.seq_file* %16, %struct.dwc2_hw_params* %17, i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %22 = load i32, i32* @dma_desc_enable, align 4
  %23 = call i32 @print_param(%struct.seq_file* %20, %struct.dwc2_hw_params* %21, i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %26 = load i32, i32* @enable_dynamic_fifo, align 4
  %27 = call i32 @print_param(%struct.seq_file* %24, %struct.dwc2_hw_params* %25, i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %30 = load i32, i32* @en_multiple_tx_fifo, align 4
  %31 = call i32 @print_param(%struct.seq_file* %28, %struct.dwc2_hw_params* %29, i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %34 = load i32, i32* @rx_fifo_size, align 4
  %35 = call i32 @print_param(%struct.seq_file* %32, %struct.dwc2_hw_params* %33, i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %38 = load i32, i32* @host_nperio_tx_fifo_size, align 4
  %39 = call i32 @print_param(%struct.seq_file* %36, %struct.dwc2_hw_params* %37, i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %42 = load i32, i32* @dev_nperio_tx_fifo_size, align 4
  %43 = call i32 @print_param(%struct.seq_file* %40, %struct.dwc2_hw_params* %41, i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %46 = load i32, i32* @host_perio_tx_fifo_size, align 4
  %47 = call i32 @print_param(%struct.seq_file* %44, %struct.dwc2_hw_params* %45, i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %50 = load i32, i32* @nperio_tx_q_depth, align 4
  %51 = call i32 @print_param(%struct.seq_file* %48, %struct.dwc2_hw_params* %49, i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %54 = load i32, i32* @host_perio_tx_q_depth, align 4
  %55 = call i32 @print_param(%struct.seq_file* %52, %struct.dwc2_hw_params* %53, i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %58 = load i32, i32* @dev_token_q_depth, align 4
  %59 = call i32 @print_param(%struct.seq_file* %56, %struct.dwc2_hw_params* %57, i32 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %62 = load i32, i32* @max_transfer_size, align 4
  %63 = call i32 @print_param(%struct.seq_file* %60, %struct.dwc2_hw_params* %61, i32 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %66 = load i32, i32* @max_packet_count, align 4
  %67 = call i32 @print_param(%struct.seq_file* %64, %struct.dwc2_hw_params* %65, i32 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %70 = load i32, i32* @host_channels, align 4
  %71 = call i32 @print_param(%struct.seq_file* %68, %struct.dwc2_hw_params* %69, i32 %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %74 = load i32, i32* @hs_phy_type, align 4
  %75 = call i32 @print_param(%struct.seq_file* %72, %struct.dwc2_hw_params* %73, i32 %74)
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %78 = load i32, i32* @fs_phy_type, align 4
  %79 = call i32 @print_param(%struct.seq_file* %76, %struct.dwc2_hw_params* %77, i32 %78)
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %82 = load i32, i32* @i2c_enable, align 4
  %83 = call i32 @print_param(%struct.seq_file* %80, %struct.dwc2_hw_params* %81, i32 %82)
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %86 = load i32, i32* @num_dev_ep, align 4
  %87 = call i32 @print_param(%struct.seq_file* %84, %struct.dwc2_hw_params* %85, i32 %86)
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %90 = load i32, i32* @num_dev_perio_in_ep, align 4
  %91 = call i32 @print_param(%struct.seq_file* %88, %struct.dwc2_hw_params* %89, i32 %90)
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %94 = load i32, i32* @total_fifo_size, align 4
  %95 = call i32 @print_param(%struct.seq_file* %92, %struct.dwc2_hw_params* %93, i32 %94)
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %98 = load i32, i32* @power_optimized, align 4
  %99 = call i32 @print_param(%struct.seq_file* %96, %struct.dwc2_hw_params* %97, i32 %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %102 = load i32, i32* @utmi_phy_data_width, align 4
  %103 = call i32 @print_param(%struct.seq_file* %100, %struct.dwc2_hw_params* %101, i32 %102)
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %106 = load i32, i32* @snpsid, align 4
  %107 = call i32 @print_param_hex(%struct.seq_file* %104, %struct.dwc2_hw_params* %105, i32 %106)
  %108 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %109 = load %struct.dwc2_hw_params*, %struct.dwc2_hw_params** %6, align 8
  %110 = load i32, i32* @dev_ep_dirs, align 4
  %111 = call i32 @print_param_hex(%struct.seq_file* %108, %struct.dwc2_hw_params* %109, i32 %110)
  ret i32 0
}

declare dso_local i32 @print_param(%struct.seq_file*, %struct.dwc2_hw_params*, i32) #1

declare dso_local i32 @print_param_hex(%struct.seq_file*, %struct.dwc2_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
