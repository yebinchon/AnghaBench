; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i8* }

@DWC3_GSNPSID = common dso_local global i32 0, align 4
@DWC3_GSNPSID_MASK = common dso_local global i32 0, align 4
@DWC3_VER_NUMBER = common dso_local global i32 0, align 4
@DWC3_REVISION_IS_DWC31 = common dso_local global i32 0, align 4
@DWC3_VER_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @dwc3_core_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_core_is_valid(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %5 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %6 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DWC3_GSNPSID, align 4
  %9 = call i8* @dwc3_readl(i32 %7, i32 %8)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @DWC3_GSNPSID_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 1429405696
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %18 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %47

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DWC3_GSNPSID_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 858849280
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DWC3_VER_NUMBER, align 4
  %29 = call i8* @dwc3_readl(i32 %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %32 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @DWC3_REVISION_IS_DWC31, align 4
  %34 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DWC3_VER_TYPE, align 4
  %42 = call i8* @dwc3_readl(i32 %40, i32 %41)
  %43 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %44 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %46

45:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %48

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46, %15
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i8* @dwc3_readl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
