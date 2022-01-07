; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_enable_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_enable_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.qeth_reply = type { i64 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ulpenacb\00", align 1
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@QETH_MPC_DIFINFO_LEN_INDICATES_LINK_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"link%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_ulp_enable_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_ulp_enable_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_reply*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %12, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.qeth_cmd_buffer*
  store %struct.qeth_cmd_buffer* %15, %struct.qeth_cmd_buffer** %11, align 8
  %16 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %11, align 8
  %20 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @QETH_ULP_ENABLE_RESP_FILTER_TOKEN(i32 %21)
  %23 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %24 = call i32 @memcpy(i64* %18, i64 %22, i32 %23)
  %25 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %26 = call i64 @IS_IQD(%struct.qeth_card* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %11, align 8
  %30 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @QETH_ULP_ENABLE_RESP_MAX_MTU(i32 %31)
  %33 = call i32 @memcpy(i64* %8, i64 %32, i32 2)
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @qeth_get_mtu_outof_framesize(i64 %34)
  store i64 %35, i64* %7, align 8
  br label %43

36:                                               ; preds = %3
  %37 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %11, align 8
  %38 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @QETH_ULP_ENABLE_RESP_MAX_MTU(i32 %39)
  %41 = inttoptr i64 %40 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %36, %28
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.qeth_reply*, %struct.qeth_reply** %5, align 8
  %46 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i64*
  store i64 %44, i64* %48, align 8
  %49 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %11, align 8
  %50 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @QETH_ULP_ENABLE_RESP_DIFINFO_LEN(i32 %51)
  %53 = call i32 @memcpy(i64* %9, i64 %52, i32 2)
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @QETH_MPC_DIFINFO_LEN_INDICATES_LINK_TYPE, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %43
  %58 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %11, align 8
  %59 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @QETH_ULP_ENABLE_RESP_LINK_TYPE(i32 %60)
  %62 = call i32 @memcpy(i64* %10, i64 %61, i32 1)
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %65 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  br label %71

67:                                               ; preds = %43
  %68 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %69 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %57
  %72 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %73 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %72, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  ret i32 0
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i64 @QETH_ULP_ENABLE_RESP_FILTER_TOKEN(i32) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i64 @QETH_ULP_ENABLE_RESP_MAX_MTU(i32) #1

declare dso_local i64 @qeth_get_mtu_outof_framesize(i64) #1

declare dso_local i64 @QETH_ULP_ENABLE_RESP_DIFINFO_LEN(i32) #1

declare dso_local i64 @QETH_ULP_ENABLE_RESP_LINK_TYPE(i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
