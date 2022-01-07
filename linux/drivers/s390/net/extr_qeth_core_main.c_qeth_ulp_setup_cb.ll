; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_setup_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_setup_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qeth_reply = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ulpstpcb\00", align 1
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"00S\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"olmlimit\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"A connection could not be established because of an OLM limit\0A\00", align 1
@EMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_ulp_setup_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_ulp_setup_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %10 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %9, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.qeth_cmd_buffer*
  store %struct.qeth_cmd_buffer* %12, %struct.qeth_cmd_buffer** %8, align 8
  %13 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %14 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %17 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @QETH_ULP_SETUP_RESP_CONNECTION_TOKEN(i32 %18)
  %20 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %21 = call i32 @memcpy(i32* %15, i32 %19, i32 %20)
  %22 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %23 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @QETH_ULP_SETUP_RESP_CONNECTION_TOKEN(i32 %24)
  %26 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 3)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %30 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %29, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @EMLINK, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @QETH_ULP_SETUP_RESP_CONNECTION_TOKEN(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
