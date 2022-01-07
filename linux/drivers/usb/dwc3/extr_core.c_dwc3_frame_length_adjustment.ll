; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_frame_length_adjustment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_frame_length_adjustment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i32 }

@DWC3_REVISION_250A = common dso_local global i64 0, align 8
@DWC3_GFLADJ = common dso_local global i32 0, align 4
@DWC3_GFLADJ_30MHZ_MASK = common dso_local global i32 0, align 4
@DWC3_GFLADJ_30MHZ_SDBND_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_frame_length_adjustment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_frame_length_adjustment(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %5 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %6 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DWC3_REVISION_250A, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %49

17:                                               ; preds = %11
  %18 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DWC3_GFLADJ, align 4
  %22 = call i32 @dwc3_readl(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DWC3_GFLADJ_30MHZ_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %17
  %32 = load i32, i32* @DWC3_GFLADJ_30MHZ_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @DWC3_GFLADJ_30MHZ_SDBND_SEL, align 4
  %37 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %36, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %44 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DWC3_GFLADJ, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @dwc3_writel(i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %10, %16, %31, %17
  ret void
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
