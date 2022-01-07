; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_reset_rx_packet_received_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_reset_rx_packet_received_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i64 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SET_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_reset_rx_packet_received_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %6 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %8 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct._adapter*
  store %struct._adapter* %10, %struct._adapter** %5, align 8
  %11 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %12 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SET_OID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %20 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct._adapter*, %struct._adapter** %5, align 8
  %26 = getelementptr inbounds %struct._adapter, %struct._adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct._adapter*, %struct._adapter** %5, align 8
  %29 = getelementptr inbounds %struct._adapter, %struct._adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
