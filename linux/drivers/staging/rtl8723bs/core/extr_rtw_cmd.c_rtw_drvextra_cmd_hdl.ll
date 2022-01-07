; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_drvextra_cmd_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_drvextra_cmd_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.drvextra_cmd_parm = type { i32, i64, i64, i32 }
%struct.sta_info = type { i32 }

@H2C_PARAMETERS_ERROR = common dso_local global i32 0, align 4
@HW_VAR_C2H_HANDLE = common dso_local global i32 0, align 4
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
  br label %91

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %13, %struct.drvextra_cmd_parm** %6, align 8
  %14 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %15 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %73 [
    i32 133, label %17
    i32 129, label %20
    i32 130, label %23
    i32 135, label %29
    i32 131, label %32
    i32 136, label %38
    i32 128, label %41
    i32 132, label %44
    i32 137, label %47
    i32 134, label %57
    i32 138, label %64
  ]

17:                                               ; preds = %11
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = call i32 @dynamic_chk_wk_hdl(%struct.adapter* %18)
  br label %74

20:                                               ; preds = %11
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = call i32 @rtw_ps_processor(%struct.adapter* %21)
  br label %74

23:                                               ; preds = %11
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %26 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @lps_ctrl_wk_hdl(%struct.adapter* %24, i32 %27)
  br label %74

29:                                               ; preds = %11
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = call i32 @rtw_dm_in_lps_hdl(%struct.adapter* %30)
  br label %74

32:                                               ; preds = %11
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %35 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @rtw_lps_change_dtim_hdl(%struct.adapter* %33, i32 %36)
  br label %74

38:                                               ; preds = %11
  %39 = load %struct.adapter*, %struct.adapter** %4, align 8
  %40 = call i32 @rtw_chk_hi_queue_hdl(%struct.adapter* %39)
  br label %74

41:                                               ; preds = %11
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = call i32 @rtw_reset_securitypriv(%struct.adapter* %42)
  br label %74

44:                                               ; preds = %11
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = call i32 @rtw_free_assoc_resources(%struct.adapter* %45, i32 1)
  br label %74

47:                                               ; preds = %11
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load i32, i32* @HW_VAR_C2H_HANDLE, align 4
  %50 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %51 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %54 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @rtw_hal_set_hwreg_with_buf(%struct.adapter* %48, i32 %49, i64 %52, i64 %55)
  br label %74

57:                                               ; preds = %11
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %60 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.sta_info*
  %63 = call i32 @rtw_dm_ra_mask_hdl(%struct.adapter* %58, %struct.sta_info* %62)
  br label %74

64:                                               ; preds = %11
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %67 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %70 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @rtw_btinfo_hdl(%struct.adapter* %65, i64 %68, i64 %71)
  br label %74

73:                                               ; preds = %11
  br label %74

74:                                               ; preds = %73, %64, %57, %47, %44, %41, %38, %32, %29, %23, %20, %17
  %75 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %76 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %81 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %6, align 8
  %86 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @kfree(i64 %87)
  br label %89

89:                                               ; preds = %84, %79, %74
  %90 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %9
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @dynamic_chk_wk_hdl(%struct.adapter*) #1

declare dso_local i32 @rtw_ps_processor(%struct.adapter*) #1

declare dso_local i32 @lps_ctrl_wk_hdl(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_dm_in_lps_hdl(%struct.adapter*) #1

declare dso_local i32 @rtw_lps_change_dtim_hdl(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_chk_hi_queue_hdl(%struct.adapter*) #1

declare dso_local i32 @rtw_reset_securitypriv(%struct.adapter*) #1

declare dso_local i32 @rtw_free_assoc_resources(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg_with_buf(%struct.adapter*, i32, i64, i64) #1

declare dso_local i32 @rtw_dm_ra_mask_hdl(%struct.adapter*, %struct.sta_info*) #1

declare dso_local i32 @rtw_btinfo_hdl(%struct.adapter*, i64, i64) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
