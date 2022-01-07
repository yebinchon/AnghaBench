; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_hw_ct.c_bfa_hwct_msix_ctrl_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_hw_ct.c_bfa_hwct_msix_ctrl_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@bfa_msix_all = common dso_local global i32 0, align 4
@BFI_MSIX_LPU_ERR_CT = common dso_local global i64 0, align 8
@bfa_msix_lpu_err = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_hwct_msix_ctrl_install(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %3 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i32, i32* @bfa_msix_all, align 4
  %17 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @BFI_MSIX_LPU_ERR_CT, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %16, i32* %22, align 4
  br label %31

23:                                               ; preds = %9
  %24 = load i32, i32* @bfa_msix_lpu_err, align 4
  %25 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %26 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @BFI_MSIX_LPU_ERR_CT, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %24, i32* %30, align 4
  br label %31

31:                                               ; preds = %8, %23, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
