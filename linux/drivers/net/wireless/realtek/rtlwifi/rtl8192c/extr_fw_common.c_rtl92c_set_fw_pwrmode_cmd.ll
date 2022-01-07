; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_rtl92c_set_fw_pwrmode_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_rtl92c_set_fw_pwrmode_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_ps_ctl = type { i32, i32 }

@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FW LPS mode = %d\0A\00", align 1
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"rtl92c_set_fw_rsvdpagepkt(): u1_h2c_set_pwrmode\0A\00", align 1
@H2C_SETPWRMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_set_fw_pwrmode_cmd(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %12)
  store %struct.rtl_ps_ctl* %13, %struct.rtl_ps_ctl** %7, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %15 = load i32, i32* @COMP_POWER, align 4
  %16 = load i32, i32* @DBG_LOUD, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @RT_TRACE(%struct.rtl_priv* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SET_H2CCMD_PWRMODE_PARM_MODE(i32* %19, i32 %20)
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 1, %32 ]
  %35 = call i32 @SET_H2CCMD_PWRMODE_PARM_SMART_PS(i32* %22, i32 %34)
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %37 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %38 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SET_H2CCMD_PWRMODE_PARM_BCN_PASS_TIME(i32* %36, i32 %39)
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %42 = load i32, i32* @COMP_CMD, align 4
  %43 = load i32, i32* @DBG_DMESG, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %45 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32 3)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = load i32, i32* @H2C_SETPWRMODE, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %49 = call i32 @rtl92c_fill_h2c_cmd(%struct.ieee80211_hw* %46, i32 %47, i32 3, i32* %48)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @SET_H2CCMD_PWRMODE_PARM_MODE(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_PWRMODE_PARM_SMART_PS(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_PWRMODE_PARM_BCN_PASS_TIME(i32*, i32) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @rtl92c_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
