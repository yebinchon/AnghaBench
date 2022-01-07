; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_create_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_create_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, i32* }

@USBTMC_BUFSIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* ()* @usbtmc_create_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @usbtmc_create_urb() #0 {
  %1 = alloca %struct.urb*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = load i64, i64* @USBTMC_BUFSIZE, align 8
  store i64 %5, i64* %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %6)
  store %struct.urb* %7, %struct.urb** %4, align 8
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = icmp ne %struct.urb* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store %struct.urb* null, %struct.urb** %1, align 8
  br label %33

11:                                               ; preds = %0
  %12 = load i64, i64* %2, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i64 %12, i32 %13)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.urb*, %struct.urb** %4, align 8
  %19 = call i32 @usb_free_urb(%struct.urb* %18)
  store %struct.urb* null, %struct.urb** %1, align 8
  br label %33

20:                                               ; preds = %11
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.urb*, %struct.urb** %4, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load i64, i64* %2, align 8
  %25 = load %struct.urb*, %struct.urb** %4, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @URB_FREE_BUFFER, align 4
  %28 = load %struct.urb*, %struct.urb** %4, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.urb*, %struct.urb** %4, align 8
  store %struct.urb* %32, %struct.urb** %1, align 8
  br label %33

33:                                               ; preds = %20, %17, %10
  %34 = load %struct.urb*, %struct.urb** %1, align 8
  ret %struct.urb* %34
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
