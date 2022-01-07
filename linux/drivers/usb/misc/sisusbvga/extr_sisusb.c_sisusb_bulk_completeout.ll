; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_bulk_completeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_bulk_completeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.sisusb_urb_context* }
%struct.sisusb_urb_context = type { i64, i32*, %struct.sisusb_usb_data* }
%struct.sisusb_usb_data = type { i32, i32*, i32, i32 }

@SU_URB_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @sisusb_bulk_completeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusb_bulk_completeout(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sisusb_urb_context*, align 8
  %4 = alloca %struct.sisusb_usb_data*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 1
  %7 = load %struct.sisusb_urb_context*, %struct.sisusb_urb_context** %6, align 8
  store %struct.sisusb_urb_context* %7, %struct.sisusb_urb_context** %3, align 8
  %8 = load %struct.sisusb_urb_context*, %struct.sisusb_urb_context** %3, align 8
  %9 = icmp ne %struct.sisusb_urb_context* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.sisusb_urb_context*, %struct.sisusb_urb_context** %3, align 8
  %13 = getelementptr inbounds %struct.sisusb_urb_context, %struct.sisusb_urb_context* %12, i32 0, i32 2
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %13, align 8
  store %struct.sisusb_usb_data* %14, %struct.sisusb_usb_data** %4, align 8
  %15 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %16 = icmp ne %struct.sisusb_usb_data* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %19 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %24 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %11
  br label %59

28:                                               ; preds = %22
  %29 = load %struct.sisusb_urb_context*, %struct.sisusb_urb_context** %3, align 8
  %30 = getelementptr inbounds %struct.sisusb_urb_context, %struct.sisusb_urb_context* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sisusb_urb_context*, %struct.sisusb_urb_context** %3, align 8
  %38 = getelementptr inbounds %struct.sisusb_urb_context, %struct.sisusb_urb_context* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %36
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  br label %44

44:                                               ; preds = %33, %28
  %45 = load i32, i32* @SU_URB_BUSY, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %48 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.sisusb_urb_context*, %struct.sisusb_urb_context** %3, align 8
  %51 = getelementptr inbounds %struct.sisusb_urb_context, %struct.sisusb_urb_context* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %46
  store i32 %55, i32* %53, align 4
  %56 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %57 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %56, i32 0, i32 0
  %58 = call i32 @wake_up(i32* %57)
  br label %59

59:                                               ; preds = %44, %27, %10
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
