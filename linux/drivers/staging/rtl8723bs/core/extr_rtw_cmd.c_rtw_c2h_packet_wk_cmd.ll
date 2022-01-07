; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_c2h_packet_wk_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_c2h_packet_wk_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.drvextra_cmd_parm = type { i32*, i32, i64, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@C2H_WK_CID = common dso_local global i32 0, align 4
@_Set_Drv_Extra = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_c2h_packet_wk_cmd(%struct.adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_obj*, align 8
  %8 = alloca %struct.drvextra_cmd_parm*, align 8
  %9 = alloca %struct.cmd_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.cmd_priv* %12, %struct.cmd_priv** %9, align 8
  %13 = load i32, i32* @_SUCCESS, align 4
  store i32 %13, i32* %10, align 4
  %14 = call i8* @rtw_zmalloc(i32 4)
  %15 = bitcast i8* %14 to %struct.cmd_obj*
  store %struct.cmd_obj* %15, %struct.cmd_obj** %7, align 8
  %16 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %17 = icmp eq %struct.cmd_obj* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @_FAIL, align 4
  store i32 %19, i32* %10, align 4
  br label %49

20:                                               ; preds = %3
  %21 = call i8* @rtw_zmalloc(i32 32)
  %22 = bitcast i8* %21 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %22, %struct.drvextra_cmd_parm** %8, align 8
  %23 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %24 = icmp eq %struct.drvextra_cmd_parm* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %27 = call i32 @kfree(%struct.cmd_obj* %26)
  %28 = load i32, i32* @_FAIL, align 4
  store i32 %28, i32* %10, align 4
  br label %49

29:                                               ; preds = %20
  %30 = load i32, i32* @C2H_WK_CID, align 4
  %31 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %32 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %34 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %37 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %40 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %42 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %43 = load i32, i32* @_Set_Drv_Extra, align 4
  %44 = call i32 @GEN_CMD_CODE(i32 %43)
  %45 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %41, %struct.drvextra_cmd_parm* %42, i32 %44)
  %46 = load %struct.cmd_priv*, %struct.cmd_priv** %9, align 8
  %47 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %48 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %46, %struct.cmd_obj* %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %29, %25, %18
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.drvextra_cmd_parm*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
