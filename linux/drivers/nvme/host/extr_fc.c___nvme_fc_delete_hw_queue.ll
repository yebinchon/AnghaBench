; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_delete_hw_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_delete_hw_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32, i32*)* }
%struct.nvme_fc_queue = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_ctrl*, %struct.nvme_fc_queue*, i32)* @__nvme_fc_delete_hw_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvme_fc_delete_hw_queue(%struct.nvme_fc_ctrl* %0, %struct.nvme_fc_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_fc_ctrl*, align 8
  %5 = alloca %struct.nvme_fc_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %4, align 8
  store %struct.nvme_fc_queue* %1, %struct.nvme_fc_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %12, align 8
  %14 = icmp ne i32 (i32*, i32, i32*)* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %21, align 8
  %23 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %24 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %5, align 8
  %29 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 %22(i32* %26, i32 %27, i32* %30)
  br label %32

32:                                               ; preds = %15, %3
  %33 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %5, align 8
  %34 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
