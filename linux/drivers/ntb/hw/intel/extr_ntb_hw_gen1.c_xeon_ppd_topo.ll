; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_xeon_ppd_topo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_xeon_ppd_topo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32 }

@XEON_PPD_TOPO_MASK = common dso_local global i32 0, align 4
@NTB_TOPO_B2B_USD = common dso_local global i32 0, align 4
@NTB_TOPO_B2B_DSD = common dso_local global i32 0, align 4
@NTB_TOPO_PRI = common dso_local global i32 0, align 4
@NTB_TOPO_SEC = common dso_local global i32 0, align 4
@NTB_TOPO_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xeon_ppd_topo(%struct.intel_ntb_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_ntb_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XEON_PPD_TOPO_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %17 [
    i32 132, label %9
    i32 133, label %11
    i32 130, label %13
    i32 131, label %13
    i32 128, label %15
    i32 129, label %15
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @NTB_TOPO_B2B_USD, align 4
  store i32 %10, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @NTB_TOPO_B2B_DSD, align 4
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @NTB_TOPO_PRI, align 4
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2, %2
  %16 = load i32, i32* @NTB_TOPO_SEC, align 4
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @NTB_TOPO_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %15, %13, %11, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
