; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setrouting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setrouting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"setroutg\00", align 1
@IPA_CMD_SETRTG = common dso_local global i32 0, align 4
@setrtg = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32, i32)* @qeth_l3_send_setrouting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_send_setrouting(%struct.qeth_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_ipa_cmd*, align 8
  %10 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %12 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %11, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = load i32, i32* @IPA_CMD_SETRTG, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @setrtg, align 4
  %17 = call i32 @IPA_DATA_SIZEOF(i32 %16)
  %18 = call %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card* %13, i32 %14, i32 %15, i32 %17)
  store %struct.qeth_cmd_buffer* %18, %struct.qeth_cmd_buffer** %10, align 8
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %20 = icmp ne %struct.qeth_cmd_buffer* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %26 = call %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer* %25)
  store %struct.qeth_ipa_cmd* %26, %struct.qeth_ipa_cmd** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %29 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %33 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %10, align 8
  %34 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %32, %struct.qeth_cmd_buffer* %33, i32* null, i32* null)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card*, i32, i32, i32) #1

declare dso_local i32 @IPA_DATA_SIZEOF(i32) #1

declare dso_local %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
