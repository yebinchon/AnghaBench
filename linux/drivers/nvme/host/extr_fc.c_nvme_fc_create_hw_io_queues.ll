; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_create_hw_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_create_hw_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.nvme_fc_queue*, %struct.TYPE_2__ }
%struct.nvme_fc_queue = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*, i32)* @nvme_fc_create_hw_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_create_hw_io_queues(%struct.nvme_fc_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_fc_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_fc_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %9, i32 0, i32 0
  %11 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %10, align 8
  %12 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %11, i64 1
  store %struct.nvme_fc_queue* %12, %struct.nvme_fc_queue** %6, align 8
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %30, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %22 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @__nvme_fc_create_hw_queue(%struct.nvme_fc_ctrl* %21, %struct.nvme_fc_queue* %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %36

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %34 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %33, i32 1
  store %struct.nvme_fc_queue* %34, %struct.nvme_fc_queue** %6, align 8
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %55

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %42 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %42, i32 0, i32 0
  %44 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %44, i64 %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @__nvme_fc_delete_hw_queue(%struct.nvme_fc_ctrl* %41, %struct.nvme_fc_queue* %47, i32 %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %35
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @__nvme_fc_create_hw_queue(%struct.nvme_fc_ctrl*, %struct.nvme_fc_queue*, i32, i32) #1

declare dso_local i32 @__nvme_fc_delete_hw_queue(%struct.nvme_fc_ctrl*, %struct.nvme_fc_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
