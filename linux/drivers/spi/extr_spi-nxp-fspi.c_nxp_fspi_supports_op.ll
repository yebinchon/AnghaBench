; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_supports_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_supports_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.nxp_fspi = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64 }

@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @nxp_fspi_supports_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_fspi_supports_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.nxp_fspi*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %8 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %9 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nxp_fspi* @spi_controller_get_devdata(i32 %12)
  store %struct.nxp_fspi* %13, %struct.nxp_fspi** %6, align 8
  %14 = load %struct.nxp_fspi*, %struct.nxp_fspi** %6, align 8
  %15 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %16 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @nxp_fspi_check_buswidth(%struct.nxp_fspi* %14, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %21 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.nxp_fspi*, %struct.nxp_fspi** %6, align 8
  %27 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %28 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nxp_fspi_check_buswidth(%struct.nxp_fspi* %26, i32 %30)
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
  %41 = load %struct.nxp_fspi*, %struct.nxp_fspi** %6, align 8
  %42 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %43 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nxp_fspi_check_buswidth(%struct.nxp_fspi* %41, i32 %45)
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
  %56 = load %struct.nxp_fspi*, %struct.nxp_fspi** %6, align 8
  %57 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %58 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @nxp_fspi_check_buswidth(%struct.nxp_fspi* %56, i32 %60)
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
  br label %164

68:                                               ; preds = %64
  %69 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %70 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %164

75:                                               ; preds = %68
  %76 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %77 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.nxp_fspi*, %struct.nxp_fspi** %6, align 8
  %81 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %164

85:                                               ; preds = %75
  %86 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %87 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %93 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 8
  %97 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %98 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %96, %100
  %102 = icmp sgt i32 %101, 64
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %164

104:                                              ; preds = %91, %85
  %105 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %106 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %144

111:                                              ; preds = %104
  %112 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %113 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.nxp_fspi*, %struct.nxp_fspi** %6, align 8
  %117 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %115, %120
  br i1 %121, label %143, label %122

122:                                              ; preds = %111
  %123 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %124 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.nxp_fspi*, %struct.nxp_fspi** %6, align 8
  %128 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %127, i32 0, i32 1
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 4
  %133 = sext i32 %132 to i64
  %134 = icmp sgt i64 %126, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %122
  %136 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %137 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @IS_ALIGNED(i32 %140, i32 8)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %135, %111
  store i32 0, i32* %3, align 4
  br label %164

144:                                              ; preds = %135, %122, %104
  %145 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %146 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %144
  %152 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %153 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.nxp_fspi*, %struct.nxp_fspi** %6, align 8
  %157 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %155, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %164

163:                                              ; preds = %151, %144
  store i32 1, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %162, %143, %103, %84, %74, %67
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.nxp_fspi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @nxp_fspi_check_buswidth(%struct.nxp_fspi*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
