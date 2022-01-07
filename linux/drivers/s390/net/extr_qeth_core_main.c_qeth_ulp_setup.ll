; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.ccw_dev_id = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"ulpsetup\00", align 1
@ULP_SETUP = common dso_local global i32 0, align 4
@ULP_SETUP_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@qeth_ulp_setup_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_ulp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_ulp_setup(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qeth_cmd_buffer*, align 8
  %6 = alloca %struct.ccw_dev_id, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = load i32, i32* @ULP_SETUP, align 4
  %11 = load i32, i32* @ULP_SETUP_SIZE, align 4
  %12 = call %struct.qeth_cmd_buffer* @qeth_mpc_alloc_cmd(%struct.qeth_card* %9, i32 %10, i32 %11)
  store %struct.qeth_cmd_buffer* %12, %struct.qeth_cmd_buffer** %5, align 8
  %13 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %14 = icmp ne %struct.qeth_cmd_buffer* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %1
  %19 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @QETH_ULP_SETUP_DEST_ADDR(i32 %21)
  %23 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %27 = call i32 @memcpy(i32 %22, i64* %25, i32 %26)
  %28 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @QETH_ULP_SETUP_CONNECTION_TOKEN(i32 %30)
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %36 = call i32 @memcpy(i32 %31, i64* %34, i32 %35)
  %37 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @QETH_ULP_SETUP_FILTER_TOKEN(i32 %39)
  %41 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %45 = call i32 @memcpy(i32 %40, i64* %43, i32 %44)
  %46 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %47 = call i32 @CARD_DDEV(%struct.qeth_card* %46)
  %48 = call i32 @ccw_device_get_id(i32 %47, %struct.ccw_dev_id* %6)
  %49 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @QETH_ULP_SETUP_CUA(i32 %51)
  %53 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %6, i32 0, i32 0
  %54 = call i32 @memcpy(i32 %52, i64* %53, i32 2)
  %55 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %60, %64
  store i64 %65, i64* %4, align 8
  %66 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @QETH_ULP_SETUP_REAL_DEVADDR(i32 %68)
  %70 = call i32 @memcpy(i32 %69, i64* %4, i32 2)
  %71 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %72 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %5, align 8
  %73 = load i32, i32* @qeth_ulp_setup_cb, align 4
  %74 = call i32 @qeth_send_control_data(%struct.qeth_card* %71, %struct.qeth_cmd_buffer* %72, i32 %73, i32* null)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %18, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_mpc_alloc_cmd(%struct.qeth_card*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @QETH_ULP_SETUP_DEST_ADDR(i32) #1

declare dso_local i32 @QETH_ULP_SETUP_CONNECTION_TOKEN(i32) #1

declare dso_local i32 @QETH_ULP_SETUP_FILTER_TOKEN(i32) #1

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @QETH_ULP_SETUP_CUA(i32) #1

declare dso_local i32 @QETH_ULP_SETUP_REAL_DEVADDR(i32) #1

declare dso_local i32 @qeth_send_control_data(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
