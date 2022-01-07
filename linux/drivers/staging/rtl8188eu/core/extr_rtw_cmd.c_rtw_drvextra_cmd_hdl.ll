; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_drvextra_cmd_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_drvextra_cmd_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.drvextra_cmd_parm = type { i32, i64, i64 }

@H2C_PARAMETERS_ERROR = common dso_local global i32 0, align 4
@H2C_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_drvextra_cmd_hdl(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drvextra_cmd_parm*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @H2C_PARAMETERS_ERROR, align 4
  store i32 %10, i32* %3, align 4
  br label %66

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %13, %struct.drvextra_cmd_parm** %6, align 8
  %14 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %15 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %48 [
    i32 131, label %17
    i32 129, label %26
    i32 130, label %29
    i32 128, label %36
    i32 133, label %42
  ]

17:                                               ; preds = %11
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %20 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %23 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dynamic_chk_wk_hdl(%struct.adapter* %18, i64 %21, i64 %24)
  br label %49

26:                                               ; preds = %11
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = call i32 @rtw_ps_processor(%struct.adapter* %27)
  br label %49

29:                                               ; preds = %11
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %32 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @lps_ctrl_wk_hdl(%struct.adapter* %30, i32 %34)
  br label %49

36:                                               ; preds = %11
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %39 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @rpt_timer_setting_wk_hdl(%struct.adapter* %37, i64 %40)
  br label %49

42:                                               ; preds = %11
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %45 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @antenna_select_wk_hdl(%struct.adapter* %43, i64 %46)
  br label %49

48:                                               ; preds = %11
  br label %49

49:                                               ; preds = %48, %42, %36, %29, %26, %17
  %50 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %51 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %56 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %61 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @kfree(i64 %62)
  br label %64

64:                                               ; preds = %59, %54, %49
  %65 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %9
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @dynamic_chk_wk_hdl(%struct.adapter*, i64, i64) #1

declare dso_local i32 @rtw_ps_processor(%struct.adapter*) #1

declare dso_local i32 @lps_ctrl_wk_hdl(%struct.adapter*, i32) #1

declare dso_local i32 @rpt_timer_setting_wk_hdl(%struct.adapter*, i64) #1

declare dso_local i32 @antenna_select_wk_hdl(%struct.adapter*, i64) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
