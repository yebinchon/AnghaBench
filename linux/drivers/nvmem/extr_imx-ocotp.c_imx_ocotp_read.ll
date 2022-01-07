; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_imx-ocotp.c_imx_ocotp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocotp_priv = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ocotp_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to prepare/enable ocotp clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"timeout during read setup\0A\00", align 1
@IMX_OCOTP_OFFSET_B0W0 = common dso_local global i64 0, align 8
@IMX_OCOTP_OFFSET_PER_WORD = common dso_local global i32 0, align 4
@IMX_OCOTP_READ_LOCKED_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @imx_ocotp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ocotp_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocotp_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.ocotp_priv*
  store %struct.ocotp_priv* %17, %struct.ocotp_priv** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = lshr i32 %20, 2
  store i32 %21, i32* %15, align 4
  %22 = load i64, i64* %9, align 8
  %23 = lshr i64 %22, 2
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %27 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %15, align 4
  %32 = sub i32 %30, %31
  %33 = icmp ugt i32 %25, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %4
  %35 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %36 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %15, align 4
  %41 = sub i32 %39, %40
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %34, %4
  %43 = call i32 @mutex_lock(i32* @ocotp_mutex)
  %44 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %45 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @clk_prepare_enable(i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = call i32 @mutex_unlock(i32* @ocotp_mutex)
  %52 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %53 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %5, align 4
  br label %113

57:                                               ; preds = %42
  %58 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %59 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @imx_ocotp_wait_for_busy(i64 %60, i32 0)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %66 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %106

69:                                               ; preds = %57
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %102, %69
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %73, %74
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %71
  %78 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %79 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IMX_OCOTP_OFFSET_B0W0, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @IMX_OCOTP_OFFSET_PER_WORD, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %82, %86
  %88 = call i32 @readl(i64 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %12, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 -1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IMX_OCOTP_READ_LOCKED_VAL, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %77
  %97 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %98 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @imx_ocotp_clr_err_if_set(i64 %99)
  br label %101

101:                                              ; preds = %96, %77
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %71

105:                                              ; preds = %71
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %64
  %107 = load %struct.ocotp_priv*, %struct.ocotp_priv** %10, align 8
  %108 = getelementptr inbounds %struct.ocotp_priv, %struct.ocotp_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @clk_disable_unprepare(i32 %109)
  %111 = call i32 @mutex_unlock(i32* @ocotp_mutex)
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %106, %50
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @imx_ocotp_wait_for_busy(i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @imx_ocotp_clr_err_if_set(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
