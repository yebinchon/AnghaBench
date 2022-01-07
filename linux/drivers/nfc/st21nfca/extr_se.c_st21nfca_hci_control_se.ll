; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_hci_control_se.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_se.c_st21nfca_hci_control_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.st21nfca_hci_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64* }

@ST21NFCA_SE_MODE_ON = common dso_local global i64 0, align 8
@ST21NFCA_EVT_UICC_ACTIVATE = common dso_local global i64 0, align 8
@ST21NFCA_EVT_UICC_DEACTIVATE = common dso_local global i64 0, align 8
@ST21NFCA_SE_COUNT_PIPE_UICC = common dso_local global i32 0, align 4
@ST21NFCA_EVT_SE_ACTIVATE = common dso_local global i64 0, align 8
@ST21NFCA_EVT_SE_DEACTIVATE = common dso_local global i64 0, align 8
@ST21NFCA_SE_COUNT_PIPE_EMBEDDED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ST21NFCA_DEVICE_MGNT_GATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ST21NFCA_SE_TO_HOT_PLUG = common dso_local global i32 0, align 4
@NFC_HCI_ADMIN_GATE = common dso_local global i32 0, align 4
@NFC_HCI_ADMIN_HOST_LIST = common dso_local global i32 0, align 4
@ST21NFCA_SE_MODE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i64, i64)* @st21nfca_hci_control_se to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_control_se(%struct.nfc_hci_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_hci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.st21nfca_hci_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %15 = call %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev* %14)
  store %struct.st21nfca_hci_info* %15, %struct.st21nfca_hci_info** %8, align 8
  %16 = load i64, i64* %6, align 8
  switch i64 %16, label %51 [
    i64 129, label %17
    i64 128, label %34
  ]

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @ST21NFCA_SE_MODE_ON, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @ST21NFCA_EVT_UICC_ACTIVATE, align 8
  br label %25

23:                                               ; preds = %17
  %24 = load i64, i64* @ST21NFCA_EVT_UICC_DEACTIVATE, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %12, align 8
  %27 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %8, align 8
  %28 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @ST21NFCA_SE_COUNT_PIPE_UICC, align 4
  %31 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %8, align 8
  %32 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  br label %54

34:                                               ; preds = %3
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @ST21NFCA_SE_MODE_ON, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @ST21NFCA_EVT_SE_ACTIVATE, align 8
  br label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @ST21NFCA_EVT_SE_DEACTIVATE, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  store i64 %43, i64* %12, align 8
  %44 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %8, align 8
  %45 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @ST21NFCA_SE_COUNT_PIPE_EMBEDDED, align 4
  %48 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %8, align 8
  %49 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %147

54:                                               ; preds = %42, %25
  %55 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %8, align 8
  %56 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = call i32 @reinit_completion(i32* %57)
  %59 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %60 = load i32, i32* @ST21NFCA_DEVICE_MGNT_GATE, align 4
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @nfc_hci_send_event(%struct.nfc_hci_dev* %59, i32 %60, i64 %61, i32* null, i32 0)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %147

67:                                               ; preds = %54
  %68 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %8, align 8
  %69 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i32, i32* @ST21NFCA_SE_TO_HOT_PLUG, align 4
  %73 = call i64 @msecs_to_jiffies(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @mod_timer(i32* %70, i64 %74)
  %76 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %8, align 8
  %77 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  %79 = load %struct.st21nfca_hci_info*, %struct.st21nfca_hci_info** %8, align 8
  %80 = getelementptr inbounds %struct.st21nfca_hci_info, %struct.st21nfca_hci_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = call i32 @wait_for_completion_interruptible(i32* %81)
  %83 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %5, align 8
  %84 = load i32, i32* @NFC_HCI_ADMIN_GATE, align 4
  %85 = load i32, i32* @NFC_HCI_ADMIN_HOST_LIST, align 4
  %86 = call i32 @nfc_hci_get_param(%struct.nfc_hci_dev* %83, i32 %84, i32 %85, %struct.sk_buff** %11)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %67
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %147

91:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %111, %91
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %105, %106
  br label %108

108:                                              ; preds = %98, %92
  %109 = phi i1 [ false, %92 ], [ %107, %98 ]
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %92

114:                                              ; preds = %108
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %13, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %123 = call i32 @kfree_skb(%struct.sk_buff* %122)
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @ST21NFCA_SE_MODE_ON, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %114
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i64, i64* %6, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %4, align 4
  br label %147

134:                                              ; preds = %127, %114
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* @ST21NFCA_SE_MODE_OFF, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %6, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i64, i64* %6, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %4, align 4
  br label %147

145:                                              ; preds = %138, %134
  br label %146

146:                                              ; preds = %145
  store i32 -1, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %142, %131, %89, %65, %51
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.st21nfca_hci_info* @nfc_hci_get_clientdata(%struct.nfc_hci_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @nfc_hci_send_event(%struct.nfc_hci_dev*, i32, i64, i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @nfc_hci_get_param(%struct.nfc_hci_dev*, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
