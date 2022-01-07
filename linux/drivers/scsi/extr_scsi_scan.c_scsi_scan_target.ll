; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_scan_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_scan_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.Scsi_Host = type { i32, i32 }

@scsi_scan_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@SCSI_SCAN_MANUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"manual\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_scan_target(%struct.device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Scsi_Host*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %11, align 8
  %14 = load i32, i32* @scsi_scan_type, align 4
  %15 = call i64 @strncmp(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %58

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @SCSI_SCAN_MANUAL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @scsi_scan_type, align 4
  %24 = call i64 @strncmp(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %58

27:                                               ; preds = %22, %18
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = call i32 (...) @scsi_complete_async_scans()
  br label %37

37:                                               ; preds = %35, %27
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %39 = call i64 @scsi_host_scan_allowed(%struct.Scsi_Host* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %43 = call i64 @scsi_autopm_get_host(%struct.Scsi_Host* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @__scsi_scan_target(%struct.device* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %53 = call i32 @scsi_autopm_put_host(%struct.Scsi_Host* %52)
  br label %54

54:                                               ; preds = %45, %41, %37
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %26, %17
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_complete_async_scans(...) #1

declare dso_local i64 @scsi_host_scan_allowed(%struct.Scsi_Host*) #1

declare dso_local i64 @scsi_autopm_get_host(%struct.Scsi_Host*) #1

declare dso_local i32 @__scsi_scan_target(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_autopm_put_host(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
