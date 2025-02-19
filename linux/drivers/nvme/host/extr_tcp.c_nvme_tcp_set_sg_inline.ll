; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_set_sg_inline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_set_sg_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nvme_command = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvme_sgl_desc }
%struct.nvme_sgl_desc = type { i32, i32, i32 }

@NVME_SGL_FMT_DATA_DESC = common dso_local global i32 0, align 4
@NVME_SGL_FMT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_tcp_queue*, %struct.nvme_command*, i32)* @nvme_tcp_set_sg_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_set_sg_inline(%struct.nvme_tcp_queue* %0, %struct.nvme_command* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca %struct.nvme_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_sgl_desc*, align 8
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %4, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nvme_command*, %struct.nvme_command** %5, align 8
  %9 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.nvme_sgl_desc* %11, %struct.nvme_sgl_desc** %7, align 8
  %12 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_le64(i32 %17)
  %19 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %7, align 8
  %20 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %7, align 8
  %24 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @NVME_SGL_FMT_DATA_DESC, align 4
  %26 = shl i32 %25, 4
  %27 = load i32, i32* @NVME_SGL_FMT_OFFSET, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %7, align 8
  %30 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
