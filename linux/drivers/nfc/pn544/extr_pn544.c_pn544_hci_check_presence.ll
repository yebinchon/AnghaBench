; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_check_presence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_check_presence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.nfc_target = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"supported protocol %d\08\00", align 1
@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4
@PN544_RF_READER_CMD_PRESENCE_CHECK = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFC_HCI_RF_READER_A_GATE = common dso_local global i32 0, align 4
@PN544_RF_READER_CMD_ACTIVATE_NEXT = common dso_local global i32 0, align 4
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@PN544_HCI_CMD_ATTREQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, %struct.nfc_target*)* @pn544_hci_check_presence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_check_presence(%struct.nfc_hci_dev* %0, %struct.nfc_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_hci_dev*, align 8
  %5 = alloca %struct.nfc_target*, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %4, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %5, align 8
  %6 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %7 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %11 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  %14 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %20 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %21 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PN544_RF_READER_CMD_PRESENCE_CHECK, align 4
  %24 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %19, i32 %22, i32 %23, i32* null, i32 0, i32* null)
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %27 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %25
  %33 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %34 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 4
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %39 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 7
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %44 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 10
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %91

50:                                               ; preds = %42, %37, %32
  %51 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %52 = load i32, i32* @NFC_HCI_RF_READER_A_GATE, align 4
  %53 = load i32, i32* @PN544_RF_READER_CMD_ACTIVATE_NEXT, align 4
  %54 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %55 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %58 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %51, i32 %52, i32 %53, i32* %56, i32 %59, i32* null)
  store i32 %60, i32* %3, align 4
  br label %91

61:                                               ; preds = %25
  %62 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %63 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  %66 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %91

73:                                               ; preds = %61
  %74 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %75 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %4, align 8
  %82 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %83 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PN544_HCI_CMD_ATTREQUEST, align 4
  %86 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %81, i32 %84, i32 %85, i32* null, i32 0, i32* null)
  store i32 %86, i32* %3, align 4
  br label %91

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %80, %70, %50, %47, %18
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev*, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
