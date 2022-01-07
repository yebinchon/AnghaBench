; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_xhci_mtk_sch_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_xhci_mtk_sch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd_mtk = type { %struct.mu3h_sch_bw_info*, i32 }
%struct.mu3h_sch_bw_info = type { i32 }
%struct.xhci_hcd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_mtk_sch_init(%struct.xhci_hcd_mtk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd_mtk*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.mu3h_sch_bw_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xhci_hcd_mtk* %0, %struct.xhci_hcd_mtk** %3, align 8
  %8 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %9 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.xhci_hcd* @hcd_to_xhci(i32 %10)
  store %struct.xhci_hcd* %11, %struct.xhci_hcd** %4, align 8
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %16, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mu3h_sch_bw_info* @kcalloc(i32 %22, i32 4, i32 %23)
  store %struct.mu3h_sch_bw_info* %24, %struct.mu3h_sch_bw_info** %5, align 8
  %25 = load %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_bw_info** %5, align 8
  %26 = icmp eq %struct.mu3h_sch_bw_info* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %49

30:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_bw_info** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mu3h_sch_bw_info, %struct.mu3h_sch_bw_info* %36, i64 %38
  %40 = getelementptr inbounds %struct.mu3h_sch_bw_info, %struct.mu3h_sch_bw_info* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_bw_info** %5, align 8
  %47 = load %struct.xhci_hcd_mtk*, %struct.xhci_hcd_mtk** %3, align 8
  %48 = getelementptr inbounds %struct.xhci_hcd_mtk, %struct.xhci_hcd_mtk* %47, i32 0, i32 0
  store %struct.mu3h_sch_bw_info* %46, %struct.mu3h_sch_bw_info** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %27
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(i32) #1

declare dso_local %struct.mu3h_sch_bw_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
