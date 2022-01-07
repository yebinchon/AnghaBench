; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_free_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_free_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc4xx_spi = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc4xx_spi*)* @free_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_gpios(%struct.ppc4xx_spi* %0) #0 {
  %2 = alloca %struct.ppc4xx_spi*, align 8
  %3 = alloca i32, align 4
  store %struct.ppc4xx_spi* %0, %struct.ppc4xx_spi** %2, align 8
  %4 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %2, align 8
  %5 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %2, align 8
  %14 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %11
  %20 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %2, align 8
  %21 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @gpio_is_valid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %2, align 8
  %31 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpio_free(i32 %36)
  br label %38

38:                                               ; preds = %29, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %2, align 8
  %44 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %2, align 8
  %48 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %1
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
