; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spd_infoframe = type { i32, i32, i32, i32, i32 }

@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_SPD_INFOFRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hdmi_spd_infoframe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.hdmi_spd_infoframe* %0, %struct.hdmi_spd_infoframe** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %4, align 8
  %8 = call i32 @memset(%struct.hdmi_spd_infoframe* %7, i32 0, i32 20)
  %9 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %10 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %4, align 8
  %11 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %4, align 8
  %13 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* @HDMI_SPD_INFOFRAME_SIZE, align 4
  %15 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %4, align 8
  %18 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strncpy(i32 %19, i8* %20, i32 4)
  %22 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %4, align 8
  %23 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strncpy(i32 %24, i8* %25, i32 4)
  ret i32 0
}

declare dso_local i32 @memset(%struct.hdmi_spd_infoframe*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
