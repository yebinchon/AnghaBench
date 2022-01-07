; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_stream_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_stream_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.streams_directive_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }

@nvme_admin_directive_recv = common dso_local global i32 0, align 4
@NVME_DIR_RCV_ST_OP_PARAM = common dso_local global i32 0, align 4
@NVME_DIR_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, %struct.streams_directive_params*, i32)* @nvme_get_stream_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_get_stream_params(%struct.nvme_ctrl* %0, %struct.streams_directive_params* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.streams_directive_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_command, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.streams_directive_params* %1, %struct.streams_directive_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.nvme_command* %7 to %struct.streams_directive_params*
  %9 = call i32 @memset(%struct.streams_directive_params* %8, i32 0, i32 32)
  %10 = load %struct.streams_directive_params*, %struct.streams_directive_params** %5, align 8
  %11 = call i32 @memset(%struct.streams_directive_params* %10, i32 0, i32 32)
  %12 = load i32, i32* @nvme_admin_directive_recv, align 4
  %13 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = call i8* @cpu_to_le32(i32 7)
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @NVME_DIR_RCV_ST_OP_PARAM, align 4
  %23 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @NVME_DIR_STREAMS, align 4
  %26 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %struct.nvme_command* %7 to %struct.streams_directive_params*
  %32 = load %struct.streams_directive_params*, %struct.streams_directive_params** %5, align 8
  %33 = call i32 @nvme_submit_sync_cmd(i32 %30, %struct.streams_directive_params* %31, %struct.streams_directive_params* %32, i32 32)
  ret i32 %33
}

declare dso_local i32 @memset(%struct.streams_directive_params*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.streams_directive_params*, %struct.streams_directive_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
