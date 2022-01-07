; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_usb2_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_usb2_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { %struct.xhci_hub }
%struct.xhci_hub = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.usb_hub_descriptor = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }

@USB_MAXCHILDREN = common dso_local global i32 0, align 4
@USB_DT_HUB = common dso_local global i32 0, align 4
@USB_DT_HUB_NONVAR_SIZE = common dso_local global i64 0, align 8
@PORT_DEV_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.xhci_hcd*, %struct.usb_hub_descriptor*)* @xhci_usb2_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_usb2_hub_descriptor(%struct.usb_hcd* %0, %struct.xhci_hcd* %1, %struct.usb_hub_descriptor* %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.usb_hub_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xhci_hub*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.xhci_hcd* %1, %struct.xhci_hcd** %5, align 8
  store %struct.usb_hub_descriptor* %2, %struct.usb_hub_descriptor** %6, align 8
  %14 = load i32, i32* @USB_MAXCHILDREN, align 4
  %15 = add nsw i32 %14, 1
  %16 = add nsw i32 %15, 7
  %17 = sdiv i32 %16, 8
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 0
  store %struct.xhci_hub* %22, %struct.xhci_hub** %13, align 8
  %23 = load %struct.xhci_hub*, %struct.xhci_hub** %13, align 8
  %24 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %27 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @xhci_common_hub_descriptor(%struct.xhci_hcd* %26, %struct.usb_hub_descriptor* %27, i32 %28)
  %30 = load i32, i32* @USB_DT_HUB, align 4
  %31 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %32 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 8
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %8, align 4
  %36 = load i64, i64* @USB_DT_HUB_NONVAR_SIZE, align 8
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %42 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = mul nuw i64 4, %18
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memset(i32* %20, i32 0, i32 %44)
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %78, %3
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = load %struct.xhci_hub*, %struct.xhci_hub** %13, align 8
  %52 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @readl(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PORT_DEV_REMOVE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %50
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  %68 = urem i32 %67, 8
  %69 = shl i32 1, %68
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %70, 1
  %72 = udiv i32 %71, 8
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %20, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %69
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %65, %50
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %46

81:                                               ; preds = %46
  %82 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %83 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @memset(i32* %86, i32 255, i32 8)
  %88 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %89 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @memset(i32* %92, i32 255, i32 8)
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %115, %81
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  %98 = add nsw i32 %97, 7
  %99 = sdiv i32 %98, 8
  %100 = icmp ult i32 %95, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %94
  %102 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %103 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %20, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memset(i32* %109, i32 %113, i32 4)
  br label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %12, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %94

118:                                              ; preds = %94
  %119 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %119)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xhci_common_hub_descriptor(%struct.xhci_hcd*, %struct.usb_hub_descriptor*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @readl(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
