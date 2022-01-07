; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_dr_clean_pending_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_dr_clean_pending_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i64, i32 }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"clean_err:tag = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"clean_pending_req: Success.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to Clean Pending IOs on %s device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*, %struct.scsi_cmnd*)* @snic_dr_clean_pending_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_dr_clean_pending_req(%struct.snic* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snic*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32, i32* @FAILED, align 4
  store i32 %12, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %39, %2
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.snic*, %struct.snic** %4, align 8
  %16 = getelementptr inbounds %struct.snic, %struct.snic* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = call i64 @snic_cmd_tag(%struct.scsi_cmnd* %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %39

25:                                               ; preds = %19
  %26 = load %struct.snic*, %struct.snic** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %29 = call i32 @snic_dr_clean_single_req(%struct.snic* %26, i64 %27, %struct.scsi_device* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.snic*, %struct.snic** %4, align 8
  %34 = getelementptr inbounds %struct.snic, %struct.snic* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @SNIC_HOST_ERR(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %57

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %13

42:                                               ; preds = %13
  %43 = call i32 @msecs_to_jiffies(i32 100)
  %44 = call i32 @schedule_timeout(i32 %43)
  %45 = load %struct.snic*, %struct.snic** %4, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %47 = call i64 @snic_is_abts_pending(%struct.snic* %45, %struct.scsi_cmnd* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @FAILED, align 4
  store i32 %50, i32* %8, align 4
  br label %57

51:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  %52 = load %struct.snic*, %struct.snic** %4, align 8
  %53 = getelementptr inbounds %struct.snic, %struct.snic* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @SNIC_SCSI_DBG(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %49, %32
  %58 = load i32, i32* @FAILED, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.snic*, %struct.snic** %4, align 8
  %60 = getelementptr inbounds %struct.snic, %struct.snic* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %62, i32 0, i32 0
  %64 = call i64 @dev_name(i32* %63)
  %65 = call i32 @SNIC_HOST_ERR(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %51
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @snic_cmd_tag(%struct.scsi_cmnd*) #1

declare dso_local i32 @snic_dr_clean_single_req(%struct.snic*, i64, %struct.scsi_device*) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i64) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @snic_is_abts_pending(%struct.snic*, %struct.scsi_cmnd*) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*) #1

declare dso_local i64 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
