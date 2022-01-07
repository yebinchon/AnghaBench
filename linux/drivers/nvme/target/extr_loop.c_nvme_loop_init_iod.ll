; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_init_iod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_init_iod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_loop_ctrl = type { i32* }
%struct.nvme_loop_iod = type { i32, i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@nvme_loop_execute_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_loop_ctrl*, %struct.nvme_loop_iod*, i32)* @nvme_loop_init_iod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_loop_init_iod(%struct.nvme_loop_ctrl* %0, %struct.nvme_loop_iod* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_loop_ctrl*, align 8
  %5 = alloca %struct.nvme_loop_iod*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_loop_ctrl* %0, %struct.nvme_loop_ctrl** %4, align 8
  store %struct.nvme_loop_iod* %1, %struct.nvme_loop_iod** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %8 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %7, i32 0, i32 4
  %9 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %10 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32* %8, i32** %11, align 8
  %12 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %12, i32 0, i32 2
  %14 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %15 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* %13, i32** %16, align 8
  %17 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %25, i32 0, i32 0
  %27 = load i32, i32* @nvme_loop_execute_work, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
