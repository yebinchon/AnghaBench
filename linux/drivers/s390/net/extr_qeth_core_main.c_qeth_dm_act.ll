; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_dm_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_dm_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"dmact\00", align 1
@DM_ACT = common dso_local global i32 0, align 4
@DM_ACT_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_dm_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dm_act(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %5 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %6 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %5, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = load i32, i32* @DM_ACT, align 4
  %9 = load i32, i32* @DM_ACT_SIZE, align 4
  %10 = call %struct.qeth_cmd_buffer* @qeth_mpc_alloc_cmd(%struct.qeth_card* %7, i32 %8, i32 %9)
  store %struct.qeth_cmd_buffer* %10, %struct.qeth_cmd_buffer** %4, align 8
  %11 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %12 = icmp ne %struct.qeth_cmd_buffer* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @QETH_DM_ACT_DEST_ADDR(i32 %19)
  %21 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %25 = call i32 @memcpy(i32 %20, i32* %23, i32 %24)
  %26 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @QETH_DM_ACT_CONNECTION_TOKEN(i32 %28)
  %30 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %34 = call i32 @memcpy(i32 %29, i32* %32, i32 %33)
  %35 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %37 = call i32 @qeth_send_control_data(%struct.qeth_card* %35, %struct.qeth_cmd_buffer* %36, i32* null, i32* null)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %16, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_mpc_alloc_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @QETH_DM_ACT_DEST_ADDR(i32) #1

declare dso_local i32 @QETH_DM_ACT_CONNECTION_TOKEN(i32) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
