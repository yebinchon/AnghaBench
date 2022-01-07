; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_activate_write_channel_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_activate_write_channel_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qeth_cmd_buffer = type { i32, %struct.qeth_channel* }
%struct.qeth_channel = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"idxwrcb\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"IDX_ACTIVATE on channel %x: function level mismatch (sent: %#x, received: %#x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32)* @qeth_idx_activate_write_channel_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_idx_activate_write_channel_cb(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %10, i32 0, i32 1
  %12 = load %struct.qeth_channel*, %struct.qeth_channel** %11, align 8
  store %struct.qeth_channel* %12, %struct.qeth_channel** %7, align 8
  %13 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %14 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %13, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %16 = load %struct.qeth_channel*, %struct.qeth_channel** %7, align 8
  %17 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %18 = call i32 @qeth_idx_check_activate_response(%struct.qeth_card* %15, %struct.qeth_channel* %16, %struct.qeth_cmd_buffer* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @QETH_IDX_ACT_FUNC_LEVEL(i32 %25)
  %27 = call i32 @memcpy(i32* %8, i32 %26, i32 2)
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, -257
  %30 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qeth_peer_func_level(i32 %33)
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %22
  %37 = load %struct.qeth_channel*, %struct.qeth_channel** %7, align 8
  %38 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CCW_DEVID(i32 %39)
  %41 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %36, %22
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @qeth_notify_cmd(%struct.qeth_cmd_buffer* %51, i32 %52)
  %54 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %55 = call i32 @qeth_put_cmd(%struct.qeth_cmd_buffer* %54)
  ret void
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_idx_check_activate_response(%struct.qeth_card*, %struct.qeth_channel*, %struct.qeth_cmd_buffer*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @QETH_IDX_ACT_FUNC_LEVEL(i32) #1

declare dso_local i32 @qeth_peer_func_level(i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CCW_DEVID(i32) #1

declare dso_local i32 @qeth_notify_cmd(%struct.qeth_cmd_buffer*, i32) #1

declare dso_local i32 @qeth_put_cmd(%struct.qeth_cmd_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
