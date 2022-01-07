; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_cmd_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_cmd_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.cmd_obj = type { i64, i64 }
%struct.drvextra_cmd_parm = type { i64 }

@_Set_Drv_Extra_CMD_ = common dso_local global i64 0, align 8
@POWER_SAVING_CTRL_WK_CID = common dso_local global i64 0, align 8
@_SetChannelPlan_CMD_ = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_priv*, %struct.cmd_obj*)* @rtw_cmd_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_cmd_filter(%struct.cmd_priv* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd_priv*, align 8
  %5 = alloca %struct.cmd_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drvextra_cmd_parm*, align 8
  store %struct.cmd_priv* %0, %struct.cmd_priv** %4, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %9 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  %16 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %17 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %15
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %25 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @_Set_Drv_Extra_CMD_, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %31 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %33, %struct.drvextra_cmd_parm** %7, align 8
  %34 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %7, align 8
  %35 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @POWER_SAVING_CTRL_WK_CID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %29
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %15, %2
  %43 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %44 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @_SetChannelPlan_CMD_, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %51 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %49
  %60 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %61 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* @_FAIL, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
