; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_send_ipa_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_send_ipa_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i64 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_reply = type opaque
%struct.qeth_reply.1 = type opaque
%struct.qeth_reply.0 = type opaque

@.str = private unnamed_addr constant [8 x i8] c"sendipa\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca %struct.qeth_cmd_buffer*, align 8
  %8 = alloca i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %7, align 8
  store i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %2, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %12 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %11, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %19 = call i32 @qeth_put_cmd(%struct.qeth_cmd_buffer* %18)
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %44

22:                                               ; preds = %4
  %23 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  %24 = icmp eq i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply.0*, i64)* @qeth_send_ipa_cmd_cb to i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*), i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %28 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %7, align 8
  %29 = load i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)*, i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)** %8, align 8
  %30 = bitcast i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* %29 to i32 (%struct.qeth_card*, %struct.qeth_reply.1*, i64)*
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @qeth_send_control_data(%struct.qeth_card* %27, %struct.qeth_cmd_buffer* %28, i32 (%struct.qeth_card*, %struct.qeth_reply.1*, i64)* %30, i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ETIME, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %39 = call i32 @qeth_clear_ipacmd_list(%struct.qeth_card* %38)
  %40 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %41 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %40)
  br label %42

42:                                               ; preds = %37, %26
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_put_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd_cb(%struct.qeth_card*, %struct.qeth_reply.0*, i64) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32 (%struct.qeth_card*, %struct.qeth_reply.1*, i64)*, i8*) #1

declare dso_local i32 @qeth_clear_ipacmd_list(%struct.qeth_card*) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
