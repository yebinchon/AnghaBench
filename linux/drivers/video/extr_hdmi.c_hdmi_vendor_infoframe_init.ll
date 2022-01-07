; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_infoframe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_infoframe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_vendor_infoframe = type { i32, i32, i32, i32, i32 }

@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@HDMI_IEEE_OUI = common dso_local global i32 0, align 4
@HDMI_3D_STRUCTURE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe* %0) #0 {
  %2 = alloca %struct.hdmi_vendor_infoframe*, align 8
  store %struct.hdmi_vendor_infoframe* %0, %struct.hdmi_vendor_infoframe** %2, align 8
  %3 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %2, align 8
  %4 = call i32 @memset(%struct.hdmi_vendor_infoframe* %3, i32 0, i32 20)
  %5 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %6 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 4
  %8 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %2, align 8
  %9 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @HDMI_IEEE_OUI, align 4
  %11 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %2, align 8
  %12 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @HDMI_3D_STRUCTURE_INVALID, align 4
  %14 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %2, align 8
  %15 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %2, align 8
  %17 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %16, i32 0, i32 1
  store i32 4, i32* %17, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.hdmi_vendor_infoframe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
