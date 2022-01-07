; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_print_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_print_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"------- Device registers -------\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"dev config     = %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"dev control    = %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"dev status     = %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"dev int's      = %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"dev intmask    = %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"dev ep int's   = %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"dev ep intmask = %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"USE DMA        = %d\0A\00", align 1
@use_dma = common dso_local global i64 0, align 8
@use_dma_ppb = common dso_local global i64 0, align 8
@use_dma_ppb_du = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [66 x i8] c"DMA mode       = PPBNDU (packet per buffer WITHOUT desc. update)\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"DMA mode (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"PPBNDU\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"DMA mode       = PPBDU (packet per buffer WITH desc. update)\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"PPBDU\00", align 1
@use_dma_bufferfill_mode = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [40 x i8] c"DMA mode       = BF (buffer fill mode)\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"BF\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"FIFO mode\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"-------------------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @print_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_regs(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  store %struct.udc* %0, %struct.udc** %2, align 8
  %3 = load %struct.udc*, %struct.udc** %2, align 8
  %4 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.udc*, %struct.udc** %2, align 8
  %6 = load %struct.udc*, %struct.udc** %2, align 8
  %7 = getelementptr inbounds %struct.udc, %struct.udc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 6
  %10 = call i32 @readl(i32* %9)
  %11 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.udc*, %struct.udc** %2, align 8
  %13 = load %struct.udc*, %struct.udc** %2, align 8
  %14 = getelementptr inbounds %struct.udc, %struct.udc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = call i32 @readl(i32* %16)
  %18 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.udc*, %struct.udc** %2, align 8
  %20 = load %struct.udc*, %struct.udc** %2, align 8
  %21 = getelementptr inbounds %struct.udc, %struct.udc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = call i32 @readl(i32* %23)
  %25 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load %struct.udc*, %struct.udc** %2, align 8
  %27 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %28 = load %struct.udc*, %struct.udc** %2, align 8
  %29 = load %struct.udc*, %struct.udc** %2, align 8
  %30 = getelementptr inbounds %struct.udc, %struct.udc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = call i32 @readl(i32* %32)
  %34 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.udc*, %struct.udc** %2, align 8
  %36 = load %struct.udc*, %struct.udc** %2, align 8
  %37 = getelementptr inbounds %struct.udc, %struct.udc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @readl(i32* %39)
  %41 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load %struct.udc*, %struct.udc** %2, align 8
  %43 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.udc*, %struct.udc** %2, align 8
  %45 = load %struct.udc*, %struct.udc** %2, align 8
  %46 = getelementptr inbounds %struct.udc, %struct.udc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = call i32 @readl(i32* %48)
  %50 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = load %struct.udc*, %struct.udc** %2, align 8
  %52 = load %struct.udc*, %struct.udc** %2, align 8
  %53 = getelementptr inbounds %struct.udc, %struct.udc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @readl(i32* %55)
  %57 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  %58 = load %struct.udc*, %struct.udc** %2, align 8
  %59 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.udc*, %struct.udc** %2, align 8
  %61 = load i64, i64* @use_dma, align 8
  %62 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %61)
  %63 = load i64, i64* @use_dma, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %1
  %66 = load i64, i64* @use_dma_ppb, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i64, i64* @use_dma_ppb_du, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load %struct.udc*, %struct.udc** %2, align 8
  %73 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %72, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0))
  %74 = load %struct.udc*, %struct.udc** %2, align 8
  %75 = getelementptr inbounds %struct.udc, %struct.udc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @dev_info(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %95

78:                                               ; preds = %68, %65, %1
  %79 = load i64, i64* @use_dma, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i64, i64* @use_dma_ppb, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i64, i64* @use_dma_ppb_du, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.udc*, %struct.udc** %2, align 8
  %89 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %88, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0))
  %90 = load %struct.udc*, %struct.udc** %2, align 8
  %91 = getelementptr inbounds %struct.udc, %struct.udc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @dev_info(i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %94

94:                                               ; preds = %87, %84, %81, %78
  br label %95

95:                                               ; preds = %94, %71
  %96 = load i64, i64* @use_dma, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i64, i64* @use_dma_bufferfill_mode, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.udc*, %struct.udc** %2, align 8
  %103 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  %104 = load %struct.udc*, %struct.udc** %2, align 8
  %105 = getelementptr inbounds %struct.udc, %struct.udc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @dev_info(i32 %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %108

108:                                              ; preds = %101, %98, %95
  %109 = load i64, i64* @use_dma, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load %struct.udc*, %struct.udc** %2, align 8
  %113 = getelementptr inbounds %struct.udc, %struct.udc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @dev_info(i32 %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %108
  %117 = load %struct.udc*, %struct.udc** %2, align 8
  %118 = call i32 (%struct.udc*, i8*, ...) @DBG(%struct.udc* %117, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*, ...) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
