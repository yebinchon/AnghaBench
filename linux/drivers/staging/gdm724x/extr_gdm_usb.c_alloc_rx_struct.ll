; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_alloc_rx_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_alloc_rx_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_rx = type { %struct.usb_rx*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_rx* ()* @alloc_rx_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_rx* @alloc_rx_struct() #0 {
  %1 = alloca %struct.usb_rx*, align 8
  %2 = alloca %struct.usb_rx*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_rx* null, %struct.usb_rx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i8* @kmalloc(i32 16, i32 %4)
  %6 = bitcast i8* %5 to %struct.usb_rx*
  store %struct.usb_rx* %6, %struct.usb_rx** %2, align 8
  %7 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %8 = icmp ne %struct.usb_rx* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %36

12:                                               ; preds = %0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @usb_alloc_urb(i32 0, i32 %13)
  %15 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %16 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @RX_BUF_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.usb_rx*
  %21 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %22 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %21, i32 0, i32 0
  store %struct.usb_rx* %20, %struct.usb_rx** %22, align 8
  %23 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %24 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %12
  %28 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %29 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %28, i32 0, i32 0
  %30 = load %struct.usb_rx*, %struct.usb_rx** %29, align 8
  %31 = icmp ne %struct.usb_rx* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %12
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %32, %9
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %41 = icmp ne %struct.usb_rx* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %44 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @usb_free_urb(i32 %45)
  %47 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %48 = getelementptr inbounds %struct.usb_rx, %struct.usb_rx* %47, i32 0, i32 0
  %49 = load %struct.usb_rx*, %struct.usb_rx** %48, align 8
  %50 = call i32 @kfree(%struct.usb_rx* %49)
  %51 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  %52 = call i32 @kfree(%struct.usb_rx* %51)
  br label %53

53:                                               ; preds = %42, %39
  store %struct.usb_rx* null, %struct.usb_rx** %1, align 8
  br label %56

54:                                               ; preds = %36
  %55 = load %struct.usb_rx*, %struct.usb_rx** %2, align 8
  store %struct.usb_rx* %55, %struct.usb_rx** %1, align 8
  br label %56

56:                                               ; preds = %54, %53
  %57 = load %struct.usb_rx*, %struct.usb_rx** %1, align 8
  ret %struct.usb_rx* %57
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.usb_rx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
