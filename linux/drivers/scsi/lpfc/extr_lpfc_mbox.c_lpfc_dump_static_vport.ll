; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_dump_static_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_dump_static_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i32, i32, %struct.TYPE_13__* }

@MBX_DUMP_MEMORY = common dso_local global i32 0, align 4
@DMP_NV_PARAMS = common dso_local global i32 0, align 4
@DMP_REGION_VPORT = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@DMP_RSP_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"2605 lpfc_dump_static_vport: memory allocation failed\0A\00", align 1
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_dump_static_vport(%struct.lpfc_hba* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 48)
  %15 = load i32, i32* @MBX_DUMP_MEMORY, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @DMP_NV_PARAMS, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  store i32 %23, i32* %27, align 8
  %28 = load i32, i32* @DMP_REGION_VPORT, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @OWN_HOST, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LPFC_SLI_REV4, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %3
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @DMP_RSP_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %116

54:                                               ; preds = %3
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.lpfc_dmabuf* @kmalloc(i32 16, i32 %55)
  store %struct.lpfc_dmabuf* %56, %struct.lpfc_dmabuf** %9, align 8
  %57 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %58 = icmp ne %struct.lpfc_dmabuf* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %61 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %62 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %61, i32 0, i32 0
  %63 = call %struct.TYPE_13__* @lpfc_mbuf_alloc(%struct.lpfc_hba* %60, i32 0, i32* %62)
  %64 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %65 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %64, i32 0, i32 2
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %68 = icmp ne %struct.lpfc_dmabuf* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %71 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %70, i32 0, i32 2
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %76 = call i32 @kfree(%struct.lpfc_dmabuf* %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %78 = load i32, i32* @KERN_ERR, align 4
  %79 = load i32, i32* @LOG_MBOX, align 4
  %80 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %116

81:                                               ; preds = %69
  %82 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %83 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %82, i32 0, i32 2
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %86 = call i32 @memset(%struct.TYPE_13__* %84, i32 0, i32 %85)
  %87 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %88 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %87, i32 0, i32 1
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %91 = bitcast %struct.lpfc_dmabuf* %90 to i32*
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32* %91, i32** %93, align 8
  %94 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %95 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @putPaddrLow(i32 %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %97, i32* %102, align 4
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %104 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @putPaddrHigh(i32 %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32 %106, i32* %111, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  store i32 4, i32* %115, align 8
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %81, %74, %41
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_13__* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
