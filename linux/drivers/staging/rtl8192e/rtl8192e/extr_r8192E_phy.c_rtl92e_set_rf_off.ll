; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_set_rf_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_set_rf_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@rFPGA0_XA_RFInterfaceOE = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter4 = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter1 = common dso_local global i32 0, align 4
@rOFDM0_TRxPathEnable = common dso_local global i32 0, align 4
@rOFDM1_TRxPathEnable = common dso_local global i32 0, align 4
@ANAPAR_FOR_8192PciE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_set_rf_off(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = load i32, i32* @rFPGA0_XA_RFInterfaceOE, align 4
  %5 = load i32, i32* @BIT4, align 4
  %6 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @rFPGA0_AnalogParameter4, align 4
  %9 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %7, i32 %8, i32 768, i32 0)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %12 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %10, i32 %11, i32 24, i32 0)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %15 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %13, i32 %14, i32 15, i32 0)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %18 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %16, i32 %17, i32 15, i32 0)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %21 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %19, i32 %20, i32 96, i32 0)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %24 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %22, i32 %23, i32 4, i32 0)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* @ANAPAR_FOR_8192PciE, align 4
  %27 = call i32 @rtl92e_writeb(%struct.net_device* %25, i32 %26, i32 7)
  ret void
}

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
