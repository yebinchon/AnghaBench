; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_mpc_finalize_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_mpc_finalize_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qeth_cmd_buffer = type { i32, i32 }

@QETH_SEQ_NO_LENGTH = common dso_local global i32 0, align 4
@qeth_release_buffer_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_cmd_buffer*)* @qeth_mpc_finalize_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_mpc_finalize_cmd(%struct.qeth_card* %0, %struct.qeth_cmd_buffer* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.qeth_cmd_buffer* %1, %struct.qeth_cmd_buffer** %4, align 8
  %5 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %6 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %7 = call i32 @qeth_idx_finalize_cmd(%struct.qeth_card* %5, %struct.qeth_cmd_buffer* %6)
  %8 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @QETH_PDU_HEADER_SEQ_NO(i32 %10)
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* @QETH_SEQ_NO_LENGTH, align 4
  %16 = call i32 @memcpy(i32 %11, i32* %14, i32 %15)
  %17 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @QETH_PDU_HEADER_ACK_SEQ_NO(i32 %24)
  %26 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @QETH_SEQ_NO_LENGTH, align 4
  %30 = call i32 @memcpy(i32 %25, i32* %28, i32 %29)
  %31 = load i32, i32* @qeth_release_buffer_cb, align 4
  %32 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @qeth_idx_finalize_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @QETH_PDU_HEADER_SEQ_NO(i32) #1

declare dso_local i32 @QETH_PDU_HEADER_ACK_SEQ_NO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
