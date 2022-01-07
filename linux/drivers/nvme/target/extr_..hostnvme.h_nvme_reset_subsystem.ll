; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_..hostnvme.h_nvme_reset_subsystem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_..hostnvme.h_nvme_reset_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvme_ctrl*, i32, i32)* }

@ENOTTY = common dso_local global i32 0, align 4
@NVME_REG_NSSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*)* @nvme_reset_subsystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_reset_subsystem(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %4 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %5 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOTTY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.nvme_ctrl*, i32, i32)*, i32 (%struct.nvme_ctrl*, i32, i32)** %15, align 8
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %18 = load i32, i32* @NVME_REG_NSSR, align 4
  %19 = call i32 %16(%struct.nvme_ctrl* %17, i32 %18, i32 1314278757)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
