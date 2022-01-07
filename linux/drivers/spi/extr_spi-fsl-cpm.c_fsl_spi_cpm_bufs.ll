; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_spi = type { i32, i32, i8*, i8*, i32, %struct.spi_transfer*, i8*, i64, i8*, i8*, %struct.fsl_spi_reg*, %struct.device* }
%struct.fsl_spi_reg = type { i32 }
%struct.device = type { i32 }
%struct.spi_transfer = type { i32, i8*, i64, i8*, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unable to map tx dma\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to map rx dma\0A\00", align 1
@SPIE_RXB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_spi_cpm_bufs(%struct.mpc8xxx_spi* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc8xxx_spi*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.fsl_spi_reg*, align 8
  %10 = alloca i8*, align 8
  store %struct.mpc8xxx_spi* %0, %struct.mpc8xxx_spi** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %12 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %11, i32 0, i32 11
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %15 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %14, i32 0, i32 10
  %16 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %15, align 8
  store %struct.fsl_spi_reg* %16, %struct.fsl_spi_reg** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %21 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %23 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %26 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %28 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %36 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %35, i32 0, i32 9
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %39 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %41 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %49 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %48, i32 0, i32 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %52 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %54 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %57 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %62 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %10, align 8
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i8* @dma_map_single(%struct.device* %65, i8* %66, i32 %69, i32 %70)
  %72 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %73 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %76 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @dma_mapping_error(%struct.device* %74, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %60
  %81 = load %struct.device*, %struct.device** %8, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %170

85:                                               ; preds = %60
  br label %98

86:                                               ; preds = %55
  %87 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %88 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %93 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %96 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %91, %86
  br label %98

98:                                               ; preds = %97, %85
  %99 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %100 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %98
  %104 = load %struct.device*, %struct.device** %8, align 8
  %105 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %106 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %109 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %112 = call i8* @dma_map_single(%struct.device* %104, i8* %107, i32 %110, i32 %111)
  %113 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %114 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.device*, %struct.device** %8, align 8
  %116 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %117 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %116, i32 0, i32 6
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @dma_mapping_error(%struct.device* %115, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %103
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %152

124:                                              ; preds = %103
  br label %137

125:                                              ; preds = %98
  %126 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %127 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %132 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %135 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %134, i32 0, i32 6
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %130, %125
  br label %137

137:                                              ; preds = %136, %124
  %138 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %9, align 8
  %139 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %138, i32 0, i32 0
  %140 = load i32, i32* @SPIE_RXB, align 4
  %141 = call i32 @mpc8xxx_spi_write_reg(i32* %139, i32 %140)
  %142 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %143 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %144 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %143, i32 0, i32 5
  store %struct.spi_transfer* %142, %struct.spi_transfer** %144, align 8
  %145 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %146 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %149 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %151 = call i32 @fsl_spi_cpm_bufs_start(%struct.mpc8xxx_spi* %150)
  store i32 0, i32* %4, align 4
  br label %170

152:                                              ; preds = %121
  %153 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %154 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load %struct.device*, %struct.device** %8, align 8
  %159 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %5, align 8
  %160 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %163 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @DMA_TO_DEVICE, align 4
  %166 = call i32 @dma_unmap_single(%struct.device* %158, i8* %161, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %157, %152
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %167, %137, %80
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mpc8xxx_spi_write_reg(i32*, i32) #1

declare dso_local i32 @fsl_spi_cpm_bufs_start(%struct.mpc8xxx_spi*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
