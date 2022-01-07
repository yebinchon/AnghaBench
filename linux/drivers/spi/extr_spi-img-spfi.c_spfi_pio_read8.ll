; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_spfi_pio_read8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_spfi_pio_read8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_spfi = type { i32 }

@SPFI_INTERRUPT_GDEX8BIT = common dso_local global i32 0, align 4
@SPFI_INTERRUPT_CLEAR = common dso_local global i32 0, align 4
@SPFI_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SPFI_RX_8BIT_VALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_spfi*, i8**, i32)* @spfi_pio_read8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spfi_pio_read8(%struct.img_spfi* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.img_spfi*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.img_spfi* %0, %struct.img_spfi** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %15 = load i32, i32* @SPFI_INTERRUPT_GDEX8BIT, align 4
  %16 = load i32, i32* @SPFI_INTERRUPT_CLEAR, align 4
  %17 = call i32 @spfi_writel(%struct.img_spfi* %14, i32 %15, i32 %16)
  %18 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %19 = load i32, i32* @SPFI_INTERRUPT_STATUS, align 4
  %20 = call i8* @spfi_readl(%struct.img_spfi* %18, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SPFI_INTERRUPT_GDEX8BIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %37

27:                                               ; preds = %13
  %28 = load %struct.img_spfi*, %struct.img_spfi** %4, align 8
  %29 = load i32, i32* @SPFI_RX_8BIT_VALID_DATA, align 4
  %30 = call i8* @spfi_readl(%struct.img_spfi* %28, i32 %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9

37:                                               ; preds = %26, %9
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @spfi_writel(%struct.img_spfi*, i32, i32) #1

declare dso_local i8* @spfi_readl(%struct.img_spfi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
