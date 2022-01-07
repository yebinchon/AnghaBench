; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_send_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_send_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_nci_info = type { i64, i32, %struct.TYPE_2__*, i32, %struct.nxp_nci_fw_info }
%struct.TYPE_2__ = type { i32 (i32, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.nxp_nci_fw_info = type { i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NXP_NCI_FW_HDR_LEN = common dso_local global i64 0, align 8
@NXP_NCI_FW_CRC_LEN = common dso_local global i64 0, align 8
@NXP_NCI_FW_CHUNK_FLAG = common dso_local global i64 0, align 8
@NXP_NCI_FW_FRAME_LEN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxp_nci_info*)* @nxp_nci_fw_send_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_fw_send_chunk(%struct.nxp_nci_info* %0) #0 {
  %2 = alloca %struct.nxp_nci_info*, align 8
  %3 = alloca %struct.nxp_nci_fw_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nxp_nci_info* %0, %struct.nxp_nci_info** %2, align 8
  %10 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %2, align 8
  %11 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %10, i32 0, i32 4
  store %struct.nxp_nci_fw_info* %11, %struct.nxp_nci_fw_info** %3, align 8
  %12 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %2, align 8
  %13 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %2, align 8
  %16 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sk_buff* @nci_skb_alloc(i32 %14, i64 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %98

25:                                               ; preds = %1
  %26 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %2, align 8
  %27 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NXP_NCI_FW_HDR_LEN, align 8
  %30 = sub i64 %28, %29
  %31 = load i64, i64* @NXP_NCI_FW_CRC_LEN, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %3, align 8
  %34 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %3, align 8
  %37 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %25
  %44 = load i64, i64* @NXP_NCI_FW_CHUNK_FLAG, align 8
  store i64 %44, i64* %4, align 8
  br label %47

45:                                               ; preds = %25
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %7, align 8
  store i64 0, i64* %4, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @NXP_NCI_FW_FRAME_LEN_MASK, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* %4, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i64, i64* @NXP_NCI_FW_HDR_LEN, align 8
  %56 = call i32 @skb_put(%struct.sk_buff* %54, i64 %55)
  %57 = call i32 @put_unaligned_be16(i64 %53, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %3, align 8
  %60 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %3, align 8
  %63 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @skb_put_data(%struct.sk_buff* %58, i64 %65, i64 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @NXP_NCI_FW_HDR_LEN, align 8
  %73 = add i64 %71, %72
  %74 = call i64 @nxp_nci_fw_crc(i32 %70, i64 %73)
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load i64, i64* @NXP_NCI_FW_CRC_LEN, align 8
  %78 = call i32 @skb_put(%struct.sk_buff* %76, i64 %77)
  %79 = call i32 @put_unaligned_be16(i64 %75, i32 %78)
  %80 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %2, align 8
  %81 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %83, align 8
  %85 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %2, align 8
  %86 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 %84(i32 %87, %struct.sk_buff* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %47
  %93 = load i64, i64* %7, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %47
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  br label %98

98:                                               ; preds = %95, %22
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local %struct.sk_buff* @nci_skb_alloc(i32, i64, i32) #1

declare dso_local i32 @put_unaligned_be16(i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i64 @nxp_nci_fw_crc(i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
