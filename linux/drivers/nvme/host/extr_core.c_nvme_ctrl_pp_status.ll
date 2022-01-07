; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_ctrl_pp_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_ctrl_pp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.nvme_ctrl*, i32, i32*)* }

@NVME_REG_CSTS = common dso_local global i32 0, align 4
@NVME_CC_ENABLE = common dso_local global i32 0, align 4
@NVME_CSTS_PP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*)* @nvme_ctrl_pp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrl_pp_status(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %5 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (%struct.nvme_ctrl*, i32, i32*)*, i64 (%struct.nvme_ctrl*, i32, i32*)** %8, align 8
  %10 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %11 = load i32, i32* @NVME_REG_CSTS, align 4
  %12 = call i64 %9(%struct.nvme_ctrl* %10, i32 %11, i32* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %34

19:                                               ; preds = %15
  %20 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NVME_CC_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NVME_CSTS_PP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %19
  %32 = phi i1 [ false, %19 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %18, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
