; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DWC3_OEVT = common dso_local global i32 0, align 4
@DWC3_OTG_ALL_EVENTS = common dso_local global i32 0, align 4
@DWC3_OTG_ROLE_HOST = common dso_local global i64 0, align 8
@DWC3_OEVT_DEVICEMODE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dwc3_otg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_otg_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc3*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dwc3*
  store %struct.dwc3* %10, %struct.dwc3** %7, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DWC3_OEVT, align 4
  %16 = call i32 @dwc3_readl(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DWC3_OTG_ALL_EVENTS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DWC3_OEVT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dwc3_writel(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %19
  %33 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %34 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DWC3_OTG_ROLE_HOST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @DWC3_OEVT_DEVICEMODE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %45 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %38, %32
  %47 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %48 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DWC3_OEVT, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dwc3_writel(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %46, %2
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
