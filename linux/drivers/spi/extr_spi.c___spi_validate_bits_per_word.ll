; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_validate_bits_per_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_validate_bits_per_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, i32)* @__spi_validate_bits_per_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__spi_validate_bits_per_word(%struct.spi_controller* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %7 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 32
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %10
  %17 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %18 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @SPI_BPW_MASK(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %24, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @SPI_BPW_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
