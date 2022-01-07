; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_update_log_drive_phys_drive_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_update_log_drive_phys_drive_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.hpsa_scsi_dev_t = type { i64, i64, i32 }

@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t**, i32)* @hpsa_update_log_drive_phys_drive_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_update_log_drive_phys_drive_ptrs(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t** %1, i32 %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store %struct.hpsa_scsi_dev_t** %1, %struct.hpsa_scsi_dev_t*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %79, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %82

12:                                               ; preds = %8
  %13 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %13, i64 %15
  %17 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %16, align 8
  %18 = icmp eq %struct.hpsa_scsi_dev_t* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %79

20:                                               ; preds = %12
  %21 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %21, i64 %23
  %25 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %24, align 8
  %26 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TYPE_DISK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %31, i64 %33
  %35 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %34, align 8
  %36 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TYPE_ZBC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %79

41:                                               ; preds = %30, %20
  %42 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %42, i64 %44
  %46 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %45, align 8
  %47 = call i32 @is_logical_device(%struct.hpsa_scsi_dev_t* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %79

50:                                               ; preds = %41
  %51 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %51, i64 %53
  %55 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %54, align 8
  %56 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %50
  %60 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %60, i64 %62
  %64 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %63, align 8
  %65 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %70 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %72, i64 %74
  %76 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %75, align 8
  %77 = call i32 @hpsa_figure_phys_disk_ptrs(%struct.ctlr_info* %69, %struct.hpsa_scsi_dev_t** %70, i32 %71, %struct.hpsa_scsi_dev_t* %76)
  br label %78

78:                                               ; preds = %68, %59, %50
  br label %79

79:                                               ; preds = %78, %49, %40, %19
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %8

82:                                               ; preds = %8
  ret void
}

declare dso_local i32 @is_logical_device(%struct.hpsa_scsi_dev_t*) #1

declare dso_local i32 @hpsa_figure_phys_disk_ptrs(%struct.ctlr_info*, %struct.hpsa_scsi_dev_t**, i32, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
