; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_rx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rx_ring = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32, i32, i32, i32 }

@IB_MAC_IOCB_RSP_V = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_VLAN_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_HV = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_DS = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_DL = common dso_local global i32 0, align 4
@IB_MAC_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*)* @ql_process_mac_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ql_process_mac_rx_intr(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2) #0 {
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.rx_ring*, align 8
  %6 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %5, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %6, align 8
  %9 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %10 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le32_to_cpu(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %14 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IB_MAC_IOCB_RSP_V, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %30 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load i32, i32* @IB_MAC_IOCB_RSP_VLAN_MASK, align 4
  %34 = and i32 %32, %33
  br label %36

35:                                               ; preds = %19, %3
  br label %36

36:                                               ; preds = %35, %28
  %37 = phi i32 [ %34, %28 ], [ 65535, %35 ]
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %39 = call i32 @QL_DUMP_IB_MAC_RSP(%struct.ib_mac_iocb_rsp* %38)
  %40 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %41 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IB_MAC_IOCB_RSP_HV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %48 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %49 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ql_process_mac_split_rx_intr(%struct.ql_adapter* %47, %struct.rx_ring* %48, %struct.ib_mac_iocb_rsp* %49, i32 %50)
  br label %117

52:                                               ; preds = %36
  %53 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %54 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IB_MAC_IOCB_RSP_DS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %61 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %62 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ql_process_mac_rx_skb(%struct.ql_adapter* %60, %struct.rx_ring* %61, %struct.ib_mac_iocb_rsp* %62, i64 %63, i32 %64)
  br label %116

66:                                               ; preds = %52
  %67 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %68 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IB_MAC_IOCB_RSP_DL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %75 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IB_MAC_CSUM_ERR_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %73
  %81 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %82 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IB_MAC_IOCB_RSP_T, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %89 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %90 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @ql_process_mac_rx_gro_page(%struct.ql_adapter* %88, %struct.rx_ring* %89, %struct.ib_mac_iocb_rsp* %90, i64 %91, i32 %92)
  br label %115

94:                                               ; preds = %80, %73, %66
  %95 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %96 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IB_MAC_IOCB_RSP_DL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %103 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %104 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ql_process_mac_rx_page(%struct.ql_adapter* %102, %struct.rx_ring* %103, %struct.ib_mac_iocb_rsp* %104, i64 %105, i32 %106)
  br label %114

108:                                              ; preds = %94
  %109 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %110 = load %struct.rx_ring*, %struct.rx_ring** %5, align 8
  %111 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @ql_process_mac_split_rx_intr(%struct.ql_adapter* %109, %struct.rx_ring* %110, %struct.ib_mac_iocb_rsp* %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %101
  br label %115

115:                                              ; preds = %114, %87
  br label %116

116:                                              ; preds = %115, %59
  br label %117

117:                                              ; preds = %116, %46
  %118 = load i64, i64* %7, align 8
  ret i64 %118
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @QL_DUMP_IB_MAC_RSP(%struct.ib_mac_iocb_rsp*) #1

declare dso_local i32 @ql_process_mac_split_rx_intr(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i32) #1

declare dso_local i32 @ql_process_mac_rx_skb(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32) #1

declare dso_local i32 @ql_process_mac_rx_gro_page(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32) #1

declare dso_local i32 @ql_process_mac_rx_page(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
