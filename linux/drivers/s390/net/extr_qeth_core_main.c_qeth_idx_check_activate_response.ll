; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_check_activate_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_check_activate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"idxneg%c\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"The adapter is used exclusively by another host\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"Setting the device online failed because of insufficient authorization\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"IDX_ACTIVATE on channel %x: negative reply\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_channel*, %struct.qeth_cmd_buffer*)* @qeth_idx_check_activate_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_idx_check_activate_response(%struct.qeth_card* %0, %struct.qeth_channel* %1, %struct.qeth_cmd_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_channel*, align 8
  %7 = alloca %struct.qeth_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_channel* %1, %struct.qeth_channel** %6, align 8
  store %struct.qeth_cmd_buffer* %2, %struct.qeth_cmd_buffer** %7, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %10 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %11 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @qeth_check_idx_response(%struct.qeth_card* %9, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @QETH_IS_IDX_ACT_POS_REPLY(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %60

25:                                               ; preds = %18
  %26 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %27 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @QETH_IDX_ACT_CAUSE_CODE(i32 %29)
  %31 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %26, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @QETH_IDX_ACT_CAUSE_CODE(i32 %34)
  switch i32 %35, label %52 [
    i32 128, label %36
    i32 130, label %44
    i32 129, label %44
  ]

36:                                               ; preds = %25
  %37 = load %struct.qeth_channel*, %struct.qeth_channel** %6, align 8
  %38 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %60

44:                                               ; preds = %25, %25
  %45 = load %struct.qeth_channel*, %struct.qeth_channel** %6, align 8
  %46 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %25
  %53 = load %struct.qeth_channel*, %struct.qeth_channel** %6, align 8
  %54 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @CCW_DEVID(%struct.TYPE_2__* %55)
  %57 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %44, %36, %24, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @qeth_check_idx_response(%struct.qeth_card*, i32) #1

declare dso_local i64 @QETH_IS_IDX_ACT_POS_REPLY(i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @QETH_IDX_ACT_CAUSE_CODE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32) #1

declare dso_local i32 @CCW_DEVID(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
