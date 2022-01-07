; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_setup_activate_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_idx_setup_activate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.qeth_cmd_buffer = type { i32, i32, i32 }
%struct.ccw1 = type { i32 }
%struct.ccw_dev_id = type { i32 }

@CCW_CMD_WRITE = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@IDX_ACTIVATE_SIZE = common dso_local global i32 0, align 4
@CCW_CMD_READ = common dso_local global i32 0, align 4
@qeth_idx_finalize_cmd = common dso_local global i32 0, align 4
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_cmd_buffer*)* @qeth_idx_setup_activate_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_idx_setup_activate_cmd(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_cmd_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca %struct.ccw_dev_id, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %4, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %12, 8
  %14 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %20 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = or i32 %24, 128
  store i32 %25, i32* %6, align 4
  %26 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %27 = call %struct.ccw1* @__ccw_from_cmd(%struct.qeth_cmd_buffer* %26)
  store %struct.ccw1* %27, %struct.ccw1** %7, align 8
  %28 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %29 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %28, i64 0
  %30 = load i32, i32* @CCW_CMD_WRITE, align 4
  %31 = load i32, i32* @CCW_FLAG_CC, align 4
  %32 = load i32, i32* @IDX_ACTIVATE_SIZE, align 4
  %33 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qeth_setup_ccw(%struct.ccw1* %29, i32 %30, i32 %31, i32 %32, i32 %35)
  %37 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %38 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %37, i64 1
  %39 = load i32, i32* @CCW_CMD_READ, align 4
  %40 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @qeth_setup_ccw(%struct.ccw1* %38, i32 %39, i32 0, i32 %42, i32 %45)
  %47 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %48 = call i32 @CARD_DDEV(%struct.qeth_card* %47)
  %49 = call i32 @ccw_device_get_id(i32 %48, %struct.ccw_dev_id* %8)
  %50 = load i32, i32* @qeth_idx_finalize_cmd, align 4
  %51 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @QETH_IDX_ACT_PNO(i32 %55)
  %57 = call i32 @memcpy(i32 %56, i32* %6, i32 1)
  %58 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @QETH_IDX_ACT_ISSUER_RM_TOKEN(i32 %60)
  %62 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %66 = call i32 @memcpy(i32 %61, i32* %64, i32 %65)
  %67 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @QETH_IDX_ACT_FUNC_LEVEL(i32 %69)
  %71 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = call i32 @memcpy(i32 %70, i32* %73, i32 2)
  %75 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @QETH_IDX_ACT_QDIO_DEV_CUA(i32 %77)
  %79 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 0
  %80 = call i32 @memcpy(i32 %78, i32* %79, i32 2)
  %81 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %82 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @QETH_IDX_ACT_QDIO_DEV_REALADDR(i32 %83)
  %85 = call i32 @memcpy(i32 %84, i32* %5, i32 2)
  ret void
}

declare dso_local %struct.ccw1* @__ccw_from_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_setup_ccw(%struct.ccw1*, i32, i32, i32, i32) #1

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @QETH_IDX_ACT_PNO(i32) #1

declare dso_local i32 @QETH_IDX_ACT_ISSUER_RM_TOKEN(i32) #1

declare dso_local i32 @QETH_IDX_ACT_FUNC_LEVEL(i32) #1

declare dso_local i32 @QETH_IDX_ACT_QDIO_DEV_CUA(i32) #1

declare dso_local i32 @QETH_IDX_ACT_QDIO_DEV_REALADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
