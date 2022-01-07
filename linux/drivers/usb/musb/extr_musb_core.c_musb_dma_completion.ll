; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_dma_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_dma_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_dma_completion(%struct.musb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.musb* %0, %struct.musb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = load %struct.musb*, %struct.musb** %4, align 8
  %11 = call i32 @is_cppi_enabled(%struct.musb* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = load %struct.musb*, %struct.musb** %4, align 8
  %15 = call i64 @is_host_active(%struct.musb* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.musb*, %struct.musb** %4, align 8
  %19 = call i32 @musb_h_ep0_irq(%struct.musb* %18)
  br label %23

20:                                               ; preds = %13
  %21 = load %struct.musb*, %struct.musb** %4, align 8
  %22 = call i32 @musb_g_ep0_irq(%struct.musb* %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %9
  br label %55

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.musb*, %struct.musb** %4, align 8
  %30 = call i64 @is_host_active(%struct.musb* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.musb*, %struct.musb** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @musb_host_tx(%struct.musb* %33, i64 %34)
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.musb*, %struct.musb** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @musb_g_tx(%struct.musb* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %54

41:                                               ; preds = %25
  %42 = load %struct.musb*, %struct.musb** %4, align 8
  %43 = call i64 @is_host_active(%struct.musb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.musb*, %struct.musb** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @musb_host_rx(%struct.musb* %46, i64 %47)
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.musb*, %struct.musb** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @musb_g_rx(%struct.musb* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %24
  ret void
}

declare dso_local i32 @is_cppi_enabled(%struct.musb*) #1

declare dso_local i64 @is_host_active(%struct.musb*) #1

declare dso_local i32 @musb_h_ep0_irq(%struct.musb*) #1

declare dso_local i32 @musb_g_ep0_irq(%struct.musb*) #1

declare dso_local i32 @musb_host_tx(%struct.musb*, i64) #1

declare dso_local i32 @musb_g_tx(%struct.musb*, i64) #1

declare dso_local i32 @musb_host_rx(%struct.musb*, i64) #1

declare dso_local i32 @musb_g_rx(%struct.musb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
