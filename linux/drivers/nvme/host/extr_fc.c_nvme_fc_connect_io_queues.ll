; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_connect_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_connect_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NVME_FC_Q_LIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*, i32)* @nvme_fc_connect_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_connect_io_queues(%struct.nvme_fc_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %7
  %15 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %16 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 5
  %25 = call i32 @nvme_fc_connect_queue(%struct.nvme_fc_ctrl* %15, %struct.TYPE_4__* %21, i32 %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %50

29:                                               ; preds = %14
  %30 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nvmf_connect_io_queue(%struct.TYPE_3__* %31, i32 %32, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %50

37:                                               ; preds = %29
  %38 = load i32, i32* @NVME_FC_Q_LIVE, align 4
  %39 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %38, i32* %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %7

50:                                               ; preds = %36, %28, %7
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @nvme_fc_connect_queue(%struct.nvme_fc_ctrl*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @nvmf_connect_io_queue(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
