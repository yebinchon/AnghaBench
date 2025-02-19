; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_setadapterparms_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_query_setadapterparms_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"quyadpcb\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"lnk %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_query_setadapterparms_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_query_setadapterparms_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %10, %struct.qeth_ipa_cmd** %8, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %12 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %11, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %14 = call i64 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %21 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 127
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %19
  %30 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %31 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %41 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %40, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %29, %19
  %47 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %48 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %46, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i64 @qeth_setadpparms_inspect_rc(%struct.qeth_ipa_cmd*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
