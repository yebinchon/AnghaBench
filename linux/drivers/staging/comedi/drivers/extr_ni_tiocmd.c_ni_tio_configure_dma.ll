; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_configure_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_configure_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@GI_READ_ACKS_IRQ = common dso_local global i32 0, align 4
@GI_WRITE_ACKS_IRQ = common dso_local global i32 0, align 4
@GI_DMA_ENABLE = common dso_local global i32 0, align 4
@GI_DMA_INT_ENA = common dso_local global i32 0, align 4
@GI_DMA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*, i32, i32)* @ni_tio_configure_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_tio_configure_dma(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_gpct_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %12 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %11, i32 0, i32 1
  %13 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %12, align 8
  store %struct.ni_gpct_device* %13, %struct.ni_gpct_device** %7, align 8
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %15 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @GI_READ_ACKS_IRQ, align 4
  %18 = load i32, i32* @GI_WRITE_ACKS_IRQ, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @GI_READ_ACKS_IRQ, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @GI_WRITE_ACKS_IRQ, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @NITIO_INPUT_SEL_REG(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %35, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %7, align 8
  %42 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %73 [
    i32 129, label %44
    i32 128, label %45
    i32 130, label %45
  ]

44:                                               ; preds = %34
  br label %73

45:                                               ; preds = %34, %34
  %46 = load i32, i32* @GI_DMA_ENABLE, align 4
  %47 = load i32, i32* @GI_DMA_INT_ENA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @GI_DMA_WRITE, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* @GI_DMA_ENABLE, align 4
  %55 = load i32, i32* @GI_DMA_INT_ENA, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %53, %45
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @GI_DMA_WRITE, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @NITIO_DMA_CFG_REG(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %67, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %34, %66, %44
  ret void
}

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_INPUT_SEL_REG(i32) #1

declare dso_local i32 @NITIO_DMA_CFG_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
