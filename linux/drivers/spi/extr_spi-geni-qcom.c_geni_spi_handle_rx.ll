; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_geni_spi_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-geni-qcom.c_geni_spi_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_geni_master = type { i32, %struct.TYPE_2__*, %struct.geni_se }
%struct.TYPE_2__ = type { i32, i32 }
%struct.geni_se = type { i64 }

@SE_GENI_RX_FIFO_STATUS = common dso_local global i64 0, align 8
@RX_FIFO_WC_MSK = common dso_local global i32 0, align 4
@RX_LAST = common dso_local global i32 0, align 4
@RX_LAST_BYTE_VALID_MSK = common dso_local global i32 0, align 4
@RX_LAST_BYTE_VALID_SHFT = common dso_local global i32 0, align 4
@SE_GENI_RX_FIFOn = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_geni_master*)* @geni_spi_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_spi_handle_rx(%struct.spi_geni_master* %0) #0 {
  %2 = alloca %struct.spi_geni_master*, align 8
  %3 = alloca %struct.geni_se*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_geni_master* %0, %struct.spi_geni_master** %2, align 8
  %14 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %15 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %14, i32 0, i32 2
  store %struct.geni_se* %15, %struct.geni_se** %3, align 8
  %16 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %17 = call i32 @geni_byte_per_fifo_word(%struct.spi_geni_master* %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %19 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SE_GENI_RX_FIFO_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RX_FIFO_WC_MSK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @RX_LAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RX_LAST_BYTE_VALID_MSK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @RX_LAST_BYTE_VALID_SHFT, align 4
  %38 = load i32, i32* %6, align 4
  %39 = lshr i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %42, %33
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %54 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %60 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %64 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %69 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %67, %72
  %74 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %75 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub i32 %73, %76
  %78 = zext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %7, align 8
  br label %80

80:                                               ; preds = %114, %62
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  store i32* %10, i32** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sub i32 %86, %87
  %89 = call i32 @min(i32 %85, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load %struct.geni_se*, %struct.geni_se** %3, align 8
  %91 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SE_GENI_RX_FIFOn, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @ioread32_rep(i64 %94, i32* %10, i32 1)
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %111, %84
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %13, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %9, align 4
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %13, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %96

114:                                              ; preds = %96
  br label %80

115:                                              ; preds = %80
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.spi_geni_master*, %struct.spi_geni_master** %2, align 8
  %118 = getelementptr inbounds %struct.spi_geni_master, %struct.spi_geni_master* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub i32 %119, %116
  store i32 %120, i32* %118, align 8
  ret void
}

declare dso_local i32 @geni_byte_per_fifo_word(%struct.spi_geni_master*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ioread32_rep(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
