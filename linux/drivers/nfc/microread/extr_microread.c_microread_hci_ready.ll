; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_hci_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_hci_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }

@MICROREAD_GATE_ID_MREAD_ISO_A = common dso_local global i32 0, align 4
@MICROREAD_CMD_MREAD_SUBSCRIBE = common dso_local global i32 0, align 4
@MICROREAD_GATE_ID_MREAD_ISO_A_3 = common dso_local global i32 0, align 4
@MICROREAD_GATE_ID_MREAD_ISO_B = common dso_local global i32 0, align 4
@MICROREAD_GATE_ID_MREAD_NFC_T1 = common dso_local global i32 0, align 4
@MICROREAD_GATE_ID_MREAD_NFC_T3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*)* @microread_hci_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microread_hci_ready(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 3, i32* %6, align 16
  %7 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %8 = load i32, i32* @MICROREAD_GATE_ID_MREAD_ISO_A, align 4
  %9 = load i32, i32* @MICROREAD_CMD_MREAD_SUBSCRIBE, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %11 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %7, i32 %8, i32 %9, i32* %10, i32 1, i32* null)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %18 = load i32, i32* @MICROREAD_GATE_ID_MREAD_ISO_A_3, align 4
  %19 = load i32, i32* @MICROREAD_CMD_MREAD_SUBSCRIBE, align 4
  %20 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %17, i32 %18, i32 %19, i32* null, i32 0, i32* null)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %58

25:                                               ; preds = %16
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %26, align 16
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 3, i32* %27, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %30 = load i32, i32* @MICROREAD_GATE_ID_MREAD_ISO_B, align 4
  %31 = load i32, i32* @MICROREAD_CMD_MREAD_SUBSCRIBE, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %33 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %29, i32 %30, i32 %31, i32* %32, i32 3, i32* null)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %25
  %39 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %40 = load i32, i32* @MICROREAD_GATE_ID_MREAD_NFC_T1, align 4
  %41 = load i32, i32* @MICROREAD_CMD_MREAD_SUBSCRIBE, align 4
  %42 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %39, i32 %40, i32 %41, i32* null, i32 0, i32* null)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %58

47:                                               ; preds = %38
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 255, i32* %48, align 16
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 255, i32* %49, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %53 = load i32, i32* @MICROREAD_GATE_ID_MREAD_NFC_T3, align 4
  %54 = load i32, i32* @MICROREAD_CMD_MREAD_SUBSCRIBE, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %56 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %52, i32 %53, i32 %54, i32* %55, i32 4, i32* null)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %47, %45, %36, %23, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev*, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
