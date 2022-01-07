; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_setup_rc_umc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_setup_rc_umc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whcrc = type { i32, i32, i32*, i32, i32*, i32*, i32, %struct.umc_dev* }
%struct.umc_dev = type { i32, %struct.device, %struct.TYPE_2__ }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"can't request URC region (%zu bytes @ 0x%lx): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"can't ioremap registers (%zu bytes @ 0x%lx): %d\0A\00", align 1
@whcrc_irq_cb = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"can't allocate IRQ %d: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Can't allocate cmd transfer buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Can't allocate evt transfer buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.whcrc*)* @whcrc_setup_rc_umc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whcrc_setup_rc_umc(%struct.whcrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.whcrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.umc_dev*, align 8
  store %struct.whcrc* %0, %struct.whcrc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %8 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %7, i32 0, i32 7
  %9 = load %struct.umc_dev*, %struct.umc_dev** %8, align 8
  %10 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %12 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %11, i32 0, i32 7
  %13 = load %struct.umc_dev*, %struct.umc_dev** %12, align 8
  store %struct.umc_dev* %13, %struct.umc_dev** %6, align 8
  %14 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %15 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %19 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %21 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %20, i32 0, i32 2
  %22 = call i32 @resource_size(%struct.TYPE_2__* %21)
  %23 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %24 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %28 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %31 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @KBUILD_MODNAME, align 4
  %34 = call i32* @request_mem_region(i32 %29, i32 %32, i32 %33)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %39 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %42 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %44)
  br label %157

46:                                               ; preds = %1
  %47 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %48 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %51 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @ioremap_nocache(i32 %49, i32 %52)
  %54 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %55 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %57 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %46
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %63 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %66 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i32 %68)
  br label %149

70:                                               ; preds = %46
  %71 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %72 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @whcrc_irq_cb, align 4
  %75 = load i32, i32* @IRQF_SHARED, align 4
  %76 = load i32, i32* @KBUILD_MODNAME, align 4
  %77 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %78 = call i32 @request_irq(i32 %73, i32 %74, i32 %75, i32 %76, %struct.whcrc* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %84 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  br label %144

88:                                               ; preds = %70
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  %91 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %92 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %91, i32 0, i32 1
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %95 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %94, i32 0, i32 3
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @dma_alloc_coherent(%struct.device* %92, i32 %93, i32* %95, i32 %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %100 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %99, i32 0, i32 4
  store i32* %98, i32** %100, align 8
  %101 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %102 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %138

108:                                              ; preds = %88
  %109 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %110 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %109, i32 0, i32 1
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %113 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %112, i32 0, i32 6
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @dma_alloc_coherent(%struct.device* %110, i32 %111, i32* %113, i32 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %118 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %117, i32 0, i32 5
  store i32* %116, i32** %118, align 8
  %119 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %120 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %108
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %127

126:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %159

127:                                              ; preds = %123
  %128 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %129 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %128, i32 0, i32 1
  %130 = load i32, i32* @PAGE_SIZE, align 4
  %131 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %132 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %135 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @dma_free_coherent(%struct.device* %129, i32 %130, i32* %133, i32 %136)
  br label %138

138:                                              ; preds = %127, %105
  %139 = load %struct.umc_dev*, %struct.umc_dev** %6, align 8
  %140 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %143 = call i32 @free_irq(i32 %141, %struct.whcrc* %142)
  br label %144

144:                                              ; preds = %138, %81
  %145 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %146 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @iounmap(i32* %147)
  br label %149

149:                                              ; preds = %144, %60
  %150 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %151 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.whcrc*, %struct.whcrc** %3, align 8
  %154 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @release_mem_region(i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %149, %36
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %126
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.whcrc*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.whcrc*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
