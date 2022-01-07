; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_pro_rf_write_registry_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_pro_rf_write_registry_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i64, %struct._adapter* }
%struct._adapter = type { i32 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_rf_write_registry_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %6 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %8 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %7, i32 0, i32 3
  %9 = load %struct._adapter*, %struct._adapter** %8, align 8
  store %struct._adapter* %9, %struct._adapter** %5, align 8
  %10 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %11 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SET_OID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %19 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 24
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct._adapter*, %struct._adapter** %5, align 8
  %25 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %26 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8, i8* %28, align 1
  %30 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %31 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i64*
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @r8712_setrfreg_cmd(%struct._adapter* %24, i8 zeroext %29, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %23
  br label %43

41:                                               ; preds = %17
  %42 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @r8712_setrfreg_cmd(%struct._adapter*, i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
