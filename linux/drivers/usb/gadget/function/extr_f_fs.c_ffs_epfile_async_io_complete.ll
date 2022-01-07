; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfile_async_io_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfile_async_io_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { %struct.ffs_io_data* }
%struct.ffs_io_data = type { i32, %struct.ffs_data* }
%struct.ffs_data = type { i32 }

@ffs_user_copy_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @ffs_epfile_async_io_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_epfile_async_io_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.ffs_io_data*, align 8
  %6 = alloca %struct.ffs_data*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %7 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %8 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %7, i32 0, i32 0
  %9 = load %struct.ffs_io_data*, %struct.ffs_io_data** %8, align 8
  store %struct.ffs_io_data* %9, %struct.ffs_io_data** %5, align 8
  %10 = load %struct.ffs_io_data*, %struct.ffs_io_data** %5, align 8
  %11 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %10, i32 0, i32 1
  %12 = load %struct.ffs_data*, %struct.ffs_data** %11, align 8
  store %struct.ffs_data* %12, %struct.ffs_data** %6, align 8
  %13 = call i32 (...) @ENTER()
  %14 = load %struct.ffs_io_data*, %struct.ffs_io_data** %5, align 8
  %15 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %14, i32 0, i32 0
  %16 = load i32, i32* @ffs_user_copy_worker, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.ffs_data*, %struct.ffs_data** %6, align 8
  %19 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ffs_io_data*, %struct.ffs_io_data** %5, align 8
  %22 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %21, i32 0, i32 0
  %23 = call i32 @queue_work(i32 %20, i32* %22)
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
