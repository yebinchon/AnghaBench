; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_roothub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_roothub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.u132 = type { i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, %struct.TYPE_5__, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@roothub = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, %struct.usb_hub_descriptor*)* @u132_roothub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_roothub_descriptor(%struct.u132* %0, %struct.usb_hub_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.u132*, align 8
  %5 = alloca %struct.usb_hub_descriptor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %4, align 8
  store %struct.usb_hub_descriptor* %1, %struct.usb_hub_descriptor** %5, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %10 = load %struct.u132*, %struct.u132** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 1), align 4
  %12 = call i32 @u132_read_pcimem(%struct.u132* %10, i32 %11, i32* %8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %140

17:                                               ; preds = %2
  %18 = load i32, i32* @USB_DT_HUB, align 4
  %19 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %20 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @RH_A_POTPGT, align 4
  %23 = and i32 %21, %22
  %24 = ashr i32 %23, 24
  %25 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %26 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %28 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.u132*, %struct.u132** %4, align 8
  %30 = getelementptr inbounds %struct.u132, %struct.u132* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %33 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.u132*, %struct.u132** %4, align 8
  %35 = getelementptr inbounds %struct.u132, %struct.u132* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 8
  %38 = add nsw i32 1, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 7, %40
  %42 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %43 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @HUB_CHAR_COMMON_LPSM, align 4
  %45 = load i32, i32* @HUB_CHAR_COMMON_OCPM, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RH_A_NPS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %17
  %52 = load i32, i32* @HUB_CHAR_NO_LPSM, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %17
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @RH_A_PSM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @HUB_CHAR_INDV_PORT_LPSM, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @RH_A_NOCP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @HUB_CHAR_NO_OCPM, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %83

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @RH_A_OCPM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @HUB_CHAR_INDV_PORT_OCPM, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %73
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @cpu_to_le16(i32 %84)
  %86 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %87 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.u132*, %struct.u132** %4, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 0), align 4
  %90 = call i32 @u132_read_pcimem(%struct.u132* %88, i32 %89, i32* %9)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %140

95:                                               ; preds = %83
  %96 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %97 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @memset(i32* %100, i32 255, i32 8)
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @RH_B_DR, align 4
  %104 = and i32 %102, %103
  %105 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %106 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %104, i32* %110, align 4
  %111 = load %struct.u132*, %struct.u132** %4, align 8
  %112 = getelementptr inbounds %struct.u132, %struct.u132* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 7
  br i1 %114, label %115, label %132

115:                                              ; preds = %95
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @RH_B_DR, align 4
  %118 = and i32 %116, %117
  %119 = ashr i32 %118, 8
  %120 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %121 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %119, i32* %125, align 4
  %126 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %127 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32 255, i32* %131, align 4
  br label %139

132:                                              ; preds = %95
  %133 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %5, align 8
  %134 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 255, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %115
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %93, %15
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @u132_read_pcimem(%struct.u132*, i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
