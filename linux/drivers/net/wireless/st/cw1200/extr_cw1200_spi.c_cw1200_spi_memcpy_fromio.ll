; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_memcpy_fromio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_memcpy_fromio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbus_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i8* }

@SET_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwbus_priv*, i32, i8*, i32)* @cw1200_spi_memcpy_fromio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_spi_memcpy_fromio(%struct.hwbus_priv* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hwbus_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spi_message, align 4
  %13 = alloca %struct.spi_transfer, align 8
  %14 = alloca %struct.spi_transfer, align 8
  %15 = alloca i32*, align 8
  store %struct.hwbus_priv* %0, %struct.hwbus_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i32* %11, i32** %16, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  store i32 4, i32* %17, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 2
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SDIO_TO_SPI_ADDR(i32 %24)
  %26 = shl i32 %25, 12
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @SET_READ, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 1
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @swab16(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = call i32 @spi_message_init(%struct.spi_message* %12)
  %39 = call i32 @spi_message_add_tail(%struct.spi_transfer* %13, %struct.spi_message* %12)
  %40 = call i32 @spi_message_add_tail(%struct.spi_transfer* %14, %struct.spi_message* %12)
  %41 = load %struct.hwbus_priv*, %struct.hwbus_priv** %5, align 8
  %42 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @spi_sync(%struct.TYPE_2__* %43, %struct.spi_message* %12)
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %15, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %64, %4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = ashr i32 %50, 1
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @swab16(i32 %58)
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %47

67:                                               ; preds = %47
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @SDIO_TO_SPI_ADDR(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
