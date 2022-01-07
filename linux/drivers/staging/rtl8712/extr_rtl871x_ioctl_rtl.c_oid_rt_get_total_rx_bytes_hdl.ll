; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_get_total_rx_bytes_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_get_total_rx_bytes_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, %struct._adapter* }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_get_total_rx_bytes_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %5 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %6 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %5, i32 0, i32 4
  %7 = load %struct._adapter*, %struct._adapter** %6, align 8
  store %struct._adapter* %7, %struct._adapter** %4, align 8
  %8 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %9 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QUERY_OID, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %17 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 4
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct._adapter*, %struct._adapter** %4, align 8
  %23 = getelementptr inbounds %struct._adapter, %struct._adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %27 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32 %25, i32* %29, align 4
  %30 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %31 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %34 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32 %32, i32* %35, align 4
  br label %38

36:                                               ; preds = %15
  %37 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %21
  %39 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
