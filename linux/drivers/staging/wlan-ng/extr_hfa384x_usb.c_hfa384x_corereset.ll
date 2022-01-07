; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_corereset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_corereset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"usb_reset_device() failed, result=%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_corereset(%struct.hfa384x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hfa384x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %11 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @usb_reset_device(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %18 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @netdev_err(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %16, %4
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
