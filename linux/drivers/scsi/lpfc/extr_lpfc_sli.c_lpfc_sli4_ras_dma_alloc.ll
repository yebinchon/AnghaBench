; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_ras_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_ras_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_4__*, %struct.lpfc_ras_fwlog }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_ras_fwlog = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.lpfc_dmabuf = type { i32, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"6185 LWPD Memory Alloc Failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"6186 Memory Alloc failed FW logging\00", align 1
@LPFC_RAS_MAX_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"6187 DMA Alloc Failed FW logging\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_sli4_ras_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_ras_dma_alloc(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_ras_fwlog*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 1
  store %struct.lpfc_ras_fwlog* %11, %struct.lpfc_ras_fwlog** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %6, align 8
  %13 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @dma_alloc_coherent(i32* %18, i32 8, i32* %21, i32 %22)
  %24 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = load i32, i32* @LOG_INIT, align 4
  %36 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %107

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %95, %39
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %98

49:                                               ; preds = %43
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.lpfc_dmabuf* @kzalloc(i32 24, i32 %50)
  store %struct.lpfc_dmabuf* %51, %struct.lpfc_dmabuf** %7, align 8
  %52 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %53 = icmp ne %struct.lpfc_dmabuf* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = load i32, i32* @KERN_WARNING, align 4
  %59 = load i32, i32* @LOG_INIT, align 4
  %60 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %99

61:                                               ; preds = %49
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* @LPFC_RAS_MAX_ENTRY_SIZE, align 4
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 3
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @dma_alloc_coherent(i32* %65, i32 %66, i32* %68, i32 %69)
  %71 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %74 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %61
  %78 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %79 = call i32 @kfree(%struct.lpfc_dmabuf* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %83 = load i32, i32* @KERN_WARNING, align 4
  %84 = load i32, i32* @LOG_INIT, align 4
  %85 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %99

86:                                               ; preds = %61
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %91 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %90, i32 0, i32 1
  %92 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %6, align 8
  %93 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %92, i32 0, i32 1
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %43

98:                                               ; preds = %43
  br label %99

99:                                               ; preds = %98, %77, %54
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %104 = call i32 @lpfc_sli4_ras_dma_free(%struct.lpfc_hba* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %32
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local %struct.lpfc_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_sli4_ras_dma_free(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
