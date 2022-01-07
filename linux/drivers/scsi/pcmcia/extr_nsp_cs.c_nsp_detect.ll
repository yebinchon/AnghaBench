; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_nsp_cs.c_nsp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i64, i64, i64, i64 }
%struct.scsi_host_template = type { i32, i32 }

@nsp_data_base = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@NSP_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"this_id=%d\00", align 1
@nsp_driver_template = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"host failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"irq=%d,%d\00", align 1
@.str.3 = private unnamed_addr constant [94 x i8] c"NinjaSCSI-3/32Bi Driver $Revision: 1.23 $ IO:0x%04lx-0x%04lx MMIO(virt addr):0x%04lx IRQ:%02d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Scsi_Host* (%struct.scsi_host_template*)* @nsp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Scsi_Host* @nsp_detect(%struct.scsi_host_template* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.scsi_host_template*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %3, align 8
  store %struct.TYPE_6__* @nsp_data_base, %struct.TYPE_6__** %5, align 8
  %7 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %8 = load %struct.scsi_host_template*, %struct.scsi_host_template** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @nsp_driver_template, i32 48)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = icmp eq %struct.Scsi_Host* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %17 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %2, align 8
  br label %101

18:                                               ; preds = %1
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @memcpy(i64 %21, %struct.TYPE_6__* %22, i32 48)
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %6, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.Scsi_Host* %28, %struct.Scsi_Host** %32, align 8
  %33 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %79 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %82 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = sub nsw i64 %84, 1
  %86 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %87 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @snprintf(i32 %74, i32 4, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0), i64 %77, i64 %85, i32 %88, i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.scsi_host_template*, %struct.scsi_host_template** %3, align 8
  %97 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @NSP_DEBUG_INIT, align 4
  %99 = call i32 (i32, i8*, ...) @nsp_dbg(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  store %struct.Scsi_Host* %100, %struct.Scsi_Host** %2, align 8
  br label %101

101:                                              ; preds = %18, %15
  %102 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  ret %struct.Scsi_Host* %102
}

declare dso_local i32 @nsp_dbg(i32, i8*, ...) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
