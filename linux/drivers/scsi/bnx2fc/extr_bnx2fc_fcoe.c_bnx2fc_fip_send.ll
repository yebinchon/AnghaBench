; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_fip_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_fip_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.fip_header = type { i64, i32 }
%struct.ethhdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@FIP_OP_CTRL = common dso_local global i64 0, align 8
@FIP_SC_SOL = common dso_local global i64 0, align 8
@bnx2fc_log_fka = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Sending FKA from %pM to %pM.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.sk_buff*)* @bnx2fc_fip_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2fc_fip_send(%struct.fcoe_ctlr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fip_header*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = mul nsw i32 2, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %12, i64 %15
  %17 = getelementptr i8, i8* %16, i64 2
  %18 = bitcast i8* %17 to %struct.fip_header*
  store %struct.fip_header* %18, %struct.fip_header** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i64 @skb_mac_header(%struct.sk_buff* %19)
  %21 = inttoptr i64 %20 to %struct.ethhdr*
  store %struct.ethhdr* %21, %struct.ethhdr** %6, align 8
  %22 = load %struct.fip_header*, %struct.fip_header** %5, align 8
  %23 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ntohs(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.fip_header*, %struct.fip_header** %5, align 8
  %27 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @FIP_OP_CTRL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @FIP_SC_SOL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i64, i64* @bnx2fc_log_fka, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %41 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %44 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BNX2FC_MISC_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %36, %32, %2
  %48 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %49 = call %struct.TYPE_2__* @bnx2fc_from_ctlr(%struct.fcoe_ctlr* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @dev_queue_xmit(%struct.sk_buff* %54)
  ret void
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @BNX2FC_MISC_DBG(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @bnx2fc_from_ctlr(%struct.fcoe_ctlr*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
