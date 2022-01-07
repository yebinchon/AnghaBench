; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_loopback.c_enable_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_loopback.c_enable_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }
%struct.f_loopback = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*, %struct.f_loopback*)* @enable_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_loopback(%struct.usb_composite_dev* %0, %struct.f_loopback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_composite_dev*, align 8
  %5 = alloca %struct.f_loopback*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %4, align 8
  store %struct.f_loopback* %1, %struct.f_loopback** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %8 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %9 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %10 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @enable_endpoint(%struct.usb_composite_dev* %7, %struct.f_loopback* %8, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %18 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %19 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %20 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @enable_endpoint(%struct.usb_composite_dev* %17, %struct.f_loopback* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %45

26:                                               ; preds = %16
  %27 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %28 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %29 = call i32 @alloc_requests(%struct.usb_composite_dev* %27, %struct.f_loopback* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %40

33:                                               ; preds = %26
  %34 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %35 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %36 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DBG(%struct.usb_composite_dev* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %42 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_ep_disable(i32 %43)
  br label %45

45:                                               ; preds = %40, %25
  %46 = load %struct.f_loopback*, %struct.f_loopback** %5, align 8
  %47 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_ep_disable(i32 %48)
  br label %50

50:                                               ; preds = %45, %15
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %33
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @enable_endpoint(%struct.usb_composite_dev*, %struct.f_loopback*, i32) #1

declare dso_local i32 @alloc_requests(%struct.usb_composite_dev*, %struct.f_loopback*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @usb_ep_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
