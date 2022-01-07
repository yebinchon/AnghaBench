; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_an_set_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_an_set_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qdio_brinfo_entry_l2 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.net_if_token = type { i32 }
%struct.mac_addr_lnid = type { i32 }

@l2_addr_lnid = common dso_local global i32 0, align 4
@IPA_ADDR_CHANGE_CODE_MACADDR = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i64 0, align 8
@IPA_ADDR_CHANGE_CODE_VLANID = common dso_local global i32 0, align 4
@anev_reg_unreg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @qeth_bridgeport_an_set_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_bridgeport_an_set_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca %struct.qdio_brinfo_entry_l2*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.qeth_card*
  store %struct.qeth_card* %11, %struct.qeth_card** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @l2_addr_lnid, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @WARN_ON_ONCE(i32 1)
  br label %42

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.qdio_brinfo_entry_l2*
  store %struct.qdio_brinfo_entry_l2* %19, %struct.qdio_brinfo_entry_l2** %8, align 8
  %20 = load i32, i32* @IPA_ADDR_CHANGE_CODE_MACADDR, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.qdio_brinfo_entry_l2*, %struct.qdio_brinfo_entry_l2** %8, align 8
  %22 = getelementptr inbounds %struct.qdio_brinfo_entry_l2, %struct.qdio_brinfo_entry_l2* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VLAN_N_VID, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @IPA_ADDR_CHANGE_CODE_VLANID, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %17
  %32 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %33 = load i32, i32* @anev_reg_unreg, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.qdio_brinfo_entry_l2*, %struct.qdio_brinfo_entry_l2** %8, align 8
  %36 = getelementptr inbounds %struct.qdio_brinfo_entry_l2, %struct.qdio_brinfo_entry_l2* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to %struct.net_if_token*
  %38 = load %struct.qdio_brinfo_entry_l2*, %struct.qdio_brinfo_entry_l2** %8, align 8
  %39 = getelementptr inbounds %struct.qdio_brinfo_entry_l2, %struct.qdio_brinfo_entry_l2* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_2__* %39 to %struct.mac_addr_lnid*
  %41 = call i32 @qeth_bridge_emit_host_event(%struct.qeth_card* %32, i32 %33, i32 %34, %struct.net_if_token* %37, %struct.mac_addr_lnid* %40)
  br label %42

42:                                               ; preds = %31, %15
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @qeth_bridge_emit_host_event(%struct.qeth_card*, i32, i32, %struct.net_if_token*, %struct.mac_addr_lnid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
