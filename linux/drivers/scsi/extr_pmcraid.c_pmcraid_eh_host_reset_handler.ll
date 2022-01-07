; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_eh_host_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_eh_host_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pmcraid_instance = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@PMCRAID_RESET_HOST_TIMEOUT = common dso_local global i32 0, align 4
@PMCRAID_MAX_HCAM_CMD = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Adapter being reset due to an I/O command timeout.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @pmcraid_eh_host_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_eh_host_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmcraid_instance*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i64 10000, i64* %4, align 8
  %7 = load i32, i32* @PMCRAID_RESET_HOST_TIMEOUT, align 4
  %8 = call i64 @jiffies_to_msecs(i32 %7)
  %9 = load i64, i64* %4, align 8
  %10 = udiv i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.pmcraid_instance*
  store %struct.pmcraid_instance* %19, %struct.pmcraid_instance** %6, align 8
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %26 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %25, i32 0, i32 1
  %27 = call i64 @atomic_read(i32* %26)
  %28 = load i64, i64* @PMCRAID_MAX_HCAM_CMD, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @SUCCESS, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @msleep(i64 %33)
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %37 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %42 = call i64 @pmcraid_reset_bringup(%struct.pmcraid_instance* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @SUCCESS, align 4
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @FAILED, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %30
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pmcraid_reset_bringup(%struct.pmcraid_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
