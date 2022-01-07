; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hub.c_ohci_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hub.c_ohci_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, %struct.TYPE_4__, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@USB_DT_HUB = common dso_local global i32 0, align 4
@RH_A_POTPGT = common dso_local global i32 0, align 4
@HUB_CHAR_COMMON_LPSM = common dso_local global i32 0, align 4
@HUB_CHAR_COMMON_OCPM = common dso_local global i32 0, align 4
@RH_A_NPS = common dso_local global i32 0, align 4
@HUB_CHAR_NO_LPSM = common dso_local global i32 0, align 4
@RH_A_PSM = common dso_local global i32 0, align 4
@HUB_CHAR_INDV_PORT_LPSM = common dso_local global i32 0, align 4
@RH_A_NOCP = common dso_local global i32 0, align 4
@HUB_CHAR_NO_OCPM = common dso_local global i32 0, align 4
@RH_A_OCPM = common dso_local global i32 0, align 4
@HUB_CHAR_INDV_PORT_OCPM = common dso_local global i32 0, align 4
@RH_B_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*, %struct.usb_hub_descriptor*)* @ohci_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_hub_descriptor(%struct.ohci_hcd* %0, %struct.usb_hub_descriptor* %1) #0 {
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca %struct.usb_hub_descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  store %struct.usb_hub_descriptor* %1, %struct.usb_hub_descriptor** %4, align 8
  %7 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %8 = call i32 @roothub_a(%struct.ohci_hcd* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @USB_DT_HUB, align 4
  %10 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %11 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RH_A_POTPGT, align 4
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 24
  %16 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %17 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %24 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  %29 = add nsw i32 1, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 7, %31
  %33 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %34 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @HUB_CHAR_COMMON_LPSM, align 4
  %36 = load i32, i32* @HUB_CHAR_COMMON_OCPM, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @RH_A_NPS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i32, i32* @HUB_CHAR_NO_LPSM, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %2
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @RH_A_PSM, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @HUB_CHAR_INDV_PORT_LPSM, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @RH_A_NOCP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @HUB_CHAR_NO_OCPM, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %74

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @RH_A_OCPM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @HUB_CHAR_INDV_PORT_OCPM, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %78 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %80 = call i32 @roothub_b(%struct.ohci_hcd* %79)
  store i32 %80, i32* %5, align 4
  %81 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %82 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @memset(i32* %85, i32 255, i32 8)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @RH_B_DR, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %91 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %89, i32* %95, align 4
  %96 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %97 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 7
  br i1 %99, label %100, label %117

100:                                              ; preds = %74
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @RH_B_DR, align 4
  %103 = and i32 %101, %102
  %104 = ashr i32 %103, 8
  %105 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %106 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %104, i32* %110, align 4
  %111 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %112 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 255, i32* %116, align 4
  br label %124

117:                                              ; preds = %74
  %118 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %119 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 255, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %100
  ret void
}

declare dso_local i32 @roothub_a(%struct.ohci_hcd*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @roothub_b(%struct.ohci_hcd*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
