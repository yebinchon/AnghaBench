; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_spi_priv = type { i32, i32*, i64, i32 }

@SSI_RXDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_spi_priv*)* @uniphier_spi_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_spi_recv(%struct.uniphier_spi_priv* %0) #0 {
  %2 = alloca %struct.uniphier_spi_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uniphier_spi_priv* %0, %struct.uniphier_spi_priv** %2, align 8
  %5 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %6 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @bytes_per_word(i32 %7)
  %9 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %10 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @min(i32 %8, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %15 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %19 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SSI_RXDR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %25 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  switch i32 %29, label %47 [
    i32 1, label %30
    i32 2, label %35
    i32 4, label %41
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %33 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32 %31, i32* %34, align 4
  br label %47

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %38 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @put_unaligned_le16(i32 %36, i32* %39)
  br label %47

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %44 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @put_unaligned_le32(i32 %42, i32* %45)
  br label %47

47:                                               ; preds = %28, %41, %35, %30
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %50 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = sext i32 %48 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %50, align 8
  br label %54

54:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bytes_per_word(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
