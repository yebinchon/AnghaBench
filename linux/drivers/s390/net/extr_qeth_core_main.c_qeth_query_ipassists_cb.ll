; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_ipassists_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_ipassists_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"qipasscb\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ipaunsup\00", align 1
@IPA_SETADAPTERPARMS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"IPA_CMD_QIPASSIST on device %x: Unhandled rc=%#x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i64 0, align 8
@QETH_PROT_IPV6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"IPA_CMD_QIPASSIST on device %x: Flawed LIC detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_query_ipassists_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_query_ipassists_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %10 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %9, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %12, %struct.qeth_ipa_cmd** %8, align 8
  %13 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %14 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %37 [
    i32 128, label %17
    i32 129, label %18
    i32 130, label %18
  ]

17:                                               ; preds = %3
  br label %47

18:                                               ; preds = %3, %3
  %19 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %20 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %19, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @IPA_SETADAPTERPARMS, align 4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @IPA_SETADAPTERPARMS, align 4
  %29 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %101

37:                                               ; preds = %3
  %38 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %39 = call i32 @CARD_DEVID(%struct.qeth_card* %38)
  %40 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %101

47:                                               ; preds = %17
  %48 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @QETH_PROT_IPV4, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %100

71:                                               ; preds = %47
  %72 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %73 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @QETH_PROT_IPV6, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %80 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 4
  %87 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %88 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 4
  br label %99

95:                                               ; preds = %71
  %96 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %97 = call i32 @CARD_DEVID(%struct.qeth_card* %96)
  %98 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %78
  br label %100

100:                                              ; preds = %99, %54
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %37, %18
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, ...) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
