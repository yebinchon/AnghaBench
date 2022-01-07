; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_tx_queue_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_tx_queue_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.wl1251_acx_mem_map* }
%struct.wl1251_acx_mem_map = type { i32 }
%struct.acx_tx_queue_qos_config = type { i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acx tx queue config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_NUM_OF_AC = common dso_local global i32 0, align 4
@ACX_TX_QUEUE_CFG = common dso_local global i32 0, align 4
@AC_BE = common dso_local global i32 0, align 4
@CWMIN_BE = common dso_local global i32 0, align 4
@CWMAX_BE = common dso_local global i32 0, align 4
@AIFS_DIFS = common dso_local global i32 0, align 4
@TXOP_BE = common dso_local global i32 0, align 4
@AC_BK = common dso_local global i32 0, align 4
@CWMIN_BK = common dso_local global i32 0, align 4
@CWMAX_BK = common dso_local global i32 0, align 4
@TXOP_BK = common dso_local global i32 0, align 4
@AC_VI = common dso_local global i32 0, align 4
@CWMIN_VI = common dso_local global i32 0, align 4
@CWMAX_VI = common dso_local global i32 0, align 4
@TXOP_VI = common dso_local global i32 0, align 4
@AC_VO = common dso_local global i32 0, align 4
@CWMIN_VO = common dso_local global i32 0, align 4
@CWMAX_VO = common dso_local global i32 0, align 4
@TXOP_VO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*)* @wl1251_hw_init_tx_queue_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_hw_init_tx_queue_config(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.acx_tx_queue_qos_config*, align 8
  %4 = alloca %struct.wl1251_acx_mem_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %7 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %8 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %7, i32 0, i32 0
  %9 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %8, align 8
  store %struct.wl1251_acx_mem_map* %9, %struct.wl1251_acx_mem_map** %4, align 8
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = call i32 @wl1251_debug(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.acx_tx_queue_qos_config* @kzalloc(i32 4, i32 %12)
  store %struct.acx_tx_queue_qos_config* %13, %struct.acx_tx_queue_qos_config** %3, align 8
  %14 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %3, align 8
  %15 = icmp ne %struct.acx_tx_queue_qos_config* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %75

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MAX_NUM_OF_AC, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %3, align 8
  %27 = load %struct.wl1251_acx_mem_map*, %struct.wl1251_acx_mem_map** %4, align 8
  %28 = getelementptr inbounds %struct.wl1251_acx_mem_map, %struct.wl1251_acx_mem_map* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wl1251_hw_init_txq_fill(i32 %25, %struct.acx_tx_queue_qos_config* %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %75

34:                                               ; preds = %24
  %35 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %36 = load i32, i32* @ACX_TX_QUEUE_CFG, align 4
  %37 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %3, align 8
  %38 = call i32 @wl1251_cmd_configure(%struct.wl1251* %35, i32 %36, %struct.acx_tx_queue_qos_config* %37, i32 4)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %75

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %48 = load i32, i32* @AC_BE, align 4
  %49 = load i32, i32* @CWMIN_BE, align 4
  %50 = load i32, i32* @CWMAX_BE, align 4
  %51 = load i32, i32* @AIFS_DIFS, align 4
  %52 = load i32, i32* @TXOP_BE, align 4
  %53 = call i32 @wl1251_acx_ac_cfg(%struct.wl1251* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %55 = load i32, i32* @AC_BK, align 4
  %56 = load i32, i32* @CWMIN_BK, align 4
  %57 = load i32, i32* @CWMAX_BK, align 4
  %58 = load i32, i32* @AIFS_DIFS, align 4
  %59 = load i32, i32* @TXOP_BK, align 4
  %60 = call i32 @wl1251_acx_ac_cfg(%struct.wl1251* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %62 = load i32, i32* @AC_VI, align 4
  %63 = load i32, i32* @CWMIN_VI, align 4
  %64 = load i32, i32* @CWMAX_VI, align 4
  %65 = load i32, i32* @AIFS_DIFS, align 4
  %66 = load i32, i32* @TXOP_VI, align 4
  %67 = call i32 @wl1251_acx_ac_cfg(%struct.wl1251* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %69 = load i32, i32* @AC_VO, align 4
  %70 = load i32, i32* @CWMIN_VO, align 4
  %71 = load i32, i32* @CWMAX_VO, align 4
  %72 = load i32, i32* @AIFS_DIFS, align 4
  %73 = load i32, i32* @TXOP_VO, align 4
  %74 = call i32 @wl1251_acx_ac_cfg(%struct.wl1251* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %46, %41, %33, %16
  %76 = load %struct.acx_tx_queue_qos_config*, %struct.acx_tx_queue_qos_config** %3, align 8
  %77 = call i32 @kfree(%struct.acx_tx_queue_qos_config* %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_tx_queue_qos_config* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_hw_init_txq_fill(i32, %struct.acx_tx_queue_qos_config*, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_tx_queue_qos_config*, i32) #1

declare dso_local i32 @wl1251_acx_ac_cfg(%struct.wl1251*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.acx_tx_queue_qos_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
