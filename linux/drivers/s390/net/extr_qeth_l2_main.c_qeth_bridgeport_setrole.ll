; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_setrole.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_bridgeport_setrole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"brsetrol\00", align 1
@IPA_SBP_RESET_BRIDGE_PORT_ROLE = common dso_local global i32 0, align 4
@IPA_SBP_SET_PRIMARY_BRIDGE_PORT = common dso_local global i32 0, align 4
@set_primary = common dso_local global i32 0, align 4
@IPA_SBP_SET_SECONDARY_BRIDGE_PORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_bridgeport_set_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_bridgeport_setrole(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_cmd_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %10 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %9, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %20 [
    i32 130, label %12
    i32 129, label %14
    i32 128, label %18
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @IPA_SBP_RESET_BRIDGE_PORT_ROLE, align 4
  store i32 %13, i32* %7, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @IPA_SBP_SET_PRIMARY_BRIDGE_PORT, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @set_primary, align 4
  %17 = call i32 @SBP_DATA_SIZEOF(i32 %16)
  store i32 %17, i32* %8, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @IPA_SBP_SET_SECONDARY_BRIDGE_PORT, align 4
  store i32 %19, i32* %7, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %18, %14, %12
  %24 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %23
  %36 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.qeth_cmd_buffer* @qeth_sbp_build_cmd(%struct.qeth_card* %36, i32 %37, i32 %38)
  store %struct.qeth_cmd_buffer* %39, %struct.qeth_cmd_buffer** %6, align 8
  %40 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %41 = icmp ne %struct.qeth_cmd_buffer* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %35
  %46 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %47 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %6, align 8
  %48 = load i32, i32* @qeth_bridgeport_set_cb, align 4
  %49 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %46, %struct.qeth_cmd_buffer* %47, i32 %48, i32* null)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %42, %32, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @SBP_DATA_SIZEOF(i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_sbp_build_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
