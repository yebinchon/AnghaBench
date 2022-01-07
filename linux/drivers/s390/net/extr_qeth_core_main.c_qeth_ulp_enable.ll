; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.qeth_cmd_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ulpenabl\00", align 1
@ULP_ENABLE = common dso_local global i32 0, align 4
@ULP_ENABLE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@qeth_ulp_enable_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_ulp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_ulp_enable(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = call i64 @qeth_mpc_select_prot_type(%struct.qeth_card* %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %10, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = load i32, i32* @ULP_ENABLE, align 4
  %14 = load i32, i32* @ULP_ENABLE_SIZE, align 4
  %15 = call %struct.qeth_cmd_buffer* @qeth_mpc_alloc_cmd(%struct.qeth_card* %12, i32 %13, i32 %14)
  store %struct.qeth_cmd_buffer* %15, %struct.qeth_cmd_buffer** %5, align 8
  %16 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %17 = icmp ne %struct.qeth_cmd_buffer* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64* @QETH_ULP_ENABLE_LINKNUM(i32 %29)
  store i64 %26, i64* %30, align 8
  %31 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @QETH_ULP_ENABLE_PROT_TYPE(i32 %33)
  %35 = call i32 @memcpy(i32 %34, i64* %4, i32 1)
  %36 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @QETH_ULP_ENABLE_DEST_ADDR(i32 %38)
  %40 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %44 = call i32 @memcpy(i32 %39, i64* %42, i32 %43)
  %45 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @QETH_ULP_ENABLE_FILTER_TOKEN(i32 %47)
  %49 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %53 = call i32 @memcpy(i32 %48, i64* %51, i32 %52)
  %54 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %55 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %56 = load i32, i32* @qeth_ulp_enable_cb, align 4
  %57 = call i32 @qeth_send_control_data(%struct.qeth_card* %54, %struct.qeth_cmd_buffer* %55, i32 %56, i32* %6)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %21
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %21
  %63 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @qeth_update_max_mtu(%struct.qeth_card* %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %60, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @qeth_mpc_select_prot_type(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_mpc_alloc_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i64* @QETH_ULP_ENABLE_LINKNUM(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_PROT_TYPE(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_DEST_ADDR(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_FILTER_TOKEN(i32) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

declare dso_local i32 @qeth_update_max_mtu(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
