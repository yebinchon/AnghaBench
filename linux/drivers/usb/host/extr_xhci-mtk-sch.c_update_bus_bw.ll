; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_update_bus_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_update_bus_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mu3h_sch_bw_info = type { i32* }
%struct.mu3h_sch_ep_info = type { i32, i32, i32, i64* }

@XHCI_MTK_MAX_ESIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mu3h_sch_bw_info*, %struct.mu3h_sch_ep_info*, i32)* @update_bus_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_bus_bw(%struct.mu3h_sch_bw_info* %0, %struct.mu3h_sch_ep_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mu3h_sch_bw_info*, align 8
  %5 = alloca %struct.mu3h_sch_ep_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mu3h_sch_bw_info* %0, %struct.mu3h_sch_bw_info** %4, align 8
  store %struct.mu3h_sch_ep_info* %1, %struct.mu3h_sch_ep_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @XHCI_MTK_MAX_ESIT, align 4
  %12 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %13 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %11, %14
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %84, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %16
  %21 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %22 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %26 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = add nsw i32 %23, %28
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %80, %20
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %33 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %41 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_bw_info** %4, align 8
  %48 = getelementptr inbounds %struct.mu3h_sch_bw_info, %struct.mu3h_sch_bw_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %46
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  br label %79

59:                                               ; preds = %36
  %60 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %5, align 8
  %61 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_bw_info** %4, align 8
  %68 = getelementptr inbounds %struct.mu3h_sch_bw_info, %struct.mu3h_sch_bw_info* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %66
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  br label %79

79:                                               ; preds = %59, %39
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %30

83:                                               ; preds = %30
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %16

87:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
