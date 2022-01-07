; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GMIR_MDEV_INT = common dso_local global i32 0, align 4
@GMIR_MOTG_INT = common dso_local global i32 0, align 4
@GMIR_INT_POLARITY = common dso_local global i32 0, align 4
@OTGCSR_A_BUS_DROP = common dso_local global i32 0, align 4
@OTGCSR_A_BUS_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*)* @fotg210_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_init(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  %4 = load i32, i32* @GMIR_MDEV_INT, align 4
  %5 = load i32, i32* @GMIR_MOTG_INT, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @GMIR_INT_POLARITY, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @iowrite32(i32 %8, i32* %12)
  %14 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @ioread32(i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @OTGCSR_A_BUS_DROP, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @OTGCSR_A_BUS_REQ, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @iowrite32(i32 %26, i32* %30)
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
