; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_post_sas_ha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_post_sas_ha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.pm8001_chip_info = type { i32 }
%struct.pm8001_hba_info = type { i32*, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.sas_ha_struct = type { i32, i32, %struct.TYPE_8__, i32*, i32, i32, i32, %struct.TYPE_6__**, i32**, %struct.pm8001_hba_info* }
%struct.TYPE_8__ = type { %struct.Scsi_Host* }

@DRV_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.pm8001_chip_info*)* @pm8001_post_sas_ha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_post_sas_ha_init(%struct.Scsi_Host* %0, %struct.pm8001_chip_info* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.pm8001_chip_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pm8001_hba_info*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.pm8001_chip_info* %1, %struct.pm8001_chip_info** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %8)
  store %struct.sas_ha_struct* %9, %struct.sas_ha_struct** %7, align 8
  %10 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %11 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %10, i32 0, i32 9
  %12 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  store %struct.pm8001_hba_info* %12, %struct.pm8001_hba_info** %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %61, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.pm8001_chip_info*, %struct.pm8001_chip_info** %4, align 8
  %16 = getelementptr inbounds %struct.pm8001_chip_info, %struct.pm8001_chip_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %13
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %21 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %28 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %27, i32 0, i32 7
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %34 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %41 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %40, i32 0, i32 8
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* %39, i32** %45, align 8
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %47 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %54 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %53, i32 0, i32 7
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32* %52, i32** %60, align 8
  br label %61

61:                                               ; preds = %19
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %13

64:                                               ; preds = %13
  %65 = load i32, i32* @DRV_NAME, align 4
  %66 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %67 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %69 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %72 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %74 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %77 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %79 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %83 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.pm8001_chip_info*, %struct.pm8001_chip_info** %4, align 8
  %85 = getelementptr inbounds %struct.pm8001_chip_info, %struct.pm8001_chip_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %88 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %90 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %91 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store %struct.Scsi_Host* %89, %struct.Scsi_Host** %92, align 8
  ret void
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
