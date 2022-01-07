; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_alloc_lc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_alloc_lc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfcmrvl_private = type { i32 }
%struct.nci_data_hdr = type { i64, i64, i32 }

@NCI_DATA_HDR_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no memory for data\0A\00", align 1
@NCI_CORE_LC_CONNID_PROP_FW_DL = common dso_local global i32 0, align 4
@NCI_MT_DATA_PKT = common dso_local global i32 0, align 4
@NCI_PBF_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfcmrvl_private*, i64)* @alloc_lc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @alloc_lc_skb(%struct.nfcmrvl_private* %0, i64 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nfcmrvl_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nci_data_hdr*, align 8
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %9 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sk_buff* @nci_skb_alloc(i32 %10, i64 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %23 = call %struct.nci_data_hdr* @skb_put(%struct.sk_buff* %21, i64 %22)
  store %struct.nci_data_hdr* %23, %struct.nci_data_hdr** %7, align 8
  %24 = load i32, i32* @NCI_CORE_LC_CONNID_PROP_FW_DL, align 4
  %25 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.nci_data_hdr, %struct.nci_data_hdr* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.nci_data_hdr, %struct.nci_data_hdr* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.nci_data_hdr, %struct.nci_data_hdr* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %7, align 8
  %33 = bitcast %struct.nci_data_hdr* %32 to i32*
  %34 = load i32, i32* @NCI_MT_DATA_PKT, align 4
  %35 = call i32 @nci_mt_set(i32* %33, i32 %34)
  %36 = load %struct.nci_data_hdr*, %struct.nci_data_hdr** %7, align 8
  %37 = bitcast %struct.nci_data_hdr* %36 to i32*
  %38 = load i32, i32* @NCI_PBF_LAST, align 4
  %39 = call i32 @nci_pbf_set(i32* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %3, align 8
  br label %41

41:                                               ; preds = %20, %18
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %42
}

declare dso_local %struct.sk_buff* @nci_skb_alloc(i32, i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.nci_data_hdr* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @nci_mt_set(i32*, i32) #1

declare dso_local i32 @nci_pbf_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
