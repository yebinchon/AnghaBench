; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_perst_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_perst_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i64 }

@IPROC_PCIE_CLK_CTRL = common dso_local global i32 0, align 4
@EP_PERST_SOURCE_SELECT = common dso_local global i32 0, align 4
@EP_MODE_SURVIVE_PERST = common dso_local global i32 0, align 4
@RC_PCIE_RST_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_pcie*, i32)* @iproc_pcie_perst_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_pcie_perst_ctrl(%struct.iproc_pcie* %0, i32 %1) #0 {
  %3 = alloca %struct.iproc_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %16 = load i32, i32* @IPROC_PCIE_CLK_CTRL, align 4
  %17 = call i32 @iproc_pcie_read_reg(%struct.iproc_pcie* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @EP_PERST_SOURCE_SELECT, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @EP_MODE_SURVIVE_PERST, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32, i32* @RC_PCIE_RST_OUTPUT, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %29 = load i32, i32* @IPROC_PCIE_CLK_CTRL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %28, i32 %29, i32 %30)
  %32 = call i32 @udelay(i32 250)
  br label %45

33:                                               ; preds = %11
  %34 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %35 = load i32, i32* @IPROC_PCIE_CLK_CTRL, align 4
  %36 = call i32 @iproc_pcie_read_reg(%struct.iproc_pcie* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @RC_PCIE_RST_OUTPUT, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %41 = load i32, i32* @IPROC_PCIE_CLK_CTRL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %40, i32 %41, i32 %42)
  %44 = call i32 @msleep(i32 100)
  br label %45

45:                                               ; preds = %10, %33, %14
  ret void
}

declare dso_local i32 @iproc_pcie_read_reg(%struct.iproc_pcie*, i32) #1

declare dso_local i32 @iproc_pcie_write_reg(%struct.iproc_pcie*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
