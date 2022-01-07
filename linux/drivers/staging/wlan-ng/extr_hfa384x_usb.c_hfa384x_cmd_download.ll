; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_cmd_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_cmd_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32 }
%struct.hfa384x_metacmd = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [54 x i8] c"mode=%d, lowaddr=0x%04x, highaddr=0x%04x, codelen=%d\0A\00", align 1
@HFA384x_CMDCODE_DOWNLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_cmd_download(%struct.hfa384x* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hfa384x_metacmd, align 8
  store %struct.hfa384x* %0, %struct.hfa384x** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13, i8* %14, i8* %15)
  %17 = load i32, i32* @HFA384x_CMDCODE_DOWNLD, align 4
  %18 = call i32 @HFA384x_CMD_CMDCODE_SET(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @HFA384x_CMD_PROGMODE_SET(i8* %19)
  %21 = or i32 %18, %20
  %22 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %11, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %11, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds %struct.hfa384x_metacmd, %struct.hfa384x_metacmd* %11, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %30 = call i32 @hfa384x_docmd(%struct.hfa384x* %29, %struct.hfa384x_metacmd* %11)
  ret i32 %30
}

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @HFA384x_CMD_CMDCODE_SET(i32) #1

declare dso_local i32 @HFA384x_CMD_PROGMODE_SET(i8*) #1

declare dso_local i32 @hfa384x_docmd(%struct.hfa384x*, %struct.hfa384x_metacmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
