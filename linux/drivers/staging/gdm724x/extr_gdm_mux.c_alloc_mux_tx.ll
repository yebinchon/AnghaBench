; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_alloc_mux_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_alloc_mux_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_tx = type { %struct.mux_tx*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MUX_TX_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mux_tx* (i32)* @alloc_mux_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mux_tx* @alloc_mux_tx(i32 %0) #0 {
  %2 = alloca %struct.mux_tx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mux_tx*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.mux_tx* @kzalloc(i32 16, i32 %5)
  store %struct.mux_tx* %6, %struct.mux_tx** %4, align 8
  %7 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  %8 = icmp ne %struct.mux_tx* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mux_tx* null, %struct.mux_tx** %2, align 8
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i32 @usb_alloc_urb(i32 0, i32 %11)
  %13 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  %14 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @MUX_TX_MAX_SIZE, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.mux_tx* @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  %19 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %18, i32 0, i32 0
  store %struct.mux_tx* %17, %struct.mux_tx** %19, align 8
  %20 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  %21 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %10
  %25 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  %26 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %25, i32 0, i32 0
  %27 = load %struct.mux_tx*, %struct.mux_tx** %26, align 8
  %28 = icmp ne %struct.mux_tx* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %24, %10
  %30 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  %31 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_free_urb(i32 %32)
  %34 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  %35 = getelementptr inbounds %struct.mux_tx, %struct.mux_tx* %34, i32 0, i32 0
  %36 = load %struct.mux_tx*, %struct.mux_tx** %35, align 8
  %37 = call i32 @kfree(%struct.mux_tx* %36)
  %38 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  %39 = call i32 @kfree(%struct.mux_tx* %38)
  store %struct.mux_tx* null, %struct.mux_tx** %2, align 8
  br label %42

40:                                               ; preds = %24
  %41 = load %struct.mux_tx*, %struct.mux_tx** %4, align 8
  store %struct.mux_tx* %41, %struct.mux_tx** %2, align 8
  br label %42

42:                                               ; preds = %40, %29, %9
  %43 = load %struct.mux_tx*, %struct.mux_tx** %2, align 8
  ret %struct.mux_tx* %43
}

declare dso_local %struct.mux_tx* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.mux_tx* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.mux_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
