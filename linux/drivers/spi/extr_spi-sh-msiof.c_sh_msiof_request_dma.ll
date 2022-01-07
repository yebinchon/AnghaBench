; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { i8*, i8*, i8*, i8*, %struct.spi_controller*, %struct.sh_msiof_spi_info*, %struct.platform_device* }
%struct.spi_controller = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i64 }
%struct.sh_msiof_spi_info = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@TFDR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@RFDR = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DMA available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_msiof_spi_priv*)* @sh_msiof_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_request_dma(%struct.sh_msiof_spi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_msiof_spi_priv*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sh_msiof_spi_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.spi_controller*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.device*, align 8
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %3, align 8
  %13 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %14 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %13, i32 0, i32 6
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %19 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %18, i32 0, i32 5
  %20 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %19, align 8
  store %struct.sh_msiof_spi_info* %20, %struct.sh_msiof_spi_info** %6, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %6, align 8
  %28 = icmp ne %struct.sh_msiof_spi_info* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %6, align 8
  %31 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %6, align 8
  %36 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %6, align 8
  %41 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %6, align 8
  %44 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %47

46:                                               ; preds = %34, %29, %26
  store i32 0, i32* %2, align 4
  br label %210

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 1)
  store %struct.resource* %51, %struct.resource** %9, align 8
  %52 = load %struct.resource*, %struct.resource** %9, align 8
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = load i32, i32* @IORESOURCE_MEM, align 4
  %57 = call %struct.resource* @platform_get_resource(%struct.platform_device* %55, i32 %56, i32 0)
  store %struct.resource* %57, %struct.resource** %9, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %60 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %59, i32 0, i32 4
  %61 = load %struct.spi_controller*, %struct.spi_controller** %60, align 8
  store %struct.spi_controller* %61, %struct.spi_controller** %10, align 8
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.resource*, %struct.resource** %9, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TFDR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i8* @sh_msiof_request_dma_chan(%struct.device* %62, i32 %63, i32 %64, i64 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_4__*
  %72 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %73 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %72, i32 0, i32 0
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %73, align 8
  %74 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %75 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %58
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %210

81:                                               ; preds = %58
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.resource*, %struct.resource** %9, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RFDR, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i8* @sh_msiof_request_dma_chan(%struct.device* %82, i32 %83, i32 %84, i64 %89)
  %91 = bitcast i8* %90 to %struct.TYPE_4__*
  %92 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %93 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %92, i32 0, i32 1
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %93, align 8
  %94 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %95 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %81
  br label %201

99:                                               ; preds = %81
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = load i32, i32* @GFP_DMA, align 4
  %102 = or i32 %100, %101
  %103 = call i64 @__get_free_page(i32 %102)
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %106 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %108 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %99
  br label %196

112:                                              ; preds = %99
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = load i32, i32* @GFP_DMA, align 4
  %115 = or i32 %113, %114
  %116 = call i64 @__get_free_page(i32 %115)
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %119 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %121 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %112
  br label %190

125:                                              ; preds = %112
  %126 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %127 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load %struct.device*, %struct.device** %131, align 8
  store %struct.device* %132, %struct.device** %11, align 8
  %133 = load %struct.device*, %struct.device** %11, align 8
  %134 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %135 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load i32, i32* @DMA_TO_DEVICE, align 4
  %139 = call i8* @dma_map_single(%struct.device* %133, i8* %136, i32 %137, i32 %138)
  %140 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %141 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.device*, %struct.device** %11, align 8
  %143 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %144 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @dma_mapping_error(%struct.device* %142, i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %125
  br label %184

149:                                              ; preds = %125
  %150 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %151 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load %struct.device*, %struct.device** %155, align 8
  store %struct.device* %156, %struct.device** %12, align 8
  %157 = load %struct.device*, %struct.device** %12, align 8
  %158 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %159 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %163 = call i8* @dma_map_single(%struct.device* %157, i8* %160, i32 %161, i32 %162)
  %164 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %165 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  %166 = load %struct.device*, %struct.device** %12, align 8
  %167 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %168 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @dma_mapping_error(%struct.device* %166, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %149
  br label %176

173:                                              ; preds = %149
  %174 = load %struct.device*, %struct.device** %5, align 8
  %175 = call i32 @dev_info(%struct.device* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %210

176:                                              ; preds = %172
  %177 = load %struct.device*, %struct.device** %11, align 8
  %178 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %179 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* @PAGE_SIZE, align 4
  %182 = load i32, i32* @DMA_TO_DEVICE, align 4
  %183 = call i32 @dma_unmap_single(%struct.device* %177, i8* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %176, %148
  %185 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %186 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = call i32 @free_page(i64 %188)
  br label %190

190:                                              ; preds = %184, %124
  %191 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %192 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = ptrtoint i8* %193 to i64
  %195 = call i32 @free_page(i64 %194)
  br label %196

196:                                              ; preds = %190, %111
  %197 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %198 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = call i32 @dma_release_channel(%struct.TYPE_4__* %199)
  br label %201

201:                                              ; preds = %196, %98
  %202 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %203 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = call i32 @dma_release_channel(%struct.TYPE_4__* %204)
  %206 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %207 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %206, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %207, align 8
  %208 = load i32, i32* @ENODEV, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %201, %173, %78, %46
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @sh_msiof_request_dma_chan(%struct.device*, i32, i32, i64) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
