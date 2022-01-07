; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridge_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridge_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qeth_sbp_state_change }
%struct.qeth_sbp_state_change = type { i32, i32 }
%struct.qeth_bridge_state_data = type { i32, i32, %struct.qeth_card* }

@.str = private unnamed_addr constant [9 x i8] c"brstchng\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BPsz%04x\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"BPSalloc\00", align 1
@qeth_bridge_state_change_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_ipa_cmd*)* @qeth_bridge_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_bridge_state_change(%struct.qeth_card* %0, %struct.qeth_ipa_cmd* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_ipa_cmd*, align 8
  %5 = alloca %struct.qeth_sbp_state_change*, align 8
  %6 = alloca %struct.qeth_bridge_state_data*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.qeth_ipa_cmd* %1, %struct.qeth_ipa_cmd** %4, align 8
  %8 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.qeth_sbp_state_change* %12, %struct.qeth_sbp_state_change** %5, align 8
  %13 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %14 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %13, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.qeth_sbp_state_change*, %struct.qeth_sbp_state_change** %5, align 8
  %16 = getelementptr inbounds %struct.qeth_sbp_state_change, %struct.qeth_sbp_state_change* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = load %struct.qeth_sbp_state_change*, %struct.qeth_sbp_state_change** %5, align 8
  %23 = getelementptr inbounds %struct.qeth_sbp_state_change, %struct.qeth_sbp_state_change* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %21, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %66

26:                                               ; preds = %2
  %27 = load %struct.qeth_sbp_state_change*, %struct.qeth_sbp_state_change** %5, align 8
  %28 = getelementptr inbounds %struct.qeth_sbp_state_change, %struct.qeth_sbp_state_change* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 16, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.qeth_bridge_state_data* @kzalloc(i32 %36, i32 %37)
  store %struct.qeth_bridge_state_data* %38, %struct.qeth_bridge_state_data** %6, align 8
  %39 = load %struct.qeth_bridge_state_data*, %struct.qeth_bridge_state_data** %6, align 8
  %40 = icmp ne %struct.qeth_bridge_state_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %42, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %66

44:                                               ; preds = %26
  %45 = load %struct.qeth_bridge_state_data*, %struct.qeth_bridge_state_data** %6, align 8
  %46 = getelementptr inbounds %struct.qeth_bridge_state_data, %struct.qeth_bridge_state_data* %45, i32 0, i32 0
  %47 = load i32, i32* @qeth_bridge_state_change_worker, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %50 = load %struct.qeth_bridge_state_data*, %struct.qeth_bridge_state_data** %6, align 8
  %51 = getelementptr inbounds %struct.qeth_bridge_state_data, %struct.qeth_bridge_state_data* %50, i32 0, i32 2
  store %struct.qeth_card* %49, %struct.qeth_card** %51, align 8
  %52 = load %struct.qeth_bridge_state_data*, %struct.qeth_bridge_state_data** %6, align 8
  %53 = getelementptr inbounds %struct.qeth_bridge_state_data, %struct.qeth_bridge_state_data* %52, i32 0, i32 1
  %54 = load %struct.qeth_sbp_state_change*, %struct.qeth_sbp_state_change** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i32* %53, %struct.qeth_sbp_state_change* %54, i32 %58)
  %60 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qeth_bridge_state_data*, %struct.qeth_bridge_state_data** %6, align 8
  %64 = getelementptr inbounds %struct.qeth_bridge_state_data, %struct.qeth_bridge_state_data* %63, i32 0, i32 0
  %65 = call i32 @queue_work(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %44, %41, %20
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local %struct.qeth_bridge_state_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.qeth_sbp_state_change*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
