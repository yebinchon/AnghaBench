; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_dump_cfg_rg23.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_dump_cfg_rg23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfcMboxq = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.lpfc_dmabuf = type { i32, i32, %struct.lpfcMboxq* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"2569 lpfc dump config region 23: memory allocation failed\0A\00", align 1
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@MBX_DUMP_MEMORY = common dso_local global i32 0, align 4
@DMP_NV_PARAMS = common dso_local global i32 0, align 4
@DMP_REGION_23 = common dso_local global i32 0, align 4
@DMP_RGN23_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_dump_cfg_rg23(%struct.lpfc_hba* %0, %struct.lpfcMboxq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfcMboxq*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfcMboxq* %1, %struct.lpfcMboxq** %5, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %6, align 8
  %8 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %5, align 8
  %9 = call i32 @memset(%struct.lpfcMboxq* %8, i32 0, i32 40)
  %10 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %5, align 8
  %11 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.lpfc_dmabuf* @kmalloc(i32 16, i32 %13)
  store %struct.lpfc_dmabuf* %14, %struct.lpfc_dmabuf** %6, align 8
  %15 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %16 = icmp ne %struct.lpfc_dmabuf* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %19, i32 0, i32 0
  %21 = call %struct.lpfcMboxq* @lpfc_mbuf_alloc(%struct.lpfc_hba* %18, i32 0, i32* %20)
  %22 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %22, i32 0, i32 2
  store %struct.lpfcMboxq* %21, %struct.lpfcMboxq** %23, align 8
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %26 = icmp ne %struct.lpfc_dmabuf* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %29 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %28, i32 0, i32 2
  %30 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %29, align 8
  %31 = icmp ne %struct.lpfcMboxq* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %34 = call i32 @kfree(%struct.lpfc_dmabuf* %33)
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = load i32, i32* @KERN_WARNING, align 4
  %37 = load i32, i32* @LOG_MBOX, align 4
  %38 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %88

39:                                               ; preds = %27
  %40 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %41 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %40, i32 0, i32 2
  %42 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %41, align 8
  %43 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %44 = call i32 @memset(%struct.lpfcMboxq* %42, i32 0, i32 %43)
  %45 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %45, i32 0, i32 1
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %49 = bitcast %struct.lpfc_dmabuf* %48 to i32*
  %50 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %5, align 8
  %51 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* @MBX_DUMP_MEMORY, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @DMP_NV_PARAMS, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32 %55, i32* %59, align 8
  %60 = load i32, i32* @DMP_REGION_23, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @DMP_RGN23_SIZE, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %71 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @putPaddrLow(i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 %73, i32* %78, align 4
  %79 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @putPaddrHigh(i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32 %82, i32* %87, align 4
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %39, %32
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.lpfcMboxq*, i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local %struct.lpfcMboxq* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

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
