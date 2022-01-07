; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_td_remainder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_td_remainder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32 }
%struct.urb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XHCI_MTK_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, i32, i32, i32, %struct.urb*, i32)* @xhci_td_remainder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_td_remainder(%struct.xhci_hcd* %0, i32 %1, i32 %2, i32 %3, %struct.urb* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.urb* %4, %struct.urb** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %17 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %32

20:                                               ; preds = %6
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XHCI_MTK_HOST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub i32 %28, %29
  %31 = lshr i32 %30, 10
  store i32 %31, i32* %7, align 4
  br label %75

32:                                               ; preds = %20, %6
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %38, %32
  store i32 0, i32* %7, align 4
  br label %75

46:                                               ; preds = %41
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %48 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @XHCI_MTK_HOST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %55 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 256
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %53, %46
  %60 = load %struct.urb*, %struct.urb** %12, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @usb_endpoint_maxp(i32* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @DIV_ROUND_UP(i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %14, align 4
  %73 = udiv i32 %71, %72
  %74 = sub i32 %68, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %59, %45, %27
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @usb_endpoint_maxp(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
