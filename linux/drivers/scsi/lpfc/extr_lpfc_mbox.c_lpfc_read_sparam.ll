; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_read_sparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_read_sparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32* }
%struct.TYPE_20__ = type { %struct.lpfc_dmabuf*, %struct.TYPE_12__ }
%struct.lpfc_dmabuf = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@OWN_HOST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MBX_READ_SPARM64 = common dso_local global i8* null, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"0301 READ_SPARAM: no buffers\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_read_sparam(%struct.lpfc_hba* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %9, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = call i32 @memset(%struct.TYPE_20__* %13, i32 0, i32 40)
  %15 = load i32, i32* @OWN_HOST, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.lpfc_dmabuf* @kmalloc(i32 12, i32 %18)
  store %struct.lpfc_dmabuf* %19, %struct.lpfc_dmabuf** %8, align 8
  %20 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %21 = icmp ne %struct.lpfc_dmabuf* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %24 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %25 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %24, i32 0, i32 0
  %26 = call i32 @lpfc_mbuf_alloc(%struct.lpfc_hba* %23, i32 0, i32* %25)
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %28 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %3
  %30 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %31 = icmp ne %struct.lpfc_dmabuf* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %39 = call i32 @kfree(%struct.lpfc_dmabuf* %38)
  %40 = load i8*, i8** @MBX_READ_SPARM64, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %44 = load i32, i32* @KERN_WARNING, align 4
  %45 = load i32, i32* @LOG_MBOX, align 4
  %46 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %103

47:                                               ; preds = %32
  %48 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %49 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %48, i32 0, i32 1
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load i8*, i8** @MBX_READ_SPARM64, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 4
  %62 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %63 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @putPaddrHigh(i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store i32 %65, i32* %71, align 4
  %72 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %73 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @putPaddrLow(i32 %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  store i32 %75, i32* %81, align 4
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @LPFC_SLI_REV3, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %47
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  br label %99

99:                                               ; preds = %87, %47
  %100 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  store %struct.lpfc_dmabuf* %100, %struct.lpfc_dmabuf** %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %37
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
