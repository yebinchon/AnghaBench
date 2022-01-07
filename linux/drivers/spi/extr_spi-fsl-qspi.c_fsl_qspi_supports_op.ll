; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_supports_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_supports_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fsl_qspi = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64 }

@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @fsl_qspi_supports_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qspi_supports_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.fsl_qspi*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %8 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %9 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.fsl_qspi* @spi_controller_get_devdata(i32 %12)
  store %struct.fsl_qspi* %13, %struct.fsl_qspi** %6, align 8
  %14 = load %struct.fsl_qspi*, %struct.fsl_qspi** %6, align 8
  %15 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %16 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @fsl_qspi_check_buswidth(%struct.fsl_qspi* %14, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %21 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.fsl_qspi*, %struct.fsl_qspi** %6, align 8
  %27 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %28 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fsl_qspi_check_buswidth(%struct.fsl_qspi* %26, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.fsl_qspi*, %struct.fsl_qspi** %6, align 8
  %42 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %43 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fsl_qspi_check_buswidth(%struct.fsl_qspi* %41, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %51 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.fsl_qspi*, %struct.fsl_qspi** %6, align 8
  %57 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %58 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @fsl_qspi_check_buswidth(%struct.fsl_qspi* %56, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %55, %49
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %170

68:                                               ; preds = %64
  %69 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %70 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %74 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = add nsw i32 %72, %79
  %81 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %82 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = add nsw i32 %80, %87
  %89 = icmp sgt i32 %88, 6
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %170

91:                                               ; preds = %68
  %92 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %93 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %99 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 8
  %103 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %104 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %102, %106
  %108 = icmp sgt i32 %107, 64
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %170

110:                                              ; preds = %97, %91
  %111 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %112 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %150

117:                                              ; preds = %110
  %118 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %119 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.fsl_qspi*, %struct.fsl_qspi** %6, align 8
  %123 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %122, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %121, %126
  br i1 %127, label %149, label %128

128:                                              ; preds = %117
  %129 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %130 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.fsl_qspi*, %struct.fsl_qspi** %6, align 8
  %134 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = icmp sgt i64 %132, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %128
  %142 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %143 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @IS_ALIGNED(i32 %146, i32 8)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %141, %117
  store i32 0, i32* %3, align 4
  br label %170

150:                                              ; preds = %141, %128, %110
  %151 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %152 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %150
  %158 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %159 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.fsl_qspi*, %struct.fsl_qspi** %6, align 8
  %163 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %162, i32 0, i32 0
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %161, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %170

169:                                              ; preds = %157, %150
  store i32 1, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %168, %149, %109, %90, %67
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.fsl_qspi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @fsl_qspi_check_buswidth(%struct.fsl_qspi*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
