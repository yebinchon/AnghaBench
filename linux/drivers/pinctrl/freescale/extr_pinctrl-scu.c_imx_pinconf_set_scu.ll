; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-scu.c_imx_pinconf_set_scu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-scu.c_imx_pinconf_set_scu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.imx_pinctrl = type { i32 }
%struct.imx_sc_msg_req_pad_set = type { i32, i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@BM_PAD_CTL_IFMUX_ENABLE = common dso_local global i32 0, align 4
@BM_PAD_CTL_GP_ENABLE = common dso_local global i32 0, align 4
@BP_PAD_CTL_IFMUX = common dso_local global i32 0, align 4
@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_PAD = common dso_local global i32 0, align 4
@IMX_SC_PAD_FUNC_SET = common dso_local global i32 0, align 4
@pinctrl_ipc_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"write: pin_id %u config 0x%x val 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_pinconf_set_scu(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.imx_pinctrl*, align 8
  %10 = alloca %struct.imx_sc_msg_req_pad_set, align 4
  %11 = alloca %struct.imx_sc_rpc_msg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.imx_pinctrl* %17, %struct.imx_pinctrl** %9, align 8
  %18 = getelementptr inbounds %struct.imx_sc_msg_req_pad_set, %struct.imx_sc_msg_req_pad_set* %10, i32 0, i32 2
  store %struct.imx_sc_rpc_msg* %18, %struct.imx_sc_rpc_msg** %11, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 2
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @BM_PAD_CTL_IFMUX_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BM_PAD_CTL_GP_ENABLE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @BP_PAD_CTL_IFMUX, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %14, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %42 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %11, align 8
  %43 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @IMX_SC_RPC_SVC_PAD, align 4
  %45 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %11, align 8
  %46 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @IMX_SC_PAD_FUNC_SET, align 4
  %48 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %11, align 8
  %49 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %11, align 8
  %51 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %50, i32 0, i32 0
  store i32 3, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds %struct.imx_sc_msg_req_pad_set, %struct.imx_sc_msg_req_pad_set* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %14, align 4
  %55 = getelementptr inbounds %struct.imx_sc_msg_req_pad_set, %struct.imx_sc_msg_req_pad_set* %10, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @pinctrl_ipc_handle, align 4
  %57 = call i32 @imx_scu_call_rpc(i32 %56, %struct.imx_sc_msg_req_pad_set* %10, i32 1)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %9, align 8
  %59 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %15, align 4
  ret i32 %65
}

declare dso_local %struct.imx_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_req_pad_set*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
