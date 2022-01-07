; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i32 }
%struct.sas_task = type { %struct.TYPE_9__*, %struct.asd_ascb* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }
%struct.asd_ascb = type { i32 }

@CLEAR_NEXUS_PRE = common dso_local global i32 0, align 4
@NEXUS_TRANS_CX = common dso_local global i32 0, align 4
@scb = common dso_local global %struct.TYPE_10__* null, align 8
@CLEAR_NEXUS_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*)* @asd_clear_nexus_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_clear_nexus_index(%struct.sas_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca %struct.asd_ascb*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  %6 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %7 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %13, align 8
  store %struct.asd_ha_struct* %14, %struct.asd_ha_struct** %4, align 8
  %15 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %16 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %15, i32 0, i32 1
  %17 = load %struct.asd_ascb*, %struct.asd_ascb** %16, align 8
  store %struct.asd_ascb* %17, %struct.asd_ascb** %5, align 8
  %18 = load i32, i32* @CLEAR_NEXUS_PRE, align 4
  %19 = load i32, i32* @NEXUS_TRANS_CX, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scb, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %24 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %31 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scb, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  br label %40

40:                                               ; preds = %29, %1
  %41 = load %struct.asd_ascb*, %struct.asd_ascb** %5, align 8
  %42 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scb, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @CLEAR_NEXUS_POST, align 4
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
