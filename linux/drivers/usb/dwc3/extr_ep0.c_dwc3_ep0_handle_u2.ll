; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_u2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_u2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, i64 }

@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DWC3_DSTS_SUPERSPEED = common dso_local global i64 0, align 8
@DWC3_DSTS_SUPERSPEED_PLUS = common dso_local global i64 0, align 8
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_INITU2ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, i32, i32)* @dwc3_ep0_handle_u2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_handle_u2(%struct.dwc3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DWC3_DSTS_SUPERSPEED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %23 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DWC3_DSTS_SUPERSPEED_PLUS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %65

30:                                               ; preds = %21, %15
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %33, %30
  %42 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %43 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DWC3_DCTL, align 4
  %46 = call i32 @dwc3_readl(i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @DWC3_DCTL_INITU2ENA, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %58

53:                                               ; preds = %41
  %54 = load i32, i32* @DWC3_DCTL_INITU2ENA, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %60 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DWC3_DCTL, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dwc3_writel(i32 %61, i32 %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %38, %27, %12
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
