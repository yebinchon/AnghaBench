; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_spfi_pio_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_spfi_pio_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_spfi = type { i32 }

@SPFI_INTERRUPT_SDFUL = common dso_local global i32 0, align 4
@SPFI_INTERRUPT_CLEAR = common dso_local global i32 0, align 4
@SPFI_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SPFI_TX_32BIT_VALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_spfi*, i32*, i32)* @spfi_pio_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spfi_pio_write32(%struct.img_spfi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.img_spfi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.img_spfi* %0, %struct.img_spfi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = udiv i32 %11, 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %16 = load i32, i32* @SPFI_INTERRUPT_SDFUL, align 4
  %17 = load i32, i32* @SPFI_INTERRUPT_CLEAR, align 4
  %18 = call i32 @spfi_writel(%struct.img_spfi* %15, i32 %16, i32 %17)
  %19 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %20 = load i32, i32* @SPFI_INTERRUPT_STATUS, align 4
  %21 = call i32 @spfi_readl(%struct.img_spfi* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SPFI_INTERRUPT_SDFUL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %38

27:                                               ; preds = %14
  %28 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SPFI_TX_32BIT_VALID_DATA, align 4
  %35 = call i32 @spfi_writel(%struct.img_spfi* %28, i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %9

38:                                               ; preds = %26, %9
  %39 = load i32, i32* %7, align 4
  %40 = mul i32 %39, 4
  ret i32 %40
}

declare dso_local i32 @spfi_writel(%struct.img_spfi*, i32, i32) #1

declare dso_local i32 @spfi_readl(%struct.img_spfi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
