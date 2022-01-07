; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_firmware.c__rtl92e_fw_check_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_firmware.c__rtl92e_fw_check_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.rt_firmware* }
%struct.rt_firmware = type { i32 }

@FW_STATUS_1_MOVE_BOOT_CODE = common dso_local global i32 0, align 4
@FW_STATUS_2_MOVE_MAIN_CODE = common dso_local global i32 0, align 4
@FW_STATUS_3_TURNON_CPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"_rtl92e_fw_boot_cpu fail!\0A\00", align 1
@FW_STATUS_4_MOVE_DATA_CODE = common dso_local global i32 0, align 4
@CPU_GEN_FIRM_RDY = common dso_local global i32 0, align 4
@FW_STATUS_5_READY = common dso_local global i32 0, align 4
@COMP_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"_rtl92e_is_fw_ready fail(%d)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown firmware status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @_rtl92e_fw_check_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_fw_check_ready(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.rt_firmware*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %5, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 0
  %12 = load %struct.rt_firmware*, %struct.rt_firmware** %11, align 8
  store %struct.rt_firmware* %12, %struct.rt_firmware** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %53 [
    i32 130, label %14
    i32 129, label %18
    i32 128, label %34
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @FW_STATUS_1_MOVE_BOOT_CODE, align 4
  %16 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %17 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load i32, i32* @FW_STATUS_2_MOVE_MAIN_CODE, align 4
  %20 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %21 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @_rtl92e_fw_boot_cpu(%struct.net_device* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @FW_STATUS_3_TURNON_CPU, align 4
  %28 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %29 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %33

30:                                               ; preds = %18
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netdev_dbg(%struct.net_device* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %26
  br label %56

34:                                               ; preds = %2
  %35 = load i32, i32* @FW_STATUS_4_MOVE_DATA_CODE, align 4
  %36 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %37 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = call i32 @mdelay(i32 1)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i32, i32* @CPU_GEN_FIRM_RDY, align 4
  %41 = call i32 @_rtl92e_wait_for_fw(%struct.net_device* %39, i32 %40, i32 20)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @FW_STATUS_5_READY, align 4
  %46 = load %struct.rt_firmware*, %struct.rt_firmware** %6, align 8
  %47 = getelementptr inbounds %struct.rt_firmware, %struct.rt_firmware* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @COMP_FIRMWARE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @RT_TRACE(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %56

53:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @netdev_dbg(%struct.net_device* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %52, %33, %14
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_fw_boot_cpu(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @_rtl92e_wait_for_fw(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
