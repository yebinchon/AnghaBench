; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_firmware.c_nxp_nci_fw_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nxp_nci_info = type { %struct.nxp_nci_fw_info }
%struct.nxp_nci_fw_info = type { i32, i64, i32, i32 }

@EBADMSG = common dso_local global i32 0, align 4
@NXP_NCI_FW_HDR_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nxp_nci_fw_recv_frame(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nxp_nci_info*, align 8
  %6 = alloca %struct.nxp_nci_fw_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %8 = call %struct.nxp_nci_info* @nci_get_drvdata(%struct.nci_dev* %7)
  store %struct.nxp_nci_info* %8, %struct.nxp_nci_info** %5, align 8
  %9 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %10 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %9, i32 0, i32 0
  store %struct.nxp_nci_fw_info* %10, %struct.nxp_nci_fw_info** %6, align 8
  %11 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %12 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %11, i32 0, i32 3
  %13 = call i32 @complete(i32* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @nxp_nci_fw_check_crc(%struct.sk_buff* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* @EBADMSG, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %24 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  br label %34

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @NXP_NCI_FW_HDR_LEN, align 4
  %28 = call i64 @skb_pull(%struct.sk_buff* %26, i32 %27)
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nxp_nci_fw_read_status(i32 %30)
  %32 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %33 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %25, %20
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  br label %42

37:                                               ; preds = %2
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  %40 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %41 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %44 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.nxp_nci_fw_info*, %struct.nxp_nci_fw_info** %6, align 8
  %49 = getelementptr inbounds %struct.nxp_nci_fw_info, %struct.nxp_nci_fw_info* %48, i32 0, i32 0
  %50 = call i32 @schedule_work(i32* %49)
  br label %51

51:                                               ; preds = %47, %42
  ret void
}

declare dso_local %struct.nxp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @nxp_nci_fw_check_crc(%struct.sk_buff*) #1

declare dso_local i32 @nxp_nci_fw_read_status(i32) #1

declare dso_local i64 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
