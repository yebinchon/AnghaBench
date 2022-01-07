; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfile_io_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfile_io_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.ffs_ep* }
%struct.ffs_ep = type { i64 }
%struct.usb_request = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @ffs_epfile_io_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_epfile_io_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.ffs_ep*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %6 = call i32 (...) @ENTER()
  %7 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %8 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %14 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %13, i32 0, i32 0
  %15 = load %struct.ffs_ep*, %struct.ffs_ep** %14, align 8
  store %struct.ffs_ep* %15, %struct.ffs_ep** %5, align 8
  %16 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %17 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %22 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  br label %28

24:                                               ; preds = %12
  %25 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i64 [ %23, %20 ], [ %27, %24 ]
  %30 = load %struct.ffs_ep*, %struct.ffs_ep** %5, align 8
  %31 = getelementptr inbounds %struct.ffs_ep, %struct.ffs_ep* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %33 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @complete(i32 %34)
  br label %36

36:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
