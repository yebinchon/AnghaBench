; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_osn_assist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_osn_assist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"osnsdmc\00", align 1
@IPA_PDU_HEADER_SIZE = common dso_local global i64 0, align 8
@QETH_IPA_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qeth_osn_assist_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_osn_assist(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  %9 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %69

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %69

21:                                               ; preds = %15
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.qeth_card*, %struct.qeth_card** %23, align 8
  store %struct.qeth_card* %24, %struct.qeth_card** %9, align 8
  %25 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %26 = icmp ne %struct.qeth_card* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %21
  %31 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %32 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %31, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %34 = call i32 @qeth_card_hw_is_reachable(%struct.qeth_card* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %69

39:                                               ; preds = %30
  %40 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 0
  %42 = load i64, i64* @IPA_PDU_HEADER_SIZE, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* @QETH_IPA_TIMEOUT, align 4
  %47 = call %struct.qeth_cmd_buffer* @qeth_alloc_cmd(i32* %41, i64 %45, i32 1, i32 %46)
  store %struct.qeth_cmd_buffer* %47, %struct.qeth_cmd_buffer** %8, align 8
  %48 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %49 = icmp ne %struct.qeth_cmd_buffer* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %69

53:                                               ; preds = %39
  %54 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %55 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @qeth_prepare_ipa_cmd(%struct.qeth_card* %54, %struct.qeth_cmd_buffer* %55, i32 %56)
  %58 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %59 = call i32 @__ipa_cmd(%struct.qeth_cmd_buffer* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @memcpy(i32 %59, i8* %60, i32 %61)
  %63 = load i32, i32* @qeth_osn_assist_cb, align 4
  %64 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %65 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %67 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %68 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %66, %struct.qeth_cmd_buffer* %67, i32* null, i32* null)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %53, %50, %36, %27, %18, %12
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_alloc_cmd(i32*, i64, i32, i32) #1

declare dso_local i32 @qeth_prepare_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
