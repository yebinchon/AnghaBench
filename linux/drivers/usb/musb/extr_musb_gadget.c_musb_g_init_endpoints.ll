; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_g_init_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_g_init_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i64, %struct.musb_hw_ep*, %struct.TYPE_2__ }
%struct.musb_hw_ep = type { i32, i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*)* @musb_g_init_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_g_init_endpoints(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.musb_hw_ep*, align 8
  %5 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.musb*, %struct.musb** %2, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  store i64 0, i64* %3, align 8
  %10 = load %struct.musb*, %struct.musb** %2, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 1
  %12 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %11, align 8
  store %struct.musb_hw_ep* %12, %struct.musb_hw_ep** %4, align 8
  br label %13

13:                                               ; preds = %60, %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.musb*, %struct.musb** %2, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %21 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.musb*, %struct.musb** %2, align 8
  %26 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %27 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %26, i32 0, i32 2
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @init_peripheral_ep(%struct.musb* %25, i32* %27, i64 %28, i32 0)
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %59

32:                                               ; preds = %19
  %33 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %34 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.musb*, %struct.musb** %2, align 8
  %39 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %40 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %39, i32 0, i32 2
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @init_peripheral_ep(%struct.musb* %38, i32* %40, i64 %41, i32 1)
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %37, %32
  %46 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %47 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.musb*, %struct.musb** %2, align 8
  %52 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %53 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %52, i32 0, i32 0
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @init_peripheral_ep(%struct.musb* %51, i32* %53, i64 %54, i32 0)
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %50, %45
  br label %59

59:                                               ; preds = %58, %24
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %3, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %3, align 8
  %63 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %64 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %63, i32 1
  store %struct.musb_hw_ep* %64, %struct.musb_hw_ep** %4, align 8
  br label %13

65:                                               ; preds = %13
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_peripheral_ep(%struct.musb*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
