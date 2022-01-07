; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_disable_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_disable_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvme_ctrl*, i32, i32)* }

@NVME_CC_SHN_MASK = common dso_local global i32 0, align 4
@NVME_CC_ENABLE = common dso_local global i32 0, align 4
@NVME_REG_CC = common dso_local global i32 0, align 4
@NVME_QUIRK_DELAY_BEFORE_CHK_RDY = common dso_local global i32 0, align 4
@NVME_QUIRK_DELAY_AMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_disable_ctrl(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %5 = load i32, i32* @NVME_CC_SHN_MASK, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load i32, i32* @NVME_CC_ENABLE, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.nvme_ctrl*, i32, i32)*, i32 (%struct.nvme_ctrl*, i32, i32)** %20, align 8
  %22 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %23 = load i32, i32* @NVME_REG_CC, align 4
  %24 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %21(%struct.nvme_ctrl* %22, i32 %23, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %34 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NVME_QUIRK_DELAY_BEFORE_CHK_RDY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @NVME_QUIRK_DELAY_AMOUNT, align 4
  %41 = call i32 @msleep(i32 %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %44 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nvme_wait_ready(%struct.nvme_ctrl* %43, i32 %46, i32 0)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %30
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @nvme_wait_ready(%struct.nvme_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
