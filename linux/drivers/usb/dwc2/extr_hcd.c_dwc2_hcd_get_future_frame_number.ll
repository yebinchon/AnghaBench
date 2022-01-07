; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_get_future_frame_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_get_future_frame_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@HPRT0 = common dso_local global i32 0, align 4
@HFIR = common dso_local global i32 0, align 4
@HFNUM = common dso_local global i32 0, align 4
@HPRT0_SPD_MASK = common dso_local global i32 0, align 4
@HFNUM_FRNUM_MASK = common dso_local global i32 0, align 4
@HFNUM_FRNUM_SHIFT = common dso_local global i32 0, align 4
@HFNUM_FRREM_MASK = common dso_local global i32 0, align 4
@HFNUM_FRREM_SHIFT = common dso_local global i32 0, align 4
@HFIR_FRINT_MASK = common dso_local global i32 0, align 4
@HFIR_FRINT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_hcd_get_future_frame_number(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = load i32, i32* @HPRT0, align 4
  %15 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %17 = load i32, i32* @HFIR, align 4
  %18 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %20 = load i32, i32* @HFNUM, align 4
  %21 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @HPRT0_SPD_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1000, i32 125
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HFNUM_FRNUM_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @HFNUM_FRNUM_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @HFNUM_FRREM_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @HFNUM_FRREM_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @HFIR_FRINT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @HFIR_FRINT_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub i32 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %4, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @DIV_ROUND_UP(i32 %48, i32 %49)
  %51 = add i32 %45, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = udiv i32 %53, %54
  %56 = call i32 @dwc2_frame_num_inc(i32 %52, i32 %55)
  ret i32 %56
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dwc2_frame_num_inc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
