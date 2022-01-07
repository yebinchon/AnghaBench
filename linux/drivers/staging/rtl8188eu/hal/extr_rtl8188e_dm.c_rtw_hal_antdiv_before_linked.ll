; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_dm.c_rtw_hal_antdiv_before_linked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_dm.c_rtw_hal_antdiv_before_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__*, %struct.mlme_priv }
%struct.TYPE_2__ = type { i64, %struct.odm_dm_struct }
%struct.odm_dm_struct = type { %struct.sw_ant_switch }
%struct.sw_ant_switch = type { i32, i64 }
%struct.mlme_priv = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@Antenna_A = common dso_local global i64 0, align 8
@Antenna_B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_hal_antdiv_before_linked(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.odm_dm_struct*, align 8
  %5 = alloca %struct.sw_ant_switch*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.odm_dm_struct* %10, %struct.odm_dm_struct** %4, align 8
  %11 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %12 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %11, i32 0, i32 0
  store %struct.sw_ant_switch* %12, %struct.sw_ant_switch** %5, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.mlme_priv* %14, %struct.mlme_priv** %6, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %24 = load i32, i32* @_FW_LINKED, align 4
  %25 = call i64 @check_fwstate(%struct.mlme_priv* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %57

28:                                               ; preds = %22
  %29 = load %struct.sw_ant_switch*, %struct.sw_ant_switch** %5, align 8
  %30 = getelementptr inbounds %struct.sw_ant_switch, %struct.sw_ant_switch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load %struct.sw_ant_switch*, %struct.sw_ant_switch** %5, align 8
  %35 = getelementptr inbounds %struct.sw_ant_switch, %struct.sw_ant_switch* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.sw_ant_switch*, %struct.sw_ant_switch** %5, align 8
  %37 = getelementptr inbounds %struct.sw_ant_switch, %struct.sw_ant_switch* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @Antenna_A, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @Antenna_B, align 8
  br label %45

43:                                               ; preds = %33
  %44 = load i64, i64* @Antenna_A, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.sw_ant_switch*, %struct.sw_ant_switch** %5, align 8
  %48 = getelementptr inbounds %struct.sw_ant_switch, %struct.sw_ant_switch* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = load %struct.sw_ant_switch*, %struct.sw_ant_switch** %5, align 8
  %51 = getelementptr inbounds %struct.sw_ant_switch, %struct.sw_ant_switch* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @rtw_antenna_select_cmd(%struct.adapter* %49, i64 %52, i32 0)
  store i32 1, i32* %2, align 4
  br label %57

54:                                               ; preds = %28
  %55 = load %struct.sw_ant_switch*, %struct.sw_ant_switch** %5, align 8
  %56 = getelementptr inbounds %struct.sw_ant_switch, %struct.sw_ant_switch* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %45, %27, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_antenna_select_cmd(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
