; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_c2h_wk_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_c2h_wk_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.drvextra_cmd_parm = type { i32, i32*, i64, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@C2H_WK_CID = common dso_local global i32 0, align 4
@_Set_Drv_Extra = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_c2h_wk_cmd(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cmd_obj*, align 8
  %6 = alloca %struct.drvextra_cmd_parm*, align 8
  %7 = alloca %struct.cmd_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.cmd_priv* %10, %struct.cmd_priv** %7, align 8
  %11 = load i32, i32* @_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i8* @rtw_zmalloc(i32 4)
  %13 = bitcast i8* %12 to %struct.cmd_obj*
  store %struct.cmd_obj* %13, %struct.cmd_obj** %5, align 8
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %15 = icmp eq %struct.cmd_obj* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @_FAIL, align 4
  store i32 %17, i32* %8, align 4
  br label %50

18:                                               ; preds = %2
  %19 = call i8* @rtw_zmalloc(i32 32)
  %20 = bitcast i8* %19 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %20, %struct.drvextra_cmd_parm** %6, align 8
  %21 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %22 = icmp eq %struct.drvextra_cmd_parm* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %25 = call i32 @kfree(%struct.cmd_obj* %24)
  %26 = load i32, i32* @_FAIL, align 4
  store i32 %26, i32* %8, align 4
  br label %50

27:                                               ; preds = %18
  %28 = load i32, i32* @C2H_WK_CID, align 4
  %29 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %30 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %32 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 16, i32 0
  %37 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %38 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %41 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %43 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %44 = load i32, i32* @_Set_Drv_Extra, align 4
  %45 = call i32 @GEN_CMD_CODE(i32 %44)
  %46 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %42, %struct.drvextra_cmd_parm* %43, i32 %45)
  %47 = load %struct.cmd_priv*, %struct.cmd_priv** %7, align 8
  %48 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %49 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %47, %struct.cmd_obj* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %27, %23, %16
  %51 = load i32, i32* %8, align 4
  ret i32 %51
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
