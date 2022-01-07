; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_set_channel_direct_call_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_set_channel_direct_call_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i64, i64 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_set_channel_direct_call_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %6 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %7 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct._adapter*
  store %struct._adapter* %9, %struct._adapter** %4, align 8
  %10 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %11 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SET_OID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %19 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %17
  %26 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %27 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load %struct._adapter*, %struct._adapter** %4, align 8
  %38 = getelementptr inbounds %struct._adapter, %struct._adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct._adapter*, %struct._adapter** %4, align 8
  %41 = call i32 @r8712_SetChannel(%struct._adapter* %40)
  %42 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %35, %33, %23, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @r8712_SetChannel(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
