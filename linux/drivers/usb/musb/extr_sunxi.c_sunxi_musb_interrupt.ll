; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i64, i8*, i8* }

@SUNXI_MUSB_INTRUSB = common dso_local global i64 0, align 8
@MUSB_INTR_RESET = common dso_local global i32 0, align 4
@MUSB_FADDR = common dso_local global i32 0, align 4
@SUNXI_MUSB_INTRTX = common dso_local global i64 0, align 8
@SUNXI_MUSB_INTRRX = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sunxi_musb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_musb_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.musb*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.musb*
  store %struct.musb* %8, %struct.musb** %5, align 8
  %9 = load %struct.musb*, %struct.musb** %5, align 8
  %10 = getelementptr inbounds %struct.musb, %struct.musb* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.musb*, %struct.musb** %5, align 8
  %14 = getelementptr inbounds %struct.musb, %struct.musb* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SUNXI_MUSB_INTRUSB, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readb(i64 %17)
  %19 = load %struct.musb*, %struct.musb** %5, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.musb*, %struct.musb** %5, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.musb*, %struct.musb** %5, align 8
  %27 = getelementptr inbounds %struct.musb, %struct.musb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.musb*, %struct.musb** %5, align 8
  %30 = getelementptr inbounds %struct.musb, %struct.musb* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SUNXI_MUSB_INTRUSB, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb(i32 %28, i64 %33)
  br label %35

35:                                               ; preds = %25, %2
  %36 = load %struct.musb*, %struct.musb** %5, align 8
  %37 = getelementptr inbounds %struct.musb, %struct.musb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MUSB_INTR_RESET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load %struct.musb*, %struct.musb** %5, align 8
  %44 = call i32 @is_host_active(%struct.musb* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load %struct.musb*, %struct.musb** %5, align 8
  %48 = getelementptr inbounds %struct.musb, %struct.musb* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @musb_ep_select(i64 %49, i32 0)
  %51 = load %struct.musb*, %struct.musb** %5, align 8
  %52 = getelementptr inbounds %struct.musb, %struct.musb* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @MUSB_FADDR, align 4
  %55 = call i32 @musb_writeb(i64 %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %46, %42, %35
  %57 = load %struct.musb*, %struct.musb** %5, align 8
  %58 = getelementptr inbounds %struct.musb, %struct.musb* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SUNXI_MUSB_INTRTX, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i8* @readw(i64 %61)
  %63 = load %struct.musb*, %struct.musb** %5, align 8
  %64 = getelementptr inbounds %struct.musb, %struct.musb* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.musb*, %struct.musb** %5, align 8
  %66 = getelementptr inbounds %struct.musb, %struct.musb* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %56
  %70 = load %struct.musb*, %struct.musb** %5, align 8
  %71 = getelementptr inbounds %struct.musb, %struct.musb* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.musb*, %struct.musb** %5, align 8
  %74 = getelementptr inbounds %struct.musb, %struct.musb* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SUNXI_MUSB_INTRTX, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writew(i8* %72, i64 %77)
  br label %79

79:                                               ; preds = %69, %56
  %80 = load %struct.musb*, %struct.musb** %5, align 8
  %81 = getelementptr inbounds %struct.musb, %struct.musb* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SUNXI_MUSB_INTRRX, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i8* @readw(i64 %84)
  %86 = load %struct.musb*, %struct.musb** %5, align 8
  %87 = getelementptr inbounds %struct.musb, %struct.musb* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.musb*, %struct.musb** %5, align 8
  %89 = getelementptr inbounds %struct.musb, %struct.musb* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %79
  %93 = load %struct.musb*, %struct.musb** %5, align 8
  %94 = getelementptr inbounds %struct.musb, %struct.musb* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.musb*, %struct.musb** %5, align 8
  %97 = getelementptr inbounds %struct.musb, %struct.musb* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SUNXI_MUSB_INTRRX, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writew(i8* %95, i64 %100)
  br label %102

102:                                              ; preds = %92, %79
  %103 = load %struct.musb*, %struct.musb** %5, align 8
  %104 = call i32 @musb_interrupt(%struct.musb* %103)
  %105 = load %struct.musb*, %struct.musb** %5, align 8
  %106 = getelementptr inbounds %struct.musb, %struct.musb* %105, i32 0, i32 1
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @is_host_active(%struct.musb*) #1

declare dso_local i32 @musb_ep_select(i64, i32) #1

declare dso_local i32 @musb_writeb(i64, i32, i32) #1

declare dso_local i8* @readw(i64) #1

declare dso_local i32 @writew(i8*, i64) #1

declare dso_local i32 @musb_interrupt(%struct.musb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
