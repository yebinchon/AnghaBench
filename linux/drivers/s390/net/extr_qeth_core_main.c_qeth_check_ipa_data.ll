; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_check_ipa_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_check_ipa_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.qeth_card*, %struct.qeth_ipa_cmd*)* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chkipad\00", align 1
@IPA_CMD_SETCCID = common dso_local global i32 0, align 4
@IPA_CMD_DELCCID = common dso_local global i32 0, align 4
@IPA_CMD_SET_DIAG_ASS = common dso_local global i32 0, align 4
@IPA_RC_VEPA_TO_VEB_TRANSITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"Interface %s is down because the adjacent port is no longer in reflective relay mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"The link for interface %s on CHPID 0x%X failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"The link for %s on CHPID 0x%X has been restored\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"irla\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"urla\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Received data is IPA but not a reply!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_ipa_cmd* (%struct.qeth_card*, %struct.qeth_ipa_cmd*)* @qeth_check_ipa_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_ipa_cmd* @qeth_check_ipa_data(%struct.qeth_card* %0, %struct.qeth_ipa_cmd* %1) #0 {
  %3 = alloca %struct.qeth_ipa_cmd*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_ipa_cmd* %1, %struct.qeth_ipa_cmd** %5, align 8
  %6 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %7 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %6, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %9 = call i64 @IS_IPA_REPLY(%struct.qeth_ipa_cmd* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %2
  %12 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IPA_CMD_SETCCID, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IPA_CMD_DELCCID, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %18
  %26 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 134
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IPA_CMD_SET_DIAG_ASS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %40 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = call i32 @qeth_issue_ipa_msg(%struct.qeth_ipa_cmd* %39, i32 %43, %struct.qeth_card* %44)
  br label %46

46:                                               ; preds = %38, %31, %25, %18, %11
  %47 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  store %struct.qeth_ipa_cmd* %47, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

48:                                               ; preds = %2
  %49 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %140 [
    i32 129, label %53
    i32 130, label %95
    i32 132, label %119
    i32 131, label %119
    i32 135, label %119
    i32 134, label %132
    i32 133, label %134
    i32 128, label %137
  ]

53:                                               ; preds = %48
  %54 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IPA_RC_VEPA_TO_VEB_TRANSITION, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %66 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %65)
  %67 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 4
  %70 = call i32 @schedule_work(i32* %69)
  br label %94

71:                                               ; preds = %53
  %72 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %73 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %77 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %76)
  %78 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %79 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %81)
  %83 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %84 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %89 = call i32 @qeth_issue_ipa_msg(%struct.qeth_ipa_cmd* %83, i32 %87, %struct.qeth_card* %88)
  %90 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @netif_carrier_off(i32 %92)
  br label %94

94:                                               ; preds = %71, %60
  store %struct.qeth_ipa_cmd* null, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

95:                                               ; preds = %48
  %96 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %97 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %101 = call i32 @QETH_CARD_IFNAME(%struct.qeth_card* %100)
  %102 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_info(i32* %99, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %105)
  %107 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %108 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %95
  %113 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %114 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 2, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %95
  %117 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %118 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %117)
  store %struct.qeth_ipa_cmd* null, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

119:                                              ; preds = %48, %48, %48
  %120 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %121 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32 (%struct.qeth_card*, %struct.qeth_ipa_cmd*)*, i32 (%struct.qeth_card*, %struct.qeth_ipa_cmd*)** %123, align 8
  %125 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %126 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  %127 = call i32 %124(%struct.qeth_card* %125, %struct.qeth_ipa_cmd* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  store %struct.qeth_ipa_cmd* %130, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

131:                                              ; preds = %119
  store %struct.qeth_ipa_cmd* null, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

132:                                              ; preds = %48
  %133 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  store %struct.qeth_ipa_cmd* %133, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

134:                                              ; preds = %48
  %135 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %136 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %135, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.qeth_ipa_cmd* null, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

137:                                              ; preds = %48
  %138 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %139 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %138, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store %struct.qeth_ipa_cmd* null, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

140:                                              ; preds = %48
  %141 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %142 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %5, align 8
  store %struct.qeth_ipa_cmd* %142, %struct.qeth_ipa_cmd** %3, align 8
  br label %143

143:                                              ; preds = %140, %137, %134, %132, %131, %129, %116, %94, %46
  %144 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %3, align 8
  ret %struct.qeth_ipa_cmd* %144
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @IS_IPA_REPLY(%struct.qeth_ipa_cmd*) #1

declare dso_local i32 @qeth_issue_ipa_msg(%struct.qeth_ipa_cmd*, i32, %struct.qeth_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @QETH_CARD_IFNAME(%struct.qeth_card*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
