; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.asd_sas_event = type { %struct.asd_sas_phy* }
%struct.asd_sas_phy = type { i64, i32, i64, i64, %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.asd_sas_phy*, i32, i32*)* }

@PHY_FUNC_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lldd disable phy%d returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"phy%d is not enabled, cannot shutdown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_phye_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_phye_shutdown(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.asd_sas_event*, align 8
  %4 = alloca %struct.asd_sas_phy*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.sas_internal*, align 8
  %7 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %8 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %9 = call %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct* %8)
  store %struct.asd_sas_event* %9, %struct.asd_sas_event** %3, align 8
  %10 = load %struct.asd_sas_event*, %struct.asd_sas_event** %3, align 8
  %11 = getelementptr inbounds %struct.asd_sas_event, %struct.asd_sas_event* %10, i32 0, i32 0
  %12 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %11, align 8
  store %struct.asd_sas_phy* %12, %struct.asd_sas_phy** %4, align 8
  %13 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %14 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %13, i32 0, i32 4
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %14, align 8
  store %struct.sas_ha_struct* %15, %struct.sas_ha_struct** %5, align 8
  %16 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %17 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sas_internal* @to_sas_internal(i32 %21)
  store %struct.sas_internal* %22, %struct.sas_internal** %6, align 8
  %23 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %24 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %1
  %28 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %29 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %31 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.sas_internal*, %struct.sas_internal** %6, align 8
  %33 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %35, align 8
  %37 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %38 = load i32, i32* @PHY_FUNC_DISABLE, align 4
  %39 = call i32 %36(%struct.asd_sas_phy* %37, i32 %38, i32* null)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %44 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %27
  br label %54

49:                                               ; preds = %1
  %50 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %51 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %48
  %55 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %56 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  ret void
}

declare dso_local %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @pr_notice(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
