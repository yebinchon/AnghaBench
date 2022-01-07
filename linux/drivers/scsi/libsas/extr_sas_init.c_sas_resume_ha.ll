; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_resume_ha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_resume_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_ha_struct = type { i32, %struct.TYPE_4__, %struct.asd_sas_phy**, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.asd_sas_phy = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"waiting up to 25 seconds for %d phy%s to resume\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"resume timeout\0A\00", align 1
@PHYE_RESUME_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_resume_ha(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca %struct.sas_ha_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_sas_phy*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %2, align 8
  %6 = call i64 @msecs_to_jiffies(i32 25000)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %8 = call i32 @phys_suspended(%struct.sas_ha_struct* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %13 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %19)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %23 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %26 = call i32 @phys_suspended(%struct.sas_ha_struct* %25)
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @wait_event_timeout(i32 %24, i32 %28, i64 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %59, %21
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %34 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %31
  %38 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %39 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %38, i32 0, i32 2
  %40 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %40, i64 %42
  %44 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %43, align 8
  store %struct.asd_sas_phy* %44, %struct.asd_sas_phy** %5, align 8
  %45 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %46 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %37
  %50 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %51 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %5, align 8
  %56 = load i32, i32* @PHYE_RESUME_TIMEOUT, align 4
  %57 = call i32 @sas_notify_phy_event(%struct.asd_sas_phy* %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %31

62:                                               ; preds = %31
  %63 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %64 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @scsi_unblock_requests(i32 %66)
  %68 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %2, align 8
  %69 = call i32 @sas_drain_work(%struct.sas_ha_struct* %68)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @phys_suspended(%struct.sas_ha_struct*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @sas_notify_phy_event(%struct.asd_sas_phy*, i32) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

declare dso_local i32 @sas_drain_work(%struct.sas_ha_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
