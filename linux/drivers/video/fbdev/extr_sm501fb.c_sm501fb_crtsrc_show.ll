; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_crtsrc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_crtsrc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sm501fb_info = type { i64 }

@SM501_DC_CRT_CONTROL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_SEL = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"crt\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"panel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sm501fb_crtsrc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_crtsrc_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sm501fb_info*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.sm501fb_info* @dev_get_drvdata(%struct.device* %9)
  store %struct.sm501fb_info* %10, %struct.sm501fb_info** %7, align 8
  %11 = load %struct.sm501fb_info*, %struct.sm501fb_info** %7, align 8
  %12 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @smc501_readl(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @SM501_DC_CRT_CONTROL_SEL, align 8
  %18 = load i64, i64* %8, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  ret i32 %26
}

declare dso_local %struct.sm501fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @smc501_readl(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
