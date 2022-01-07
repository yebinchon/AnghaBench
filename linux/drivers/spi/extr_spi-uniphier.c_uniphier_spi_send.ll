; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_spi_priv = type { i32, i64, i32*, i32 }

@SSI_TXDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_spi_priv*)* @uniphier_spi_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_spi_send(%struct.uniphier_spi_priv* %0) #0 {
  %2 = alloca %struct.uniphier_spi_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uniphier_spi_priv* %0, %struct.uniphier_spi_priv** %2, align 8
  store i32 0, i32* %4, align 4
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
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %39 [
    i32 1, label %24
    i32 2, label %29
    i32 4, label %34
  ]

24:                                               ; preds = %22
  %25 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %26 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %22
  %30 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %31 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @get_unaligned_le16(i32* %32)
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %22
  %35 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %36 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @get_unaligned_le32(i32* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %22, %34, %29, %24
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %42 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = sext i32 %40 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %42, align 8
  br label %46

46:                                               ; preds = %39, %1
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %49 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SSI_TXDR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bytes_per_word(i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
