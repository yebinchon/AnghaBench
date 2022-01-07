; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_update_mac_hdr_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_update_mac_hdr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32 }

@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_V = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.ib_mac_iocb_rsp*, i8*, i64*)* @ql_update_mac_hdr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_update_mac_hdr_len(%struct.ql_adapter* %0, %struct.ib_mac_iocb_rsp* %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store %struct.ib_mac_iocb_rsp* %1, %struct.ib_mac_iocb_rsp** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %54

19:                                               ; preds = %4
  %20 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %21 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IB_MAC_IOCB_RSP_V, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %9, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 6
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ETH_P_8021Q, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load i64*, i64** %9, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ETH_P_8021Q, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* @VLAN_HLEN, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %53

47:                                               ; preds = %34, %26
  %48 = load i32, i32* @VLAN_HLEN, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %49
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %47, %40
  br label %54

54:                                               ; preds = %18, %53, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
