; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_hw_cb.c_bfa_hwcb_msix_ctrl_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_hw_cb.c_bfa_hwcb_msix_ctrl_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@BFI_MSIX_CPE_QMIN_CB = common dso_local global i32 0, align 4
@BFI_MSIX_CB_MAX = common dso_local global i32 0, align 4
@bfa_msix_all = common dso_local global i32 0, align 4
@BFI_MSIX_RME_QMAX_CB = common dso_local global i32 0, align 4
@bfa_msix_lpu_err = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_hwcb_msix_ctrl_install(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %4 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = load i32, i32* @BFI_MSIX_CPE_QMIN_CB, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %31, %16
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @BFI_MSIX_CB_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* @bfa_msix_all, align 4
  %24 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %23, i32* %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %18

34:                                               ; preds = %18
  br label %54

35:                                               ; preds = %10
  %36 = load i32, i32* @BFI_MSIX_RME_QMAX_CB, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %51, %35
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @BFI_MSIX_CB_MAX, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* @bfa_msix_lpu_err, align 4
  %44 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %45 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %43, i32* %50, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %38

54:                                               ; preds = %9, %34, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
