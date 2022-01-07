; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c_rtl92e_dm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c_rtl92e_dm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32 }

@DM_Type_ByDriver = common dso_local global i32 0, align 4
@_rtl92e_dm_check_rf_ctrl_gpio = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_dm_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load i32, i32* @DM_Type_ByDriver, align 4
  %7 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @_rtl92e_dm_init_dynamic_tx_power(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @rtl92e_init_adaptive_rate(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @_rtl92e_dm_dig_init(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @rtl92e_dm_init_edca_turbo(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @_rtl92e_dm_init_bandwidth_autoswitch(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @_rtl92e_dm_init_fsync(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @_rtl92e_dm_init_rx_path_selection(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @_rtl92e_dm_init_cts_to_self(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i64 @IS_HARDWARE_TYPE_8192SE(%struct.net_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @_rtl92e_dm_init_wa_broadcom_iot(%struct.net_device* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 1
  %36 = load i64, i64* @_rtl92e_dm_check_rf_ctrl_gpio, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @INIT_DELAYED_WORK_RSL(i32* %35, i8* %37, %struct.net_device* %38)
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_init_dynamic_tx_power(%struct.net_device*) #1

declare dso_local i32 @rtl92e_init_adaptive_rate(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_dig_init(%struct.net_device*) #1

declare dso_local i32 @rtl92e_dm_init_edca_turbo(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_init_bandwidth_autoswitch(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_init_fsync(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_init_rx_path_selection(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_init_cts_to_self(%struct.net_device*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192SE(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_dm_init_wa_broadcom_iot(%struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK_RSL(i32*, i8*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
