; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_hw_trap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_hw_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.qeth_trap_id = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"diagtrap\00", align 1
@QETH_DIAGS_CMD_TRAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_hw_trap_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_hw_trap(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  %7 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %11 = load i32, i32* @QETH_DIAGS_CMD_TRAP, align 4
  %12 = call %struct.qeth_cmd_buffer* @qeth_get_diag_cmd(%struct.qeth_card* %10, i32 %11, i32 64)
  store %struct.qeth_cmd_buffer* %12, %struct.qeth_cmd_buffer** %6, align 8
  %13 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %14 = icmp ne %struct.qeth_cmd_buffer* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %20 = call %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer* %19)
  store %struct.qeth_ipa_cmd* %20, %struct.qeth_ipa_cmd** %7, align 8
  %21 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %54 [
    i32 130, label %31
    i32 128, label %48
    i32 129, label %53
  ]

31:                                               ; preds = %18
  %32 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 3, i32* %35, align 8
  %36 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i32 65540, i32* %39, align 4
  %40 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %41 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.qeth_trap_id*
  %47 = call i32 @qeth_get_trap_id(%struct.qeth_card* %40, %struct.qeth_trap_id* %46)
  br label %54

48:                                               ; preds = %18
  %49 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  br label %54

53:                                               ; preds = %18
  br label %54

54:                                               ; preds = %18, %53, %48, %31
  %55 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %56 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %57 = load i32, i32* @qeth_hw_trap_cb, align 4
  %58 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %55, %struct.qeth_cmd_buffer* %56, i32 %57, i32* null)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_diag_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_get_trap_id(%struct.qeth_card*, %struct.qeth_trap_id*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
