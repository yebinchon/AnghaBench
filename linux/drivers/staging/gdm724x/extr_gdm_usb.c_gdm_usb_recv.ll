; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lte_udev = type { i32 (i8*, i8*, i32, i32)*, %struct.usb_device*, %struct.rx_cxt }
%struct.usb_device = type { i32 }
%struct.rx_cxt = type { i32, i32 }
%struct.usb_rx = type { i32 (i8*, i8*, i32, i32)*, i32, i32, i32, %struct.rx_cxt*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"invalid device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@gdm_usb_rcv_complete = common dso_local global i32 0, align 4
@KERNEL_THREAD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"usb_submit_urb failed (%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (i8*, i8*, i32, i32)*, i8*, i32)* @gdm_usb_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_usb_recv(i8* %0, i32 (i8*, i8*, i32, i32)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i32, i32)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lte_udev*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.rx_cxt*, align 8
  %13 = alloca %struct.usb_rx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 (i8*, i8*, i32, i32)* %1, i32 (i8*, i8*, i32, i32)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.lte_udev*
  store %struct.lte_udev* %18, %struct.lte_udev** %10, align 8
  %19 = load %struct.lte_udev*, %struct.lte_udev** %10, align 8
  %20 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %19, i32 0, i32 1
  %21 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  store %struct.usb_device* %21, %struct.usb_device** %11, align 8
  %22 = load %struct.lte_udev*, %struct.lte_udev** %10, align 8
  %23 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %22, i32 0, i32 2
  store %struct.rx_cxt* %23, %struct.rx_cxt** %12, align 8
  %24 = load %struct.lte_udev*, %struct.lte_udev** %10, align 8
  %25 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %24, i32 0, i32 1
  %26 = load %struct.usb_device*, %struct.usb_device** %25, align 8
  %27 = icmp ne %struct.usb_device* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %121

32:                                               ; preds = %4
  %33 = load %struct.rx_cxt*, %struct.rx_cxt** %12, align 8
  %34 = call %struct.usb_rx* @get_rx_struct(%struct.rx_cxt* %33, i32* %14)
  store %struct.usb_rx* %34, %struct.usb_rx** %13, align 8
  %35 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %36 = icmp ne %struct.usb_rx* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %121

41:                                               ; preds = %32
  %42 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %7, align 8
  %43 = load %struct.lte_udev*, %struct.lte_udev** %10, align 8
  %44 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %43, i32 0, i32 0
  store i32 (i8*, i8*, i32, i32)* %42, i32 (i8*, i8*, i32, i32)** %44, align 8
  %45 = load i32 (i8*, i8*, i32, i32)*, i32 (i8*, i8*, i32, i32)** %7, align 8
  %46 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %47 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %46, i32 0, i32 0
  store i32 (i8*, i8*, i32, i32)* %45, i32 (i8*, i8*, i32, i32)** %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %50 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.lte_udev*, %struct.lte_udev** %10, align 8
  %52 = bitcast %struct.lte_udev* %51 to i8*
  %53 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %54 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.rx_cxt*, %struct.rx_cxt** %12, align 8
  %56 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %57 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %56, i32 0, i32 4
  store %struct.rx_cxt* %55, %struct.rx_cxt** %57, align 8
  %58 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %59 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %62 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %63 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %62, i32 131)
  %64 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %65 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RX_BUF_SIZE, align 4
  %68 = load i32, i32* @gdm_usb_rcv_complete, align 4
  %69 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %70 = call i32 @usb_fill_bulk_urb(i32 %60, %struct.usb_device* %61, i32 %63, i32 %66, i32 %67, i32 %68, %struct.usb_rx* %69)
  %71 = load %struct.rx_cxt*, %struct.rx_cxt** %12, align 8
  %72 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %71, i32 0, i32 0
  %73 = load i64, i64* %16, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %76 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %75, i32 0, i32 1
  %77 = load %struct.rx_cxt*, %struct.rx_cxt** %12, align 8
  %78 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %77, i32 0, i32 1
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.rx_cxt*, %struct.rx_cxt** %12, align 8
  %81 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %80, i32 0, i32 0
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @KERNEL_THREAD, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %41
  %88 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %89 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32 @usb_submit_urb(i32 %90, i32 %91)
  store i32 %92, i32* %15, align 4
  br label %99

93:                                               ; preds = %41
  %94 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %95 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @GFP_ATOMIC, align 4
  %98 = call i32 @usb_submit_urb(i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %93, %87
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load %struct.rx_cxt*, %struct.rx_cxt** %12, align 8
  %104 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %103, i32 0, i32 0
  %105 = load i64, i64* %16, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %108 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %107, i32 0, i32 1
  %109 = call i32 @list_del(i32* %108)
  %110 = load %struct.rx_cxt*, %struct.rx_cxt** %12, align 8
  %111 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %110, i32 0, i32 0
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.usb_rx* %114)
  %116 = load %struct.rx_cxt*, %struct.rx_cxt** %12, align 8
  %117 = load %struct.usb_rx*, %struct.usb_rx** %13, align 8
  %118 = call i32 @put_rx_struct(%struct.rx_cxt* %116, %struct.usb_rx* %117)
  br label %119

119:                                              ; preds = %102, %99
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %37, %28
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.usb_rx* @get_rx_struct(%struct.rx_cxt*, i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_rx*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_rx_struct(%struct.rx_cxt*, %struct.usb_rx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
