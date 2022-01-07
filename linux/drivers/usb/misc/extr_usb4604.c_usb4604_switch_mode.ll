; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb4604.c_usb4604_switch_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb4604.c_usb4604_switch_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb4604 = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"switched to STANDBY mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown mode is requested\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb4604*, i32)* @usb4604_switch_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb4604_switch_mode(%struct.usb4604* %0, i32 %1) #0 {
  %3 = alloca %struct.usb4604*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.usb4604* %0, %struct.usb4604** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %8 = getelementptr inbounds %struct.usb4604, %struct.usb4604* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %14
  ]

11:                                               ; preds = %2
  %12 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %13 = call i32 @usb4604_connect(%struct.usb4604* %12)
  store i32 %13, i32* %6, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.usb4604*, %struct.usb4604** %3, align 8
  %16 = call i32 @usb4604_reset(%struct.usb4604* %15, i32 0)
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %14, %11
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @usb4604_connect(%struct.usb4604*) #1

declare dso_local i32 @usb4604_reset(%struct.usb4604*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
