; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_complete_target_discovered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_pn544.c_pn544_hci_complete_target_discovered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.nfc_target = type { i32, i32, i32*, i32, i64 }
%struct.sk_buff = type { i32, i32* }

@PN544_RF_READER_NFCIP1_INITIATOR_GATE = common dso_local global i64 0, align 8
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@PN544_HCI_CMD_CONTINUE_ACTIVATION = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFC_HCI_RF_READER_A_GATE = common dso_local global i64 0, align 8
@PN544_RF_READER_CMD_ACTIVATE_NEXT = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@PN544_RF_READER_F_GATE = common dso_local global i64 0, align 8
@PN544_FELICA_ID = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@PN544_RF_READER_A_CMD_CONTINUE_ACTIVATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i64, %struct.nfc_target*)* @pn544_hci_complete_target_discovered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_complete_target_discovered(%struct.nfc_hci_dev* %0, i64 %1, %struct.nfc_target* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nfc_target* %2, %struct.nfc_target** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @PN544_RF_READER_NFCIP1_INITIATOR_GATE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %4, align 4
  br label %166

15:                                               ; preds = %3
  %16 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %17 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %24 = load i64, i64* @PN544_RF_READER_NFCIP1_INITIATOR_GATE, align 8
  %25 = load i32, i32* @PN544_HCI_CMD_CONTINUE_ACTIVATION, align 4
  %26 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %23, i64 %24, i32 %25, i32* null, i32 0, i32* null)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %166

31:                                               ; preds = %22
  %32 = load i64, i64* @PN544_RF_READER_NFCIP1_INITIATOR_GATE, align 8
  %33 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %34 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  br label %164

35:                                               ; preds = %15
  %36 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %37 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %35
  %43 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %44 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %49 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 7
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %54 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 10
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EPROTO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %166

60:                                               ; preds = %52, %47, %42
  %61 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %62 = load i64, i64* @NFC_HCI_RF_READER_A_GATE, align 8
  %63 = load i32, i32* @PN544_RF_READER_CMD_ACTIVATE_NEXT, align 4
  %64 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %65 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %68 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %61, i64 %62, i32 %63, i32* %66, i32 %69, i32* null)
  store i32 %70, i32* %9, align 4
  br label %163

71:                                               ; preds = %35
  %72 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %73 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %143

78:                                               ; preds = %71
  %79 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %80 = load i64, i64* @PN544_RF_READER_F_GATE, align 8
  %81 = load i32, i32* @PN544_FELICA_ID, align 4
  %82 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %79, i64 %80, i32 %81, %struct.sk_buff** %8)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %166

87:                                               ; preds = %78
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 8
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = call i32 @kfree_skb(%struct.sk_buff* %93)
  %95 = load i32, i32* @EPROTO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %166

97:                                               ; preds = %87
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %129

104:                                              ; preds = %97
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 254
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = call i32 @kfree_skb(%struct.sk_buff* %112)
  %114 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %115 = load i64, i64* @PN544_RF_READER_NFCIP1_INITIATOR_GATE, align 8
  %116 = load i32, i32* @PN544_HCI_CMD_CONTINUE_ACTIVATION, align 4
  %117 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %114, i64 %115, i32 %116, i32* null, i32 0, i32* null)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %4, align 4
  br label %166

122:                                              ; preds = %111
  %123 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %124 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %125 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i64, i64* @PN544_RF_READER_NFCIP1_INITIATOR_GATE, align 8
  %127 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %128 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %127, i32 0, i32 4
  store i64 %126, i64* %128, align 8
  br label %142

129:                                              ; preds = %104, %97
  %130 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %131 = load i64, i64* @PN544_RF_READER_F_GATE, align 8
  %132 = load i32, i32* @PN544_RF_READER_CMD_ACTIVATE_NEXT, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %130, i64 %131, i32 %132, i32* %135, i32 %138, i32* null)
  store i32 %139, i32* %9, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = call i32 @kfree_skb(%struct.sk_buff* %140)
  br label %142

142:                                              ; preds = %129, %122
  br label %162

143:                                              ; preds = %71
  %144 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %145 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %152 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 17411
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %157 = load i64, i64* @NFC_HCI_RF_READER_A_GATE, align 8
  %158 = load i32, i32* @PN544_RF_READER_A_CMD_CONTINUE_ACTIVATION, align 4
  %159 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %156, i64 %157, i32 %158, i32* null, i32 0, i32* null)
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %143
  br label %162

162:                                              ; preds = %161, %142
  br label %163

163:                                              ; preds = %162, %60
  br label %164

164:                                              ; preds = %163, %31
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %120, %92, %85, %57, %29, %13
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i64, i32, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
