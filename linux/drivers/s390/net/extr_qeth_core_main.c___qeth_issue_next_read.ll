; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c___qeth_issue_next_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c___qeth_issue_next_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, i32, %struct.qeth_cmd_buffer* }
%struct.qeth_cmd_buffer = type { i32, i32, i32, %struct.qeth_channel* }
%struct.qeth_channel = type { i64, i32, i32 }
%struct.ccw1 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"issnxrd\00", align 1
@CH_STATE_UP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@CCW_CMD_READ = common dso_local global i32 0, align 4
@qeth_issue_next_read_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"noirqpnd\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"error %i on device %x when starting next read ccw!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @__qeth_issue_next_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_issue_next_read(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_cmd_buffer*, align 8
  %5 = alloca %struct.qeth_channel*, align 8
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 2
  %10 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %9, align 8
  store %struct.qeth_cmd_buffer* %10, %struct.qeth_cmd_buffer** %4, align 8
  %11 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %11, i32 0, i32 3
  %13 = load %struct.qeth_channel*, %struct.qeth_channel** %12, align 8
  store %struct.qeth_channel* %13, %struct.qeth_channel** %5, align 8
  %14 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %15 = call %struct.ccw1* @__ccw_from_cmd(%struct.qeth_cmd_buffer* %14)
  store %struct.ccw1* %15, %struct.ccw1** %6, align 8
  %16 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %17 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %16, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qeth_channel*, %struct.qeth_channel** %5, align 8
  %19 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CH_STATE_UP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %78

26:                                               ; preds = %1
  %27 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memset(i32 %29, i32 0, i32 %32)
  %34 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %35 = load i32, i32* @CCW_CMD_READ, align 4
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @qeth_setup_ccw(%struct.ccw1* %34, i32 %35, i32 0, i32 %38, i32 %41)
  %43 = load i32, i32* @qeth_issue_next_read_cb, align 4
  %44 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %47 = call i32 @qeth_get_cmd(%struct.qeth_cmd_buffer* %46)
  %48 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %49 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %48, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.qeth_channel*, %struct.qeth_channel** %5, align 8
  %51 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %54 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %55 = ptrtoint %struct.qeth_cmd_buffer* %54 to i32
  %56 = call i32 @ccw_device_start(i32 %52, %struct.ccw1* %53, i32 %55, i32 0, i32 0)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %26
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %62 = call i32 @CARD_DEVID(%struct.qeth_card* %61)
  %63 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %62)
  %64 = load %struct.qeth_channel*, %struct.qeth_channel** %5, align 8
  %65 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %64, i32 0, i32 1
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  %67 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %68 = call i32 @qeth_put_cmd(%struct.qeth_cmd_buffer* %67)
  %69 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %70 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %72 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %71)
  %73 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 1
  %75 = call i32 @wake_up(i32* %74)
  br label %76

76:                                               ; preds = %59, %26
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %23
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.ccw1* @__ccw_from_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qeth_setup_ccw(%struct.ccw1*, i32, i32, i32, i32) #1

declare dso_local i32 @qeth_get_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @ccw_device_start(i32, %struct.ccw1*, i32, i32, i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @CARD_DEVID(%struct.qeth_card*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qeth_put_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
