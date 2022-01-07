; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-scu.c_imx_pinconf_get_scu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-scu.c_imx_pinconf_get_scu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.imx_sc_msg_req_pad_get = type { i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }
%struct.imx_sc_msg_resp_pad_get = type { i64 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_PAD = common dso_local global i32 0, align 4
@IMX_SC_PAD_FUNC_GET = common dso_local global i32 0, align 4
@pinctrl_ipc_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_pinconf_get_scu(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.imx_sc_msg_req_pad_get, align 4
  %9 = alloca %struct.imx_sc_msg_resp_pad_get*, align 8
  %10 = alloca %struct.imx_sc_rpc_msg*, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = getelementptr inbounds %struct.imx_sc_msg_req_pad_get, %struct.imx_sc_msg_req_pad_get* %8, i32 0, i32 1
  store %struct.imx_sc_rpc_msg* %12, %struct.imx_sc_rpc_msg** %10, align 8
  %13 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %14 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %15 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IMX_SC_RPC_SVC_PAD, align 4
  %17 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %18 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IMX_SC_PAD_FUNC_GET, align 4
  %20 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %21 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %10, align 8
  %23 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.imx_sc_msg_req_pad_get, %struct.imx_sc_msg_req_pad_get* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @pinctrl_ipc_handle, align 4
  %27 = call i32 @imx_scu_call_rpc(i32 %26, %struct.imx_sc_msg_req_pad_get* %8, i32 1)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %3
  %33 = bitcast %struct.imx_sc_msg_req_pad_get* %8 to %struct.imx_sc_msg_resp_pad_get*
  store %struct.imx_sc_msg_resp_pad_get* %33, %struct.imx_sc_msg_resp_pad_get** %9, align 8
  %34 = load %struct.imx_sc_msg_resp_pad_get*, %struct.imx_sc_msg_resp_pad_get** %9, align 8
  %35 = getelementptr inbounds %struct.imx_sc_msg_resp_pad_get, %struct.imx_sc_msg_resp_pad_get* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_req_pad_get*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
