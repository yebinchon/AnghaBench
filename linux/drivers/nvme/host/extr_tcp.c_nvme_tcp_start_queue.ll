; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_start_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_start_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_tcp_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NVME_TCP_Q_LIVE = common dso_local global i32 0, align 4
@NVME_TCP_Q_ALLOCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to connect queue: %d ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32)* @nvme_tcp_start_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_start_queue(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_tcp_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %8 = call %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl* %7)
  store %struct.nvme_tcp_ctrl* %8, %struct.nvme_tcp_ctrl** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @nvmf_connect_io_queue(%struct.nvme_ctrl* %12, i32 %13, i32 0)
  store i32 %14, i32* %6, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %17 = call i32 @nvmf_connect_admin_queue(%struct.nvme_ctrl* %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @NVME_TCP_Q_LIVE, align 4
  %23 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %22, i32* %29)
  br label %57

31:                                               ; preds = %18
  %32 = load i32, i32* @NVME_TCP_Q_ALLOCATED, align 4
  %33 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %32, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %5, align 8
  %44 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = call i32 @__nvme_tcp_stop_queue(%struct.TYPE_2__* %48)
  br label %50

50:                                               ; preds = %42, %31
  %51 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %21
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvmf_connect_io_queue(%struct.nvme_ctrl*, i32, i32) #1

declare dso_local i32 @nvmf_connect_admin_queue(%struct.nvme_ctrl*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__nvme_tcp_stop_queue(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
