; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_empeg.c_empeg_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_empeg.c_empeg_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"active config #%d != 1 ??\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @empeg_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empeg_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %5 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %6 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %16 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %20 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %32 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @usb_reset_configuration(%struct.TYPE_6__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_reset_configuration(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
