; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_composite_setup_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_composite_setup_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64 }
%struct.usb_request = type { i64, i64, %struct.usb_composite_dev*, i64 }
%struct.usb_composite_dev = type { i32, i32, %struct.usb_request*, %struct.usb_request* }

@.str = private unnamed_addr constant [30 x i8] c"setup complete --> %d, %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown request %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @composite_setup_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @composite_setup_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %6 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %7 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %12 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %15 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %10, %2
  %19 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %20 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.usb_composite_dev*
  %23 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %24 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %27 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %30 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @DBG(%struct.usb_composite_dev* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %18, %10
  %34 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 2
  %36 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %35, align 8
  %37 = icmp ne %struct.usb_composite_dev* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %64

39:                                               ; preds = %33
  %40 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %41 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %40, i32 0, i32 2
  %42 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %41, align 8
  store %struct.usb_composite_dev* %42, %struct.usb_composite_dev** %5, align 8
  %43 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %44 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %43, i32 0, i32 3
  %45 = load %struct.usb_request*, %struct.usb_request** %44, align 8
  %46 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %47 = icmp eq %struct.usb_request* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %50 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %64

51:                                               ; preds = %39
  %52 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %53 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %52, i32 0, i32 2
  %54 = load %struct.usb_request*, %struct.usb_request** %53, align 8
  %55 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %56 = icmp eq %struct.usb_request* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %59 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %63

60:                                               ; preds = %51
  %61 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %62 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.usb_request* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %38, %63, %48
  ret void
}

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i64, i64, i64) #1

declare dso_local i32 @WARN(i32, i8*, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
