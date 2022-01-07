; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_im_transceive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_im_transceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.nfc_target = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.microread_info = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"data exchange to gate 0x%x\0A\00", align 1
@MICROREAD_GATE_ID_P2P_INITIATOR = common dso_local global i32 0, align 4
@MICROREAD_EVT_P2P_INITIATOR_EXCHANGE_TO_RF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Abort im_transceive to invalid gate 0x%x\0A\00", align 1
@MICROREAD_CB_TYPE_READER_ALL = common dso_local global i32 0, align 4
@MICROREAD_CMD_MREAD_EXCHANGE = common dso_local global i32 0, align 4
@microread_im_transceive_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)* @microread_im_transceive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microread_im_transceive(%struct.nfc_hci_dev* %0, %struct.nfc_target* %1, %struct.sk_buff* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_hci_dev*, align 8
  %8 = alloca %struct.nfc_target*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.microread_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %7, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %16 = call %struct.microread_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %15)
  store %struct.microread_info* %16, %struct.microread_info** %12, align 8
  %17 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %18 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %22 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MICROREAD_GATE_ID_P2P_INITIATOR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %5
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call i64 @skb_push(%struct.sk_buff* %27, i32 1)
  %29 = inttoptr i64 %28 to i32*
  store i32 0, i32* %29, align 4
  %30 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %31 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %32 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MICROREAD_EVT_P2P_INITIATOR_EXCHANGE_TO_RF, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %30, i32 %33, i32 %34, i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %101

42:                                               ; preds = %5
  %43 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %44 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %68 [
    i32 132, label %46
    i32 131, label %47
    i32 130, label %48
    i32 129, label %49
    i32 128, label %67
  ]

46:                                               ; preds = %42
  store i32 203, i32* %13, align 4
  br label %73

47:                                               ; preds = %42
  store i32 203, i32* %13, align 4
  br label %73

48:                                               ; preds = %42
  store i32 203, i32* %13, align 4
  br label %73

49:                                               ; preds = %42
  store i32 27, i32* %13, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @crc_ccitt(i32 65535, i32 %52, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = xor i32 %57, -1
  store i32 %58, i32* %14, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load i32, i32* %14, align 4
  %61 = and i32 %60, 255
  %62 = call i32 @skb_put_u8(%struct.sk_buff* %59, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = ashr i32 %64, 8
  %66 = call i32 @skb_put_u8(%struct.sk_buff* %63, i32 %65)
  br label %73

67:                                               ; preds = %42
  store i32 219, i32* %13, align 4
  br label %73

68:                                               ; preds = %42
  %69 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %70 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 1, i32* %6, align 4
  br label %101

73:                                               ; preds = %67, %49, %48, %47, %46
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = call i64 @skb_push(%struct.sk_buff* %75, i32 1)
  %77 = inttoptr i64 %76 to i32*
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @MICROREAD_CB_TYPE_READER_ALL, align 4
  %79 = load %struct.microread_info*, %struct.microread_info** %12, align 8
  %80 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.microread_info*, %struct.microread_info** %12, align 8
  %83 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load %struct.microread_info*, %struct.microread_info** %12, align 8
  %86 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %7, align 8
  %88 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %89 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MICROREAD_CMD_MREAD_EXCHANGE, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @microread_im_transceive_cb, align 4
  %99 = load %struct.microread_info*, %struct.microread_info** %12, align 8
  %100 = call i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev* %87, i32 %90, i32 %91, i32 %94, i32 %97, i32 %98, %struct.microread_info* %99)
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %73, %68, %26
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.microread_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @crc_ccitt(i32, i32, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_hci_send_cmd_async(%struct.nfc_hci_dev*, i32, i32, i32, i32, i32, %struct.microread_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
