; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_jz4740.c_jz4740_musb_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_jz4740.c_jz4740_musb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i8*, i8*, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MUSB_INTRUSB = common dso_local global i32 0, align 4
@MUSB_INTRTX = common dso_local global i32 0, align 4
@MUSB_INTRRX = common dso_local global i32 0, align 4
@MUSB_INTR_SUSPEND = common dso_local global i32 0, align 4
@MUSB_INTR_RESUME = common dso_local global i32 0, align 4
@MUSB_INTR_RESET = common dso_local global i32 0, align 4
@MUSB_INTR_SOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @jz4740_musb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_musb_interrupt(i32 %0, i8* %1) #0 {
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
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.musb*, %struct.musb** %7, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MUSB_INTRUSB, align 4
  %19 = call i32 @musb_readb(i32 %17, i32 %18)
  %20 = load %struct.musb*, %struct.musb** %7, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.musb*, %struct.musb** %7, align 8
  %23 = getelementptr inbounds %struct.musb, %struct.musb* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MUSB_INTRTX, align 4
  %26 = call i8* @musb_readw(i32 %24, i32 %25)
  %27 = load %struct.musb*, %struct.musb** %7, align 8
  %28 = getelementptr inbounds %struct.musb, %struct.musb* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.musb*, %struct.musb** %7, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MUSB_INTRRX, align 4
  %33 = call i8* @musb_readw(i32 %31, i32 %32)
  %34 = load %struct.musb*, %struct.musb** %7, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @MUSB_INTR_SUSPEND, align 4
  %37 = load i32, i32* @MUSB_INTR_RESUME, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MUSB_INTR_RESET, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MUSB_INTR_SOF, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.musb*, %struct.musb** %7, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.musb*, %struct.musb** %7, align 8
  %48 = getelementptr inbounds %struct.musb, %struct.musb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %2
  %52 = load %struct.musb*, %struct.musb** %7, align 8
  %53 = getelementptr inbounds %struct.musb, %struct.musb* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.musb*, %struct.musb** %7, align 8
  %58 = getelementptr inbounds %struct.musb, %struct.musb* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51, %2
  %62 = load %struct.musb*, %struct.musb** %7, align 8
  %63 = call i32 @musb_interrupt(%struct.musb* %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.musb*, %struct.musb** %7, align 8
  %66 = getelementptr inbounds %struct.musb, %struct.musb* %65, i32 0, i32 1
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i8* @musb_readw(i32, i32) #1

declare dso_local i32 @musb_interrupt(%struct.musb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
