; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_recalc_initial_desc_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_recalc_initial_desc_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i32, i32, i32, i64 }

@FRLISTEN_64_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_recalc_initial_desc_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_recalc_initial_desc_idx(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %9 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %10 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %15 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %16 = call i8* @dwc2_calc_starting_frame(%struct.dwc2_hsotg* %14, %struct.dwc2_qh* %15, i32* %8)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dwc2_frame_list_idx(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @FRLISTEN_64_SIZE, align 4
  %21 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %22 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dwc2_frame_list_idx(i32 %23)
  %25 = add nsw i32 %20, %24
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %29 = call i32 @dwc2_frame_incr_val(%struct.dwc2_qh* %28)
  %30 = srem i32 %27, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @FRLISTEN_64_SIZE, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %38 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %39 = call i8* @dwc2_calc_starting_frame(%struct.dwc2_hsotg* %37, %struct.dwc2_qh* %38, i32* %8)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %42 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %44 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dwc2_frame_list_idx(i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %36, %13
  %48 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dwc2_frame_to_desc_idx(%struct.dwc2_qh* %48, i32 %49)
  %51 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %52 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %54 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i8* @dwc2_calc_starting_frame(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32*) #1

declare dso_local i32 @dwc2_frame_list_idx(i32) #1

declare dso_local i32 @dwc2_frame_incr_val(%struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_frame_to_desc_idx(%struct.dwc2_qh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
