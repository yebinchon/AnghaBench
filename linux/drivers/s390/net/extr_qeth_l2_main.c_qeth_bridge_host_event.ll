; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridge_host_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridge_host_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.qeth_ipacmd_addr_change }
%struct.qeth_ipacmd_addr_change = type { i32, i32 }
%struct.qeth_bridge_host_data = type { i32, i32, %struct.qeth_card* }

@.str = private unnamed_addr constant [9 x i8] c"brhostev\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BPHe%04x\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"BPHalloc\00", align 1
@qeth_bridge_host_event_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_ipa_cmd*)* @qeth_bridge_host_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_bridge_host_event(%struct.qeth_card* %0, %struct.qeth_ipa_cmd* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_ipa_cmd*, align 8
  %5 = alloca %struct.qeth_ipacmd_addr_change*, align 8
  %6 = alloca %struct.qeth_bridge_host_data*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.qeth_ipa_cmd* %1, %struct.qeth_ipa_cmd** %4, align 8
  %8 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.qeth_ipacmd_addr_change* %10, %struct.qeth_ipacmd_addr_change** %5, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %12 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %11, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.qeth_ipacmd_addr_change*, %struct.qeth_ipacmd_addr_change** %5, align 8
  %26 = getelementptr inbounds %struct.qeth_ipacmd_addr_change, %struct.qeth_ipacmd_addr_change* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.qeth_ipacmd_addr_change*, %struct.qeth_ipacmd_addr_change** %5, align 8
  %31 = getelementptr inbounds %struct.qeth_ipacmd_addr_change, %struct.qeth_ipacmd_addr_change* %30, i32 0, i32 0
  store i32 255, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %40

33:                                               ; preds = %18
  %34 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %35 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %34, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %81

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.qeth_ipacmd_addr_change*, %struct.qeth_ipacmd_addr_change** %5, align 8
  %43 = getelementptr inbounds %struct.qeth_ipacmd_addr_change, %struct.qeth_ipacmd_addr_change* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 16, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.qeth_bridge_host_data* @kzalloc(i32 %51, i32 %52)
  store %struct.qeth_bridge_host_data* %53, %struct.qeth_bridge_host_data** %6, align 8
  %54 = load %struct.qeth_bridge_host_data*, %struct.qeth_bridge_host_data** %6, align 8
  %55 = icmp ne %struct.qeth_bridge_host_data* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %58 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %57, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %81

59:                                               ; preds = %41
  %60 = load %struct.qeth_bridge_host_data*, %struct.qeth_bridge_host_data** %6, align 8
  %61 = getelementptr inbounds %struct.qeth_bridge_host_data, %struct.qeth_bridge_host_data* %60, i32 0, i32 0
  %62 = load i32, i32* @qeth_bridge_host_event_worker, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %65 = load %struct.qeth_bridge_host_data*, %struct.qeth_bridge_host_data** %6, align 8
  %66 = getelementptr inbounds %struct.qeth_bridge_host_data, %struct.qeth_bridge_host_data* %65, i32 0, i32 2
  store %struct.qeth_card* %64, %struct.qeth_card** %66, align 8
  %67 = load %struct.qeth_bridge_host_data*, %struct.qeth_bridge_host_data** %6, align 8
  %68 = getelementptr inbounds %struct.qeth_bridge_host_data, %struct.qeth_bridge_host_data* %67, i32 0, i32 1
  %69 = load %struct.qeth_ipacmd_addr_change*, %struct.qeth_ipacmd_addr_change** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 8, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memcpy(i32* %68, %struct.qeth_ipacmd_addr_change* %69, i32 %73)
  %75 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qeth_bridge_host_data*, %struct.qeth_bridge_host_data** %6, align 8
  %79 = getelementptr inbounds %struct.qeth_bridge_host_data, %struct.qeth_bridge_host_data* %78, i32 0, i32 0
  %80 = call i32 @queue_work(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %59, %56, %33
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local %struct.qeth_bridge_host_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.qeth_ipacmd_addr_change*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
