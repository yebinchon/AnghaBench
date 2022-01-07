; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_update_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_update_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_sevsegdev = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"mode retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_sevsegdev*)* @update_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display_mode(%struct.usb_sevsegdev* %0) #0 {
  %2 = alloca %struct.usb_sevsegdev*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_sevsegdev* %0, %struct.usb_sevsegdev** %2, align 8
  %4 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %5 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %11 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %14 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %15, i32 0)
  %17 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %18 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 256
  %21 = sext i32 %20 to i64
  %22 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %23 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 @usb_control_msg(%struct.TYPE_3__* %12, i32 %16, i32 18, i32 72, i32 21002, i64 %25, i32* null, i32 0, i32 2000)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %9
  %30 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %31 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %8, %29, %9
  ret void
}

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
