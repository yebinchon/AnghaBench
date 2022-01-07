; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_infoframe_log_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_infoframe_log_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_any_infoframe = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"HDMI infoframe: %s, version %u, length %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.device*, %struct.hdmi_any_infoframe*)* @hdmi_infoframe_log_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_infoframe_log_header(i8* %0, %struct.device* %1, %struct.hdmi_any_infoframe* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hdmi_any_infoframe*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.hdmi_any_infoframe* %2, %struct.hdmi_any_infoframe** %6, align 8
  %7 = load %struct.hdmi_any_infoframe*, %struct.hdmi_any_infoframe** %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hdmi_infoframe_type_get_name(i32 %9)
  %11 = load %struct.hdmi_any_infoframe*, %struct.hdmi_any_infoframe** %6, align 8
  %12 = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hdmi_any_infoframe*, %struct.hdmi_any_infoframe** %6, align 8
  %15 = getelementptr inbounds %struct.hdmi_any_infoframe, %struct.hdmi_any_infoframe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hdmi_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  ret void
}

declare dso_local i32 @hdmi_log(i8*, i32, i32, i32) #1

declare dso_local i32 @hdmi_infoframe_type_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
