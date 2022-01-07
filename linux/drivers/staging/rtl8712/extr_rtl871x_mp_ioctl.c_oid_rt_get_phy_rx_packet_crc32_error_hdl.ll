; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_get_phy_rx_packet_crc32_error_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_oid_rt_get_phy_rx_packet_crc32_error_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, i64 }
%struct._adapter = type { i32 }

@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_INVALID_LENGTH = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_get_phy_rx_packet_crc32_error_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %5 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %6 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct._adapter*
  store %struct._adapter* %8, %struct._adapter** %4, align 8
  %9 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %10 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QUERY_OID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %18 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @RNDIS_STATUS_INVALID_LENGTH, align 4
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %16
  %25 = load %struct._adapter*, %struct._adapter** %4, align 8
  %26 = call i32 @r8712_GetPhyRxPktCRC32Error(%struct._adapter* %25)
  %27 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %28 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32 %26, i32* %30, align 4
  %31 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %32 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %35 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %24, %22, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @r8712_GetPhyRxPktCRC32Error(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
