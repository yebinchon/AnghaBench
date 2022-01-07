; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_bulkin_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_bulkin_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i64, i32, i32, %struct.urb* }
%struct.urb = type { i32, i32, i32 }

@sisusb_bulk_completein = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i8*, i32, i32*, i32, i32)* @sisusb_bulkin_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_bulkin_msg(%struct.sisusb_usb_data* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sisusb_usb_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.urb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %19 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %18, i32 0, i32 3
  %20 = load %struct.urb*, %struct.urb** %19, align 8
  store %struct.urb* %20, %struct.urb** %15, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.urb*, %struct.urb** %15, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.urb*, %struct.urb** %15, align 8
  %24 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %25 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @sisusb_bulk_completein, align 4
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %32 = call i32 @usb_fill_bulk_urb(%struct.urb* %23, i32 %26, i32 %27, i8* %28, i32 %29, i32 %30, %struct.sisusb_usb_data* %31)
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.urb*, %struct.urb** %15, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.urb*, %struct.urb** %15, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %41 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.urb*, %struct.urb** %15, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @usb_submit_urb(%struct.urb* %42, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %7
  %48 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %49 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %52 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @wait_event_timeout(i32 %50, i64 %53, i32 %54)
  %56 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %57 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %47
  %61 = load %struct.urb*, %struct.urb** %15, align 8
  %62 = call i32 @usb_kill_urb(%struct.urb* %61)
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  br label %72

65:                                               ; preds = %47
  %66 = load %struct.urb*, %struct.urb** %15, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %16, align 4
  %69 = load %struct.urb*, %struct.urb** %15, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %7
  %74 = load i32*, i32** %12, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %17, align 4
  %78 = load i32*, i32** %12, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %16, align 4
  ret i32 %80
}

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.sisusb_usb_data*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
