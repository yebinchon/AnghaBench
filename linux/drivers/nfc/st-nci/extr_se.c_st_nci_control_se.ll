; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_control_se.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_se.c_st_nci_control_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.st_nci_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.sk_buff = type { i32, i64* }

@ST_NCI_SE_COUNT_PIPE_UICC = common dso_local global i32 0, align 4
@ST_NCI_SE_COUNT_PIPE_EMBEDDED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NCI_STATUS_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ST_NCI_SE_TO_HOT_PLUG = common dso_local global i32 0, align 4
@NCI_HCI_ADMIN_GATE = common dso_local global i32 0, align 4
@NCI_HCI_ADMIN_PARAM_HOST_LIST = common dso_local global i32 0, align 4
@NCI_HCI_ANY_OK = common dso_local global i32 0, align 4
@ST_NCI_SE_MODE_ON = common dso_local global i64 0, align 8
@ST_NCI_SE_MODE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, i64, i64)* @st_nci_control_se to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_control_se(%struct.nci_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.st_nci_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %14 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %13)
  store %struct.st_nci_info* %14, %struct.st_nci_info** %8, align 8
  %15 = load i64, i64* %6, align 8
  switch i64 %15, label %36 [
    i64 128, label %16
    i64 129, label %26
  ]

16:                                               ; preds = %3
  %17 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %18 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @ST_NCI_SE_COUNT_PIPE_UICC, align 4
  %22 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @ST_NCI_SE_COUNT_PIPE_EMBEDDED, align 4
  %32 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %152

39:                                               ; preds = %26, %16
  %40 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %41 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = call i32 @reinit_completion(i32* %42)
  %44 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @nci_nfcee_mode_set(%struct.nci_dev* %44, i64 %45, i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @NCI_STATUS_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %152

53:                                               ; preds = %39
  %54 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %55 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i32, i32* @ST_NCI_SE_TO_HOT_PLUG, align 4
  %59 = call i64 @msecs_to_jiffies(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @mod_timer(i32* %56, i64 %60)
  %62 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %63 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %66 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = call i32 @wait_for_completion_interruptible(i32* %67)
  %69 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %70 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %53
  %77 = load %struct.st_nci_info*, %struct.st_nci_info** %8, align 8
  %78 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 @usleep_range(i32 15000, i32 20000)
  br label %86

86:                                               ; preds = %84, %76, %53
  %87 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  %88 = load i32, i32* @NCI_HCI_ADMIN_GATE, align 4
  %89 = load i32, i32* @NCI_HCI_ADMIN_PARAM_HOST_LIST, align 4
  %90 = call i32 @nci_hci_get_param(%struct.nci_dev* %87, i32 %88, i32 %89, %struct.sk_buff** %11)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @NCI_HCI_ANY_OK, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %152

96:                                               ; preds = %86
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %116, %96
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %110, %111
  br label %113

113:                                              ; preds = %103, %97
  %114 = phi i1 [ false, %97 ], [ %112, %103 ]
  br i1 %114, label %115, label %119

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %97

119:                                              ; preds = %113
  %120 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %12, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %128 = call i32 @kfree_skb(%struct.sk_buff* %127)
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @ST_NCI_SE_MODE_ON, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %119
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i64, i64* %6, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %4, align 4
  br label %152

139:                                              ; preds = %132, %119
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* @ST_NCI_SE_MODE_OFF, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %6, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i64, i64* %6, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %4, align 4
  br label %152

150:                                              ; preds = %143, %139
  br label %151

151:                                              ; preds = %150
  store i32 -1, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %147, %136, %94, %51, %36
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @nci_nfcee_mode_set(%struct.nci_dev*, i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @nci_hci_get_param(%struct.nci_dev*, i32, i32, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
