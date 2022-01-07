; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_epio_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_epio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.ep_data* }
%struct.ep_data = type { i64 }
%struct.usb_request = type { i64, i64, i64 }
%struct.completion = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @epio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epio_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.ep_data*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %6 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %7 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %6, i32 0, i32 0
  %8 = load %struct.ep_data*, %struct.ep_data** %7, align 8
  store %struct.ep_data* %8, %struct.ep_data** %5, align 8
  %9 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %10 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %16 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %21 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %24 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %31

25:                                               ; preds = %14
  %26 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %27 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %30 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %33 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.completion*
  %36 = call i32 @complete(%struct.completion* %35)
  br label %37

37:                                               ; preds = %31, %13
  ret void
}

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
