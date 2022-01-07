; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_read_rf_reg_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_read_rf_reg_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, i64 }
%struct._adapter = type { i32 }
%struct.rf_reg_param = type { i32, i64, i64 }

@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i64 0, align 8
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_read_rf_reg_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.rf_reg_param*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %9 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %10 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct._adapter*
  store %struct._adapter* %12, %struct._adapter** %4, align 8
  %13 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %14 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QUERY_OID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %19, i32* %2, align 4
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %22 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %27, i32* %2, align 4
  br label %59

28:                                               ; preds = %20
  %29 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %30 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.rf_reg_param*
  store %struct.rf_reg_param* %32, %struct.rf_reg_param** %5, align 8
  %33 = load %struct.rf_reg_param*, %struct.rf_reg_param** %5, align 8
  %34 = getelementptr inbounds %struct.rf_reg_param, %struct.rf_reg_param* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @RF_PATH_B, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %40, i32* %2, align 4
  br label %59

41:                                               ; preds = %28
  %42 = load %struct.rf_reg_param*, %struct.rf_reg_param** %5, align 8
  %43 = getelementptr inbounds %struct.rf_reg_param, %struct.rf_reg_param* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  %45 = load %struct._adapter*, %struct._adapter** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @r8712_rf_reg_read(%struct._adapter* %45, i64 %46, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.rf_reg_param*, %struct.rf_reg_param** %5, align 8
  %51 = getelementptr inbounds %struct.rf_reg_param, %struct.rf_reg_param* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %53 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %56 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %41, %39, %26, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @r8712_rf_reg_read(%struct._adapter*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
