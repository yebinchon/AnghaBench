; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_query_tx_packet_sent_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_pro_query_tx_packet_sent_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, i64 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_pro_query_tx_packet_sent_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %6 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %8 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct._adapter*
  store %struct._adapter* %10, %struct._adapter** %5, align 8
  %11 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %12 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QUERY_OID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %21 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct._adapter*, %struct._adapter** %5, align 8
  %27 = getelementptr inbounds %struct._adapter, %struct._adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %31 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32 %29, i32* %33, align 4
  %34 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %35 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %38 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32 %36, i32* %39, align 4
  br label %42

40:                                               ; preds = %19
  %41 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %25
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
