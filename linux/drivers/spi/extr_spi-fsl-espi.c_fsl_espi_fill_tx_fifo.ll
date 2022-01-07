; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_espi = type { i32, i32, %struct.TYPE_3__*, i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i8*, i32 }

@FSL_ESPI_FIFO_SIZE = common dso_local global i64 0, align 8
@ESPI_SPITF = common dso_local global i32 0, align 4
@transfer_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_espi*, i64)* @fsl_espi_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_espi_fill_tx_fifo(%struct.fsl_espi* %0, i64 %1) #0 {
  %3 = alloca %struct.fsl_espi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.fsl_espi* %0, %struct.fsl_espi** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @SPIE_TXCNT(i64 %11)
  br label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @FSL_ESPI_FIFO_SIZE, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i64 [ %12, %10 ], [ %14, %13 ]
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %183, %15
  %18 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %19 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %28 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %149, %17
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @min(i32 4, i32 %34)
  %36 = icmp sge i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i1 [ false, %32 ], [ %39, %37 ]
  br i1 %41, label %42, label %150

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = icmp uge i32 %43, 4
  br i1 %44, label %45, label %90

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %50 = load i32, i32* @ESPI_SPITF, align 4
  %51 = call i32 @fsl_espi_write_reg(%struct.fsl_espi* %49, i32 %50, i64 0)
  br label %81

52:                                               ; preds = %45
  %53 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %54 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %59 = load i32, i32* @ESPI_SPITF, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %62 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = zext i32 %63 to i64
  %65 = getelementptr i8, i8* %60, i64 %64
  %66 = call i64 @swahb32p(i8* %65)
  %67 = call i32 @fsl_espi_write_reg(%struct.fsl_espi* %58, i32 %59, i64 %66)
  br label %80

68:                                               ; preds = %52
  %69 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %70 = load i32, i32* @ESPI_SPITF, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %73 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = getelementptr i8, i8* %71, i64 %75
  %77 = bitcast i8* %76 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @fsl_espi_write_reg(%struct.fsl_espi* %69, i32 %70, i64 %78)
  br label %80

80:                                               ; preds = %68, %57
  br label %81

81:                                               ; preds = %80, %48
  %82 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %83 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add i32 %84, 4
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sub i32 %86, 4
  store i32 %87, i32* %6, align 4
  %88 = load i64, i64* %5, align 8
  %89 = sub nsw i64 %88, 4
  store i64 %89, i64* %5, align 8
  br label %149

90:                                               ; preds = %42
  %91 = load i32, i32* %6, align 4
  %92 = icmp uge i32 %91, 2
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %98 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %96
  %102 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %103 = load i32, i32* @ESPI_SPITF, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %106 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = zext i32 %107 to i64
  %109 = getelementptr i8, i8* %104, i64 %108
  %110 = call i32 @swab16p(i8* %109)
  %111 = call i32 @fsl_espi_write_reg16(%struct.fsl_espi* %102, i32 %103, i32 %110)
  %112 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %113 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add i32 %114, 2
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sub i32 %116, 2
  store i32 %117, i32* %6, align 4
  %118 = load i64, i64* %5, align 8
  %119 = sub nsw i64 %118, 2
  store i64 %119, i64* %5, align 8
  br label %148

120:                                              ; preds = %96, %93, %90
  %121 = load i8*, i8** %7, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %125 = load i32, i32* @ESPI_SPITF, align 4
  %126 = call i32 @fsl_espi_write_reg8(%struct.fsl_espi* %124, i32 %125, i32 0)
  br label %139

127:                                              ; preds = %120
  %128 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %129 = load i32, i32* @ESPI_SPITF, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %132 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = zext i32 %133 to i64
  %135 = getelementptr i8, i8* %130, i64 %134
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @fsl_espi_write_reg8(%struct.fsl_espi* %128, i32 %129, i32 %137)
  br label %139

139:                                              ; preds = %127, %123
  %140 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %141 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sub i32 %144, 1
  store i32 %145, i32* %6, align 4
  %146 = load i64, i64* %5, align 8
  %147 = sub nsw i64 %146, 1
  store i64 %147, i64* %5, align 8
  br label %148

148:                                              ; preds = %139, %101
  br label %149

149:                                              ; preds = %148, %81
  br label %32

150:                                              ; preds = %40
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %185, label %153

153:                                              ; preds = %150
  %154 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %155 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %154, i32 0, i32 2
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %159 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @list_is_last(i32* %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %153
  %164 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %165 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163, %153
  %169 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %170 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %169, i32 0, i32 1
  store i32 1, i32* %170, align 4
  br label %185

171:                                              ; preds = %163
  %172 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %173 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %172, i32 0, i32 2
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = load i32, i32* @transfer_list, align 4
  %176 = call %struct.TYPE_3__* @list_next_entry(%struct.TYPE_3__* %174, i32 %175)
  %177 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %178 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %177, i32 0, i32 2
  store %struct.TYPE_3__* %176, %struct.TYPE_3__** %178, align 8
  %179 = load %struct.fsl_espi*, %struct.fsl_espi** %3, align 8
  %180 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  %181 = load i64, i64* %5, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  br label %17

184:                                              ; preds = %171
  br label %185

185:                                              ; preds = %168, %184, %150
  ret void
}

declare dso_local i64 @SPIE_TXCNT(i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @fsl_espi_write_reg(%struct.fsl_espi*, i32, i64) #1

declare dso_local i64 @swahb32p(i8*) #1

declare dso_local i32 @fsl_espi_write_reg16(%struct.fsl_espi*, i32, i32) #1

declare dso_local i32 @swab16p(i8*) #1

declare dso_local i32 @fsl_espi_write_reg8(%struct.fsl_espi*, i32, i32) #1

declare dso_local i64 @list_is_last(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @list_next_entry(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
