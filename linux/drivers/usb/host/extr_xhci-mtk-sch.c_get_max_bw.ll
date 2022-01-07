; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_get_max_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_get_max_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mu3h_sch_bw_info = type { i32* }
%struct.mu3h_sch_ep_info = type { i32, i32, i32* }

@XHCI_MTK_MAX_ESIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mu3h_sch_bw_info*, %struct.mu3h_sch_ep_info*, i32)* @get_max_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_bw(%struct.mu3h_sch_bw_info* %0, %struct.mu3h_sch_ep_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mu3h_sch_bw_info*, align 8
  %5 = alloca %struct.mu3h_sch_ep_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mu3h_sch_bw_info* %0, %struct.mu3h_sch_bw_info** %4, align 8
  store %struct.mu3h_sch_ep_info* %1, %struct.mu3h_sch_ep_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @XHCI_MTK_MAX_ESIT, align 4
  %14 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %15 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %64, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %26 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = add nsw i32 %23, %28
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %60, %22
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %33 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_bw_info** %4, align 8
  %38 = getelementptr inbounds %struct.mu3h_sch_bw_info, %struct.mu3h_sch_bw_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %47 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %45, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %30

63:                                               ; preds = %30
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %18

67:                                               ; preds = %18
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
