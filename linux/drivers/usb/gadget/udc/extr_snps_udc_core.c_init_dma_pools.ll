; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_init_dma_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_init_dma_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32*, i32*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.udc_stp_dma*, %struct.udc_data_dma*, i32, i32* }
%struct.udc_stp_dma = type { i32 }
%struct.udc_data_dma = type { i32 }
%struct.TYPE_3__ = type { i32 }

@use_dma_ppb = common dso_local global i64 0, align 8
@use_dma_bufferfill_mode = common dso_local global i32 0, align 4
@use_dma_ppb_du = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"data_requests\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"can't get request data pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@UDC_EP0IN_IX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"setup requests\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"can't get stp request pool\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@UDC_EP0OUT_IX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_dma_pools(%struct.udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udc*, align 8
  %4 = alloca %struct.udc_stp_dma*, align 8
  %5 = alloca %struct.udc_data_dma*, align 8
  %6 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %3, align 8
  %7 = load i64, i64* @use_dma_ppb, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* @use_dma_bufferfill_mode, align 4
  br label %11

10:                                               ; preds = %1
  store i64 0, i64* @use_dma_ppb_du, align 8
  store i32 1, i32* @use_dma_bufferfill_mode, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load %struct.udc*, %struct.udc** %3, align 8
  %13 = getelementptr inbounds %struct.udc, %struct.udc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @dma_pool_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14, i32 4, i32 0, i32 0)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.udc*, %struct.udc** %3, align 8
  %18 = getelementptr inbounds %struct.udc, %struct.udc* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.udc*, %struct.udc** %3, align 8
  %20 = getelementptr inbounds %struct.udc, %struct.udc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = load %struct.udc*, %struct.udc** %3, align 8
  %25 = call i32 @DBG(%struct.udc* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %140

28:                                               ; preds = %11
  %29 = load %struct.udc*, %struct.udc** %3, align 8
  %30 = getelementptr inbounds %struct.udc, %struct.udc* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.udc*, %struct.udc** %3, align 8
  %34 = getelementptr inbounds %struct.udc, %struct.udc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* @UDC_EP0IN_IX, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32* %32, i32** %38, align 8
  %39 = load %struct.udc*, %struct.udc** %3, align 8
  %40 = getelementptr inbounds %struct.udc, %struct.udc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @dma_pool_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 4, i32 0, i32 0)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.udc*, %struct.udc** %3, align 8
  %45 = getelementptr inbounds %struct.udc, %struct.udc* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.udc*, %struct.udc** %3, align 8
  %47 = getelementptr inbounds %struct.udc, %struct.udc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %28
  %51 = load %struct.udc*, %struct.udc** %3, align 8
  %52 = call i32 @DBG(%struct.udc* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %132

55:                                               ; preds = %28
  %56 = load %struct.udc*, %struct.udc** %3, align 8
  %57 = getelementptr inbounds %struct.udc, %struct.udc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load %struct.udc*, %struct.udc** %3, align 8
  %61 = getelementptr inbounds %struct.udc, %struct.udc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i8* @dma_pool_alloc(i32* %58, i32 %59, i32* %65)
  %67 = bitcast i8* %66 to %struct.udc_stp_dma*
  store %struct.udc_stp_dma* %67, %struct.udc_stp_dma** %4, align 8
  %68 = load %struct.udc_stp_dma*, %struct.udc_stp_dma** %4, align 8
  %69 = icmp ne %struct.udc_stp_dma* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %125

73:                                               ; preds = %55
  %74 = load %struct.udc_stp_dma*, %struct.udc_stp_dma** %4, align 8
  %75 = load %struct.udc*, %struct.udc** %3, align 8
  %76 = getelementptr inbounds %struct.udc, %struct.udc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store %struct.udc_stp_dma* %74, %struct.udc_stp_dma** %80, align 8
  %81 = load %struct.udc*, %struct.udc** %3, align 8
  %82 = getelementptr inbounds %struct.udc, %struct.udc* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load %struct.udc*, %struct.udc** %3, align 8
  %86 = getelementptr inbounds %struct.udc, %struct.udc* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = call i8* @dma_pool_alloc(i32* %83, i32 %84, i32* %90)
  %92 = bitcast i8* %91 to %struct.udc_data_dma*
  store %struct.udc_data_dma* %92, %struct.udc_data_dma** %5, align 8
  %93 = load %struct.udc_data_dma*, %struct.udc_data_dma** %5, align 8
  %94 = icmp ne %struct.udc_data_dma* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %73
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %106

98:                                               ; preds = %73
  %99 = load %struct.udc_data_dma*, %struct.udc_data_dma** %5, align 8
  %100 = load %struct.udc*, %struct.udc** %3, align 8
  %101 = getelementptr inbounds %struct.udc, %struct.udc* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store %struct.udc_data_dma* %99, %struct.udc_data_dma** %105, align 8
  store i32 0, i32* %2, align 4
  br label %140

106:                                              ; preds = %95
  %107 = load %struct.udc*, %struct.udc** %3, align 8
  %108 = getelementptr inbounds %struct.udc, %struct.udc* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.udc*, %struct.udc** %3, align 8
  %111 = getelementptr inbounds %struct.udc, %struct.udc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load %struct.udc_stp_dma*, %struct.udc_stp_dma** %115, align 8
  %117 = load %struct.udc*, %struct.udc** %3, align 8
  %118 = getelementptr inbounds %struct.udc, %struct.udc* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dma_pool_free(i32* %109, %struct.udc_stp_dma* %116, i32 %123)
  br label %125

125:                                              ; preds = %106, %70
  %126 = load %struct.udc*, %struct.udc** %3, align 8
  %127 = getelementptr inbounds %struct.udc, %struct.udc* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @dma_pool_destroy(i32* %128)
  %130 = load %struct.udc*, %struct.udc** %3, align 8
  %131 = getelementptr inbounds %struct.udc, %struct.udc* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %125, %50
  %133 = load %struct.udc*, %struct.udc** %3, align 8
  %134 = getelementptr inbounds %struct.udc, %struct.udc* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @dma_pool_destroy(i32* %135)
  %137 = load %struct.udc*, %struct.udc** %3, align 8
  %138 = getelementptr inbounds %struct.udc, %struct.udc* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %132, %98, %23
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i8* @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DBG(%struct.udc*, i8*) #1

declare dso_local i8* @dma_pool_alloc(i32*, i32, i32*) #1

declare dso_local i32 @dma_pool_free(i32*, %struct.udc_stp_dma*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
