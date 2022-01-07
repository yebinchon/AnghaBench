; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_RUN = common dso_local global i32 0, align 4
@CMD_IAAD = common dso_local global i32 0, align 4
@STS_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*)* @fotg210_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_halt(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  %4 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %4, i32 0, i32 2
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %8 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = call i32 @fotg210_writel(%struct.fotg210_hcd* %7, i32 0, i32* %11)
  %13 = load i32, i32* @CMD_RUN, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %20 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i32 @fotg210_readl(%struct.fotg210_hcd* %19, i32* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @CMD_RUN, align 4
  %26 = load i32, i32* @CMD_IAAD, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @fotg210_writel(%struct.fotg210_hcd* %31, i32 %32, i32* %36)
  %38 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %39 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %42 = call %struct.TYPE_4__* @fotg210_to_hcd(%struct.fotg210_hcd* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @synchronize_irq(i32 %44)
  %46 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %47 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %48 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* @STS_HALT, align 4
  %52 = load i32, i32* @STS_HALT, align 4
  %53 = call i32 @handshake(%struct.fotg210_hcd* %46, i32* %50, i32 %51, i32 %52, i32 2000)
  ret i32 %53
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @fotg210_writel(%struct.fotg210_hcd*, i32, i32*) #1

declare dso_local i32 @fotg210_readl(%struct.fotg210_hcd*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local %struct.TYPE_4__* @fotg210_to_hcd(%struct.fotg210_hcd*) #1

declare dso_local i32 @handshake(%struct.fotg210_hcd*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
