; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_rtl8723bs_set_hal_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_rtl8723bs_set_hal_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_ops }
%struct.hal_ops = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@rtl8723bs_hal_init = common dso_local global i32 0, align 4
@rtl8723bs_hal_deinit = common dso_local global i32 0, align 4
@rtl8723bs_inirp_init = common dso_local global i32 0, align 4
@rtl8723bs_inirp_deinit = common dso_local global i32 0, align 4
@rtl8723bs_init_xmit_priv = common dso_local global i32 0, align 4
@rtl8723bs_free_xmit_priv = common dso_local global i32 0, align 4
@rtl8723bs_init_recv_priv = common dso_local global i32 0, align 4
@rtl8723bs_free_recv_priv = common dso_local global i32 0, align 4
@rtl8723bs_init_default_value = common dso_local global i32 0, align 4
@rtl8723bs_interface_configure = common dso_local global i32 0, align 4
@ReadAdapterInfo8723BS = common dso_local global i32 0, align 4
@EnableInterrupt8723BSdio = common dso_local global i32 0, align 4
@DisableInterrupt8723BSdio = common dso_local global i32 0, align 4
@CheckIPSStatus = common dso_local global i32 0, align 4
@SetHwReg8723BS = common dso_local global i32 0, align 4
@GetHwReg8723BS = common dso_local global i32 0, align 4
@SetHwRegWithBuf8723B = common dso_local global i32 0, align 4
@GetHalDefVar8723BSDIO = common dso_local global i32 0, align 4
@SetHalDefVar8723BSDIO = common dso_local global i32 0, align 4
@rtl8723bs_hal_xmit = common dso_local global i32 0, align 4
@rtl8723bs_mgnt_xmit = common dso_local global i32 0, align 4
@rtl8723bs_hal_xmitframe_enqueue = common dso_local global i32 0, align 4
@ClearInterrupt8723BSdio = common dso_local global i32 0, align 4
@rtl8723bs_cancle_checkbthang_workqueue = common dso_local global i32 0, align 4
@rtl8723bs_free_checkbthang_workqueue = common dso_local global i32 0, align 4
@rtl8723bs_hal_check_bt_hang = common dso_local global i32 0, align 4
@rtl8723bs_init_checkbthang_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723bs_set_hal_ops(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_ops*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store %struct.hal_ops* %5, %struct.hal_ops** %3, align 8
  %6 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %7 = call i32 @rtl8723b_set_hal_ops(%struct.hal_ops* %6)
  %8 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %9 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %8, i32 0, i32 26
  store i32* @rtl8723bs_hal_init, i32** %9, align 8
  %10 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %11 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %10, i32 0, i32 25
  store i32* @rtl8723bs_hal_deinit, i32** %11, align 8
  %12 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %13 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %12, i32 0, i32 24
  store i32* @rtl8723bs_inirp_init, i32** %13, align 8
  %14 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %15 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %14, i32 0, i32 23
  store i32* @rtl8723bs_inirp_deinit, i32** %15, align 8
  %16 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %17 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %16, i32 0, i32 22
  store i32* @rtl8723bs_init_xmit_priv, i32** %17, align 8
  %18 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %19 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %18, i32 0, i32 21
  store i32* @rtl8723bs_free_xmit_priv, i32** %19, align 8
  %20 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %21 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %20, i32 0, i32 20
  store i32* @rtl8723bs_init_recv_priv, i32** %21, align 8
  %22 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %23 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %22, i32 0, i32 19
  store i32* @rtl8723bs_free_recv_priv, i32** %23, align 8
  %24 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %25 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %24, i32 0, i32 18
  store i32* @rtl8723bs_init_default_value, i32** %25, align 8
  %26 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %27 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %26, i32 0, i32 17
  store i32* @rtl8723bs_interface_configure, i32** %27, align 8
  %28 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %29 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %28, i32 0, i32 16
  store i32* @ReadAdapterInfo8723BS, i32** %29, align 8
  %30 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %31 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %30, i32 0, i32 15
  store i32* @EnableInterrupt8723BSdio, i32** %31, align 8
  %32 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %33 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %32, i32 0, i32 14
  store i32* @DisableInterrupt8723BSdio, i32** %33, align 8
  %34 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %35 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %34, i32 0, i32 13
  store i32* @CheckIPSStatus, i32** %35, align 8
  %36 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %37 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %36, i32 0, i32 11
  store i32* @SetHwReg8723BS, i32** %37, align 8
  %38 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %39 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %38, i32 0, i32 10
  store i32* @GetHwReg8723BS, i32** %39, align 8
  %40 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %41 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %40, i32 0, i32 9
  store i32* @SetHwRegWithBuf8723B, i32** %41, align 8
  %42 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %43 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %42, i32 0, i32 8
  store i32* @GetHalDefVar8723BSDIO, i32** %43, align 8
  %44 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %45 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %44, i32 0, i32 7
  store i32* @SetHalDefVar8723BSDIO, i32** %45, align 8
  %46 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %47 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %46, i32 0, i32 6
  store i32* @rtl8723bs_hal_xmit, i32** %47, align 8
  %48 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %49 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %48, i32 0, i32 5
  store i32* @rtl8723bs_mgnt_xmit, i32** %49, align 8
  %50 = load %struct.hal_ops*, %struct.hal_ops** %3, align 8
  %51 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %50, i32 0, i32 4
  store i32* @rtl8723bs_hal_xmitframe_enqueue, i32** %51, align 8
  ret void
}

declare dso_local i32 @rtl8723b_set_hal_ops(%struct.hal_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
