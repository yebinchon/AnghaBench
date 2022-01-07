; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_geni_spi_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_geni_spi_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_geni_master = type { i32, i32, i32, %struct.TYPE_2__*, %struct.geni_se }
%struct.TYPE_2__ = type { i32, i32 }
%struct.geni_se = type { i64 }

@SE_GENI_TX_FIFOn = common dso_local global i64 0, align 8
@SE_GENI_TX_WATERMARK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_geni_master*)* @geni_spi_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_spi_handle_tx(%struct.spi_geni_master* %0) #0 {
  %2 = alloca %struct.spi_geni_master*, align 8
  %3 = alloca %struct.geni_se*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.spi_geni_master* %0, %struct.spi_geni_master** %2, align 8
  %12 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %13 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %12, i32 0, i32 4
  store %struct.geni_se* %13, %struct.geni_se** %3, align 8
  %14 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %15 = call i32 @geni_byte_per_fifo_word(%struct.spi_geni_master* %14)
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %17 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %20 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  %23 = load i32, i32* %6, align 4
  %24 = mul i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %26 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %32 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %36 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %41 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %39, %44
  %46 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %47 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub i32 %45, %48
  %50 = zext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %5, align 8
  br label %52

52:                                               ; preds = %80, %34
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  store i32* %10, i32** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %58, %59
  %61 = call i32 @min(i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %77, %56
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %82 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SE_GENI_TX_FIFOn, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @iowrite32_rep(i64 %85, i32* %10, i32 1)
  br label %52

87:                                               ; preds = %52
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %90 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sub i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %94 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %87
  %98 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %99 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SE_GENI_TX_WATERMARK_REG, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 0, i64 %102)
  br label %104

104:                                              ; preds = %97, %87
  ret void
}

declare dso_local i32 @geni_byte_per_fifo_word(%struct.spi_geni_master*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @iowrite32_rep(i64, i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
