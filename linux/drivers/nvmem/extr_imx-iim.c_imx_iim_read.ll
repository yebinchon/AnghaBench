; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-iim.c_imx_iim_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-iim.c_imx_iim_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iim_priv = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @imx_iim_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_iim_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iim_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.iim_priv*
  store %struct.iim_priv* %17, %struct.iim_priv** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %13, align 8
  %20 = load %struct.iim_priv*, %struct.iim_priv** %10, align 8
  %21 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %64

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %56, %28
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %34, %35
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %39, 5
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 31
  store i32 %42, i32* %15, align 4
  %43 = load %struct.iim_priv*, %struct.iim_priv** %10, align 8
  %44 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @IIM_BANK_BASE(i32 %46)
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* %15, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = call i32 @readl(i64 %52)
  %54 = load i32*, i32** %13, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  br label %56

56:                                               ; preds = %38
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load %struct.iim_priv*, %struct.iim_priv** %10, align 8
  %61 = getelementptr inbounds %struct.iim_priv, %struct.iim_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_disable_unprepare(i32 %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %26
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @IIM_BANK_BASE(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
