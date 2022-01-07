; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_load_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_core.c_st21nfca_hci_load_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.nfc_hci_dev = type { i64*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32, i64* }
%struct.st21nfca_pipe_info = type { i64, i64, i32 }

@ST21NFCA_DM_GETINFO_PIPE_LIST = common dso_local global i64 0, align 8
@NFC_HCI_TERMINAL_HOST_ID = common dso_local global i64 0, align 8
@ST21NFCA_DM_GETINFO_PIPE_INFO = common dso_local global i64 0, align 8
@NFC_HCI_HOST_CONTROLLER_ID = common dso_local global i32 0, align 4
@ST21NFCA_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@ST21NFCA_DEVICE_MGNT_PIPE = common dso_local global i32 0, align 4
@ST21NFCA_DM_GETINFO = common dso_local global i32 0, align 4
@ST21NFCA_APDU_READER_GATE = common dso_local global i64 0, align 8
@NFC_HCI_UICC_HOST_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unexpected apdu_reader pipe on host %x\0A\00", align 1
@st21nfca_gates = common dso_local global %struct.TYPE_9__* null, align 8
@NFC_HCI_LINK_MGMT_GATE = common dso_local global i32 0, align 4
@NFC_HCI_LINK_MGMT_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*)* @st21nfca_hci_load_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_load_session(%struct.nfc_hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.st21nfca_pipe_info*, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca [3 x i64], align 16
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %3, align 8
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %13 = load i64, i64* @ST21NFCA_DM_GETINFO_PIPE_LIST, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 1
  %15 = load i64, i64* @NFC_HCI_TERMINAL_HOST_ID, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %17 = load i64, i64* @ST21NFCA_DM_GETINFO_PIPE_INFO, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 1
  %19 = load i64, i64* @NFC_HCI_TERMINAL_HOST_ID, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %22 = load i32, i32* @NFC_HCI_HOST_CONTROLLER_ID, align 4
  %23 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %24 = load i32, i32* @ST21NFCA_DEVICE_MGNT_PIPE, align 4
  %25 = call i32 @nfc_hci_connect_gate(%struct.nfc_hci_dev* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %193

30:                                               ; preds = %1
  %31 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %32 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %33 = load i32, i32* @ST21NFCA_DM_GETINFO, align 4
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %35 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %31, i32 %32, i32 %33, i64* %34, i32 16, %struct.sk_buff** %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %193

40:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %181, %40
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %184

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  store i64 %54, i64* %55, align 16
  %56 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %57 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %58 = load i32, i32* @ST21NFCA_DM_GETINFO, align 4
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %60 = call i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev* %56, i32 %57, i32 %58, i64* %59, i32 24, %struct.sk_buff** %8)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %181

64:                                               ; preds = %47
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = bitcast i64* %67 to %struct.st21nfca_pipe_info*
  store %struct.st21nfca_pipe_info* %68, %struct.st21nfca_pipe_info** %9, align 8
  %69 = load %struct.st21nfca_pipe_info*, %struct.st21nfca_pipe_info** %9, align 8
  %70 = getelementptr inbounds %struct.st21nfca_pipe_info, %struct.st21nfca_pipe_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ST21NFCA_APDU_READER_GATE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = load %struct.st21nfca_pipe_info*, %struct.st21nfca_pipe_info** %9, align 8
  %76 = getelementptr inbounds %struct.st21nfca_pipe_info, %struct.st21nfca_pipe_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NFC_HCI_UICC_HOST_ID, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.st21nfca_pipe_info*, %struct.st21nfca_pipe_info** %9, align 8
  %82 = getelementptr inbounds %struct.st21nfca_pipe_info, %struct.st21nfca_pipe_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %181

87:                                               ; preds = %74, %64
  store i32 3, i32* %5, align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** @st21nfca_gates, align 8
  %91 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @st21nfca_gates, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.st21nfca_pipe_info*, %struct.st21nfca_pipe_info** %9, align 8
  %101 = getelementptr inbounds %struct.st21nfca_pipe_info, %struct.st21nfca_pipe_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br label %104

104:                                              ; preds = %93, %88
  %105 = phi i1 [ false, %88 ], [ %103, %93 ]
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %88

110:                                              ; preds = %104
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @st21nfca_gates, align 8
  %113 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %112)
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %178

115:                                              ; preds = %110
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @st21nfca_gates, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.st21nfca_pipe_info*, %struct.st21nfca_pipe_info** %9, align 8
  %123 = getelementptr inbounds %struct.st21nfca_pipe_info, %struct.st21nfca_pipe_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %178

126:                                              ; preds = %115
  %127 = load %struct.st21nfca_pipe_info*, %struct.st21nfca_pipe_info** %9, align 8
  %128 = getelementptr inbounds %struct.st21nfca_pipe_info, %struct.st21nfca_pipe_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @ST21NFCA_DM_IS_PIPE_OPEN(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %178

132:                                              ; preds = %126
  %133 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %134 = load i64, i64* %133, align 16
  %135 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %136 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i64 %134, i64* %142, align 8
  %143 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %144 = load i64, i64* %143, align 16
  %145 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %146 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @st21nfca_gates, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i64, i64* %147, i64 %153
  store i64 %144, i64* %154, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** @st21nfca_gates, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %162 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %165 = load i64, i64* %164, align 16
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i64 %160, i64* %167, align 8
  %168 = load %struct.st21nfca_pipe_info*, %struct.st21nfca_pipe_info** %9, align 8
  %169 = getelementptr inbounds %struct.st21nfca_pipe_info, %struct.st21nfca_pipe_info* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %172 = getelementptr inbounds %struct.nfc_hci_dev, %struct.nfc_hci_dev* %171, i32 0, i32 1
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %175 = load i64, i64* %174, align 16
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  store i64 %170, i64* %177, align 8
  br label %178

178:                                              ; preds = %132, %126, %115, %110
  %179 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %180 = call i32 @kfree_skb(%struct.sk_buff* %179)
  br label %181

181:                                              ; preds = %178, %80, %63
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %41

184:                                              ; preds = %41
  %185 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %3, align 8
  %186 = load i32, i32* @NFC_HCI_HOST_CONTROLLER_ID, align 4
  %187 = load i32, i32* @NFC_HCI_LINK_MGMT_GATE, align 4
  %188 = load i32, i32* @NFC_HCI_LINK_MGMT_PIPE, align 4
  %189 = call i32 @nfc_hci_connect_gate(%struct.nfc_hci_dev* %185, i32 %186, i32 %187, i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = call i32 @kfree_skb(%struct.sk_buff* %190)
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %184, %38, %28
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @nfc_hci_connect_gate(%struct.nfc_hci_dev*, i32, i32, i32) #1

declare dso_local i32 @nfc_hci_send_cmd(%struct.nfc_hci_dev*, i32, i32, i64*, i32, %struct.sk_buff**) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i64 @ST21NFCA_DM_IS_PIPE_OPEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
