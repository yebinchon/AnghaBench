; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_udc = type { i64 }

@GMIR_MHC_INT = common dso_local global i32 0, align 4
@GMIR_MOTG_INT = common dso_local global i32 0, align 4
@GMIR_INT_POLARITY = common dso_local global i32 0, align 4
@FOTG210_GMIR = common dso_local global i64 0, align 8
@FOTG210_DMCR = common dso_local global i64 0, align 8
@DMCR_GLINT_EN = common dso_local global i32 0, align 4
@FOTG210_DMISGR1 = common dso_local global i64 0, align 8
@FOTG210_DMISGR0 = common dso_local global i64 0, align 8
@DMISGR0_MCX_COMEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_udc*)* @fotg210_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_init(%struct.fotg210_udc* %0) #0 {
  %2 = alloca %struct.fotg210_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.fotg210_udc* %0, %struct.fotg210_udc** %2, align 8
  %4 = load i32, i32* @GMIR_MHC_INT, align 4
  %5 = load i32, i32* @GMIR_MOTG_INT, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @GMIR_INT_POLARITY, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.fotg210_udc*, %struct.fotg210_udc** %2, align 8
  %10 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FOTG210_GMIR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @iowrite32(i32 %8, i64 %13)
  %15 = load %struct.fotg210_udc*, %struct.fotg210_udc** %2, align 8
  %16 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FOTG210_DMCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @DMCR_GLINT_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.fotg210_udc*, %struct.fotg210_udc** %2, align 8
  %27 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FOTG210_DMCR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32(i32 %25, i64 %30)
  %32 = load %struct.fotg210_udc*, %struct.fotg210_udc** %2, align 8
  %33 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FOTG210_DMISGR1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @iowrite32(i32 -1, i64 %36)
  %38 = load %struct.fotg210_udc*, %struct.fotg210_udc** %2, align 8
  %39 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FOTG210_DMISGR0, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @ioread32(i64 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @DMISGR0_MCX_COMEND, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.fotg210_udc*, %struct.fotg210_udc** %2, align 8
  %49 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FOTG210_DMISGR0, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @iowrite32(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
