; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_spd_infoframe = type { i32, i32, i32 }
%struct.hdmi_any_infoframe = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"    vendor: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"    product: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"    source device information: %s (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.device*, %struct.hdmi_spd_infoframe*)* @hdmi_spd_infoframe_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_spd_infoframe_log(i8* %0, %struct.device* %1, %struct.hdmi_spd_infoframe* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hdmi_spd_infoframe*, align 8
  %7 = alloca [17 x i32], align 16
  store i8* %0, i8** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.hdmi_spd_infoframe* %2, %struct.hdmi_spd_infoframe** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %6, align 8
  %11 = bitcast %struct.hdmi_spd_infoframe* %10 to %struct.hdmi_any_infoframe*
  %12 = call i32 @hdmi_infoframe_log_header(i8* %8, %struct.device* %9, %struct.hdmi_any_infoframe* %11)
  %13 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 68)
  %15 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %16 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %6, align 8
  %17 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strncpy(i32* %15, i32 %18, i32 8)
  %20 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %24 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %6, align 8
  %25 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strncpy(i32* %23, i32 %26, i32 16)
  %28 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %29 = ptrtoint i32* %28 to i32
  %30 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %6, align 8
  %32 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hdmi_spd_sdi_get_name(i32 %33)
  %35 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %6, align 8
  %36 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @hdmi_infoframe_log_header(i8*, %struct.device*, %struct.hdmi_any_infoframe*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i32, i32) #1

declare dso_local i32 @hdmi_log(i8*, i32, ...) #1

declare dso_local i32 @hdmi_spd_sdi_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
