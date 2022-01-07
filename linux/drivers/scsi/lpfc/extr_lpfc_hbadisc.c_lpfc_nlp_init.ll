; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32, i32, %struct.TYPE_4__*, %struct.lpfc_nodelist*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_vport = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@LPFC_RPI_ALLOC_ERROR = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"0007 rpi:%x DID:%x flg:%x refcnt:%d map:%x x%px\0A\00", align 1
@LPFC_DISC_TRC_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"node init:       did:x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @LPFC_RPI_ALLOC_ERROR, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LPFC_SLI_REV4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call i32 @lpfc_sli4_alloc_rpi(%struct.TYPE_5__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LPFC_RPI_ALLOC_ERROR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %126

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @mempool_alloc(i32 %31, i32 %32)
  %34 = bitcast i8* %33 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %34, %struct.lpfc_nodelist** %6, align 8
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %36 = icmp ne %struct.lpfc_nodelist* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %26
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LPFC_SLI_REV4, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @lpfc_sli4_free_rpi(%struct.TYPE_5__* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %37
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %3, align 8
  br label %126

52:                                               ; preds = %26
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %54 = call i32 @memset(%struct.lpfc_nodelist* %53, i32 0, i32 40)
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @lpfc_initialize_node(%struct.lpfc_vport* %55, %struct.lpfc_nodelist* %56, i32 %57)
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 7
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LPFC_SLI_REV4, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %52
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %74 = load i32, i32* @KERN_INFO, align 4
  %75 = load i32, i32* @LOG_NODE, align 4
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %77 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %83 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %86 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %85, i32 0, i32 5
  %87 = call i32 @kref_read(i32* %86)
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %92 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, %struct.lpfc_nodelist* %91)
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %94 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @mempool_alloc(i32 %97, i32 %98)
  %100 = bitcast i8* %99 to %struct.lpfc_nodelist*
  %101 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %102 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %101, i32 0, i32 3
  store %struct.lpfc_nodelist* %100, %struct.lpfc_nodelist** %102, align 8
  %103 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %104 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %103, i32 0, i32 3
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %104, align 8
  %106 = icmp ne %struct.lpfc_nodelist* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %69
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %109 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %108, i32 0, i32 3
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %109, align 8
  %111 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %112 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memset(%struct.lpfc_nodelist* %110, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %107, %69
  br label %118

118:                                              ; preds = %117, %52
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %120 = load i32, i32* @LPFC_DISC_TRC_NODE, align 4
  %121 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %122 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %119, i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 0, i32 0)
  %125 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  store %struct.lpfc_nodelist* %125, %struct.lpfc_nodelist** %3, align 8
  br label %126

126:                                              ; preds = %118, %51, %24
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  ret %struct.lpfc_nodelist* %127
}

declare dso_local i32 @lpfc_sli4_alloc_rpi(%struct.TYPE_5__*) #1

declare dso_local i8* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_sli4_free_rpi(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(%struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_initialize_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.lpfc_nodelist*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
