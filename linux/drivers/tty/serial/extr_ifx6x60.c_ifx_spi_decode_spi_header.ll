; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_decode_spi_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_decode_spi_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFX_SPI_HEADER_0 = common dso_local global i32 0, align 4
@IFX_SPI_HEADER_F = common dso_local global i32 0, align 4
@IFX_SPI_MORE_BIT = common dso_local global i8 0, align 1
@IFX_SPI_CTS_BIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*, i8*)* @ifx_spi_decode_spi_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_decode_spi_header(i8* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %8, align 8
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* @IFX_SPI_HEADER_0, align 4
  store i32 %28, i32* %5, align 4
  br label %63

29:                                               ; preds = %22, %4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 65535
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 65535
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  store i8 0, i8* %36, align 1
  %37 = load i32, i32* @IFX_SPI_HEADER_F, align 4
  store i32 %37, i32* %5, align 4
  br label %63

38:                                               ; preds = %32, %29
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 4095
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @IFX_SPI_MORE_BIT, align 1
  %48 = zext i8 %47 to i32
  %49 = ashr i32 %46, %48
  %50 = and i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %8, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @IFX_SPI_CTS_BIT, align 1
  %58 = zext i8 %57 to i32
  %59 = ashr i32 %56, %58
  %60 = and i32 %59, 1
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %9, align 8
  store i8 %61, i8* %62, align 1
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %39, %35, %25
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
