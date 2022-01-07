; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap2430_musb_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap2430_musb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i8*, i8*, i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MUSB_INTRUSB = common dso_local global i32 0, align 4
@MUSB_INTRTX = common dso_local global i32 0, align 4
@MUSB_INTRRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap2430_musb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2430_musb_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.musb*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.musb*
  store %struct.musb* %10, %struct.musb** %7, align 8
  %11 = load %struct.musb*, %struct.musb** %7, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.musb*, %struct.musb** %7, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MUSB_INTRUSB, align 4
  %19 = call i64 @musb_readb(i32 %17, i32 %18)
  %20 = load %struct.musb*, %struct.musb** %7, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.musb*, %struct.musb** %7, align 8
  %23 = getelementptr inbounds %struct.musb, %struct.musb* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MUSB_INTRTX, align 4
  %26 = call i8* @musb_readw(i32 %24, i32 %25)
  %27 = load %struct.musb*, %struct.musb** %7, align 8
  %28 = getelementptr inbounds %struct.musb, %struct.musb* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.musb*, %struct.musb** %7, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MUSB_INTRRX, align 4
  %33 = call i8* @musb_readw(i32 %31, i32 %32)
  %34 = load %struct.musb*, %struct.musb** %7, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.musb*, %struct.musb** %7, align 8
  %37 = getelementptr inbounds %struct.musb, %struct.musb* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %2
  %41 = load %struct.musb*, %struct.musb** %7, align 8
  %42 = getelementptr inbounds %struct.musb, %struct.musb* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.musb*, %struct.musb** %7, align 8
  %47 = getelementptr inbounds %struct.musb, %struct.musb* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %40, %2
  %51 = load %struct.musb*, %struct.musb** %7, align 8
  %52 = call i32 @musb_interrupt(%struct.musb* %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.musb*, %struct.musb** %7, align 8
  %55 = getelementptr inbounds %struct.musb, %struct.musb* %54, i32 0, i32 0
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @musb_readb(i32, i32) #1

declare dso_local i8* @musb_readw(i32, i32) #1

declare dso_local i32 @musb_interrupt(%struct.musb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
