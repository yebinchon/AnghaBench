; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_update_display_powered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_update_display_powered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_sevsegdev = type { i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"power retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_sevsegdev*)* @update_display_powered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display_powered(%struct.usb_sevsegdev* %0) #0 {
  %2 = alloca %struct.usb_sevsegdev*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_sevsegdev* %0, %struct.usb_sevsegdev** %2, align 8
  %4 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %5 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %10 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %15 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_autopm_get_interface(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %72

21:                                               ; preds = %13
  %22 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %23 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %8, %1
  %25 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %26 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %72

30:                                               ; preds = %24
  %31 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %32 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %35 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %36, i32 0)
  %38 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %39 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = add nsw i32 0, %43
  %45 = call i32 @usb_control_msg(%struct.TYPE_3__* %33, i32 %37, i32 18, i32 72, i32 20490, i32 %44, i32* null, i32 0, i32 2000)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %30
  %49 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %50 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %49, i32 0, i32 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48, %30
  %56 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %57 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %62 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %67 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @usb_autopm_put_interface(i32 %68)
  %70 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %2, align 8
  %71 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %20, %29, %65, %60, %55
  ret void
}

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
