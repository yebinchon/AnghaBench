; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_read_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_read_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_espi = type { i32, i32, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i8* }

@ESPI_SPIRF = common dso_local global i32 0, align 4
@transfer_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_espi*, i64)* @fsl_espi_read_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_espi_read_rx_fifo(%struct.fsl_espi* %0, i64 %1) #0 {
  %3 = alloca %struct.fsl_espi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fsl_espi* %0, %struct.fsl_espi** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @SPIE_RXCNT(i64 %11)
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %170, %2
  %14 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %141, %13
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @min(i32 4, i32 %30)
  %32 = icmp sge i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i1 [ false, %28 ], [ %35, %33 ]
  br i1 %37, label %38, label %142

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = icmp uge i32 %39, 4
  br i1 %40, label %41, label %84

41:                                               ; preds = %38
  %42 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %43 = load i32, i32* @ESPI_SPIRF, align 4
  %44 = call i64 @fsl_espi_read_reg(%struct.fsl_espi* %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %49 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @swahb32(i64 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %57 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = getelementptr i8, i8* %55, i64 %59
  %61 = bitcast i8* %60 to i64*
  store i64 %54, i64* %61, align 8
  br label %75

62:                                               ; preds = %47, %41
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %69 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = zext i32 %70 to i64
  %72 = getelementptr i8, i8* %67, i64 %71
  %73 = bitcast i8* %72 to i64*
  store i64 %66, i64* %73, align 8
  br label %74

74:                                               ; preds = %65, %62
  br label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %77 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add i32 %78, 4
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sub i32 %80, 4
  store i32 %81, i32* %6, align 4
  %82 = load i64, i64* %5, align 8
  %83 = sub nsw i64 %82, 4
  store i64 %83, i64* %5, align 8
  br label %141

84:                                               ; preds = %38
  %85 = load i32, i32* %6, align 4
  %86 = icmp uge i32 %85, 2
  br i1 %86, label %87, label %116

87:                                               ; preds = %84
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %92 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %97 = load i32, i32* @ESPI_SPIRF, align 4
  %98 = call i32 @fsl_espi_read_reg16(%struct.fsl_espi* %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @swab16(i32 %99)
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %103 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = zext i32 %104 to i64
  %106 = getelementptr i8, i8* %101, i64 %105
  %107 = bitcast i8* %106 to i32*
  store i32 %100, i32* %107, align 4
  %108 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %109 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add i32 %110, 2
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sub i32 %112, 2
  store i32 %113, i32* %6, align 4
  %114 = load i64, i64* %5, align 8
  %115 = sub nsw i64 %114, 2
  store i64 %115, i64* %5, align 8
  br label %140

116:                                              ; preds = %90, %87, %84
  %117 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %118 = load i32, i32* @ESPI_SPIRF, align 4
  %119 = call i32 @fsl_espi_read_reg8(%struct.fsl_espi* %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %126 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = zext i32 %127 to i64
  %129 = getelementptr i8, i8* %124, i64 %128
  %130 = bitcast i8* %129 to i32*
  store i32 %123, i32* %130, align 4
  br label %131

131:                                              ; preds = %122, %116
  %132 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %133 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sub i32 %136, 1
  store i32 %137, i32* %6, align 4
  %138 = load i64, i64* %5, align 8
  %139 = sub nsw i64 %138, 1
  store i64 %139, i64* %5, align 8
  br label %140

140:                                              ; preds = %131, %95
  br label %141

141:                                              ; preds = %140, %75
  br label %28

142:                                              ; preds = %36
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %172, label %145

145:                                              ; preds = %142
  %146 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %147 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %146, i32 0, i32 2
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %151 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @list_is_last(i32* %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %157 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  br label %172

158:                                              ; preds = %145
  %159 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %160 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %159, i32 0, i32 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i32, i32* @transfer_list, align 4
  %163 = call %struct.TYPE_3__* @list_next_entry(%struct.TYPE_3__* %161, i32 %162)
  %164 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %165 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %164, i32 0, i32 2
  store %struct.TYPE_3__* %163, %struct.TYPE_3__** %165, align 8
  %166 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %167 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load i64, i64* %5, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %13

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %155, %171, %142
  ret void
}

declare dso_local i64 @SPIE_RXCNT(i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @fsl_espi_read_reg(%struct.fsl_espi*, i32) #1

declare dso_local i64 @swahb32(i64) #1

declare dso_local i32 @fsl_espi_read_reg16(%struct.fsl_espi*, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @fsl_espi_read_reg8(%struct.fsl_espi*, i32) #1

declare dso_local i64 @list_is_last(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @list_next_entry(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
