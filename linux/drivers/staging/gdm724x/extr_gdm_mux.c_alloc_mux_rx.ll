; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_alloc_mux_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_alloc_mux_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_rx = type { %struct.mux_rx*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MUX_RX_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mux_rx* ()* @alloc_mux_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mux_rx* @alloc_mux_rx() #0 {
  %1 = alloca %struct.mux_rx*, align 8
  %2 = alloca %struct.mux_rx*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.mux_rx* @kzalloc(i32 16, i32 %3)
  store %struct.mux_rx* %4, %struct.mux_rx** %2, align 8
  %5 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %6 = icmp ne %struct.mux_rx* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.mux_rx* null, %struct.mux_rx** %1, align 8
  br label %40

8:                                                ; preds = %0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @usb_alloc_urb(i32 0, i32 %9)
  %11 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %12 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @MUX_RX_MAX_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mux_rx* @kmalloc(i32 %13, i32 %14)
  %16 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %17 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %16, i32 0, i32 0
  store %struct.mux_rx* %15, %struct.mux_rx** %17, align 8
  %18 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %19 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %8
  %23 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %24 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %23, i32 0, i32 0
  %25 = load %struct.mux_rx*, %struct.mux_rx** %24, align 8
  %26 = icmp ne %struct.mux_rx* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %22, %8
  %28 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %29 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_free_urb(i32 %30)
  %32 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %33 = getelementptr inbounds %struct.mux_rx, %struct.mux_rx* %32, i32 0, i32 0
  %34 = load %struct.mux_rx*, %struct.mux_rx** %33, align 8
  %35 = call i32 @kfree(%struct.mux_rx* %34)
  %36 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  %37 = call i32 @kfree(%struct.mux_rx* %36)
  store %struct.mux_rx* null, %struct.mux_rx** %1, align 8
  br label %40

38:                                               ; preds = %22
  %39 = load %struct.mux_rx*, %struct.mux_rx** %2, align 8
  store %struct.mux_rx* %39, %struct.mux_rx** %1, align 8
  br label %40

40:                                               ; preds = %38, %27, %7
  %41 = load %struct.mux_rx*, %struct.mux_rx** %1, align 8
  ret %struct.mux_rx* %41
}

declare dso_local %struct.mux_rx* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.mux_rx* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.mux_rx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
