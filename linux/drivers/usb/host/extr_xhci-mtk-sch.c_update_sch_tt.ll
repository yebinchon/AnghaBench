; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_update_sch_tt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_update_sch_tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mu3h_sch_ep_info = type { i32, i32, i32, i32, %struct.mu3h_sch_tt* }
%struct.mu3h_sch_tt = type { i32, i32 }

@XHCI_MTK_MAX_ESIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.mu3h_sch_ep_info*)* @update_sch_tt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sch_tt(%struct.usb_device* %0, %struct.mu3h_sch_ep_info* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.mu3h_sch_ep_info*, align 8
  %5 = alloca %struct.mu3h_sch_tt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.mu3h_sch_ep_info* %1, %struct.mu3h_sch_ep_info** %4, align 8
  %10 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %4, align 8
  %11 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %10, i32 0, i32 4
  %12 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %11, align 8
  store %struct.mu3h_sch_tt* %12, %struct.mu3h_sch_tt** %5, align 8
  %13 = load i32, i32* @XHCI_MTK_MAX_ESIT, align 4
  %14 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %4, align 8
  %15 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %50, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %4, align 8
  %24 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %4, align 8
  %28 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 %25, %30
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %46, %22
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %4, align 8
  %35 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  %42 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  %43 = getelementptr inbounds %struct.mu3h_sch_tt, %struct.mu3h_sch_tt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_bit(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %32

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %4, align 8
  %55 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %54, i32 0, i32 3
  %56 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  %57 = getelementptr inbounds %struct.mu3h_sch_tt, %struct.mu3h_sch_tt* %56, i32 0, i32 0
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
