; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_start_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_start_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32*, i32, i32 }

@NFC_PROTO_ISO14443_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_ISO14443_B_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_JEWEL_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_FELICA_MASK = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i32 0, align 4
@MICROREAD_GATE_ID_MREAD_ISO_A = common dso_local global i32 0, align 4
@MICROREAD_EVT_MREAD_DISCOVERY_STOP = common dso_local global i32 0, align 4
@MICROREAD_GATE_ID_P2P_TARGET = common dso_local global i32 0, align 4
@MICROREAD_PAR_P2P_TARGET_MODE = common dso_local global i32 0, align 4
@MICROREAD_GATE_ID_P2P_INITIATOR = common dso_local global i32 0, align 4
@MICROREAD_PAR_P2P_INITIATOR_GI = common dso_local global i32 0, align 4
@MICROREAD_PAR_P2P_TARGET_GT = common dso_local global i32 0, align 4
@MICROREAD_EVT_MREAD_DISCOVERY_START_SOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i32, i32)* @microread_start_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microread_start_poll(%struct.nfc_hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NFC_PROTO_ISO14443_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, 4
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NFC_PROTO_ISO14443_B_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NFC_PROTO_MIFARE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NFC_PROTO_JEWEL_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, 2
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @NFC_PROTO_FELICA_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 32
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, 2
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %66
  %74 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %75 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %78 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %77, i32 0, i32 1
  %79 = call i32* @nfc_get_local_general_bytes(i32 %76, i32* %78)
  %80 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %81 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %83 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %73
  %87 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %88 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86, %73
  %92 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %91, %86
  br label %101

101:                                              ; preds = %100, %66
  %102 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %103 = load i32, i32* @MICROREAD_GATE_ID_MREAD_ISO_A, align 4
  %104 = load i32, i32* @MICROREAD_EVT_MREAD_DISCOVERY_STOP, align 4
  %105 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %102, i32 %103, i32 %104, i32* null, i32 0)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %176

110:                                              ; preds = %101
  store i32 255, i32* %10, align 4
  %111 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %112 = load i32, i32* @MICROREAD_GATE_ID_P2P_TARGET, align 4
  %113 = load i32, i32* @MICROREAD_PAR_P2P_TARGET_MODE, align 4
  %114 = call i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %111, i32 %112, i32 %113, i32* %10, i32 1)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %4, align 4
  br label %176

119:                                              ; preds = %110
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %119
  %125 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %126 = load i32, i32* @MICROREAD_GATE_ID_P2P_INITIATOR, align 4
  %127 = load i32, i32* @MICROREAD_PAR_P2P_INITIATOR_GI, align 4
  %128 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %129 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %132 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %125, i32 %126, i32 %127, i32* %130, i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %124
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %4, align 4
  br label %176

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %119
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @NFC_PROTO_NFC_DEP_MASK, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %140
  %146 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %147 = load i32, i32* @MICROREAD_GATE_ID_P2P_TARGET, align 4
  %148 = load i32, i32* @MICROREAD_PAR_P2P_TARGET_GT, align 4
  %149 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %150 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %153 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %146, i32 %147, i32 %148, i32* %151, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %4, align 4
  br label %176

160:                                              ; preds = %145
  store i32 2, i32* %10, align 4
  %161 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %162 = load i32, i32* @MICROREAD_GATE_ID_P2P_TARGET, align 4
  %163 = load i32, i32* @MICROREAD_PAR_P2P_TARGET_MODE, align 4
  %164 = call i32 @nfc_hci_set_param(%struct.nfc_hci_dev* %161, i32 %162, i32 %163, i32* %10, i32 1)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %4, align 4
  br label %176

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %140
  %171 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %172 = load i32, i32* @MICROREAD_GATE_ID_MREAD_ISO_A, align 4
  %173 = load i32, i32* @MICROREAD_EVT_MREAD_DISCOVERY_START_SOME, align 4
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %175 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %171, i32 %172, i32 %173, i32* %174, i32 2)
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %170, %167, %158, %137, %117, %108
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32* @nfc_get_local_general_bytes(i32, i32*) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @nfc_hci_set_param(%struct.nfc_hci_dev*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
