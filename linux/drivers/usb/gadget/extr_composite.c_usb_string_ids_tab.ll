; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_string_ids_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_string_ids_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }
%struct.usb_string = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_string_ids_tab(%struct.usb_composite_dev* %0, %struct.usb_string* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_composite_dev*, align 8
  %5 = alloca %struct.usb_string*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %4, align 8
  store %struct.usb_string* %1, %struct.usb_string** %5, align 8
  %7 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %8 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load %struct.usb_string*, %struct.usb_string** %5, align 8
  %12 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 254
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.usb_string*, %struct.usb_string** %5, align 8
  %28 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %24
  %30 = load %struct.usb_string*, %struct.usb_string** %5, align 8
  %31 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %30, i32 1
  store %struct.usb_string* %31, %struct.usb_string** %5, align 8
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %35 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
