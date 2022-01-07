; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_free_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_free_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uas_dev_info = type { i32, i32, i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uas_dev_info*)* @uas_free_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uas_free_streams(%struct.uas_dev_info* %0) #0 {
  %2 = alloca %struct.uas_dev_info*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca [3 x %struct.usb_host_endpoint*], align 16
  store %struct.uas_dev_info* %0, %struct.uas_dev_info** %2, align 8
  %5 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %6 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %5, i32 0, i32 4
  %7 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  store %struct.usb_device* %7, %struct.usb_device** %3, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %10 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device* %8, i32 %11)
  %13 = getelementptr inbounds [3 x %struct.usb_host_endpoint*], [3 x %struct.usb_host_endpoint*]* %4, i64 0, i64 0
  store %struct.usb_host_endpoint* %12, %struct.usb_host_endpoint** %13, align 16
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %16 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device* %14, i32 %17)
  %19 = getelementptr inbounds [3 x %struct.usb_host_endpoint*], [3 x %struct.usb_host_endpoint*]* %4, i64 0, i64 1
  store %struct.usb_host_endpoint* %18, %struct.usb_host_endpoint** %19, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %21 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %22 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device* %20, i32 %23)
  %25 = getelementptr inbounds [3 x %struct.usb_host_endpoint*], [3 x %struct.usb_host_endpoint*]* %4, i64 0, i64 2
  store %struct.usb_host_endpoint* %24, %struct.usb_host_endpoint** %25, align 16
  %26 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %27 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds [3 x %struct.usb_host_endpoint*], [3 x %struct.usb_host_endpoint*]* %4, i64 0, i64 0
  %30 = load i32, i32* @GFP_NOIO, align 4
  %31 = call i32 @usb_free_streams(i32 %28, %struct.usb_host_endpoint** %29, i32 3, i32 %30)
  ret void
}

declare dso_local %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_free_streams(i32, %struct.usb_host_endpoint**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
