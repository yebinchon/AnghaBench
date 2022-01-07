; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_eh_target_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_eh_target_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.aac_dev = type { %struct.aac_hba_map_info** }
%struct.aac_hba_map_info = type { i64, i32 }
%struct.fib = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@AAC_MAX_BUSES = common dso_local global i64 0, align 8
@AAC_MAX_TARGETS = common dso_local global i64 0, align 8
@AAC_DEVTYPE_NATIVE_RAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%s: Host adapter reset request. SCSI hang ?\0A\00", align 1
@AAC_DRIVERNAME = common dso_local global i32 0, align 4
@aac_tmf_callback = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aac_eh_target_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_eh_target_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.aac_dev*, align 8
  %7 = alloca %struct.aac_hba_map_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fib*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %4, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %19, align 8
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %5, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.aac_dev*
  store %struct.aac_dev* %24, %struct.aac_dev** %6, align 8
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = call i32 @scmd_channel(%struct.scsi_cmnd* %26)
  %28 = call i64 @aac_logical_to_phys(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = call i64 @scmd_id(%struct.scsi_cmnd* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @AAC_MAX_BUSES, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @AAC_MAX_TARGETS, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %1
  %39 = load i32, i32* @FAILED, align 4
  store i32 %39, i32* %2, align 4
  br label %109

40:                                               ; preds = %34
  %41 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %42 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %41, i32 0, i32 0
  %43 = load %struct.aac_hba_map_info**, %struct.aac_hba_map_info*** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %43, i64 %44
  %46 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %46, i64 %47
  store %struct.aac_hba_map_info* %48, %struct.aac_hba_map_info** %7, align 8
  %49 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %7, align 8
  %50 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AAC_DEVTYPE_NATIVE_RAW, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %7, align 8
  %56 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @FAILED, align 4
  store i32 %60, i32* %2, align 4
  br label %109

61:                                               ; preds = %54, %40
  %62 = load i32, i32* @AAC_DRIVERNAME, align 4
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %65 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %64)
  store %struct.fib* %65, %struct.fib** %12, align 8
  %66 = load %struct.fib*, %struct.fib** %12, align 8
  %67 = icmp ne %struct.fib* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %2, align 4
  br label %109

70:                                               ; preds = %61
  %71 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %7, align 8
  %72 = load %struct.fib*, %struct.fib** %12, align 8
  %73 = call i32 @aac_eh_tmf_hard_reset_fib(%struct.aac_hba_map_info* %71, %struct.fib* %72)
  store i32 %73, i32* %14, align 4
  %74 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %7, align 8
  %75 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %74, i32 0, i32 1
  store i32 2, i32* %75, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.fib*, %struct.fib** %12, align 8
  %78 = load i64, i64* @aac_tmf_callback, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %7, align 8
  %81 = bitcast %struct.aac_hba_map_info* %80 to i8*
  %82 = call i32 @aac_hba_send(i32 %76, %struct.fib* %77, i32 %79, i8* %81)
  store i32 %82, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %104, %70
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 15
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %7, align 8
  %88 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.aac_hba_map_info*, %struct.aac_hba_map_info** %7, align 8
  %93 = getelementptr inbounds %struct.aac_hba_map_info, %struct.aac_hba_map_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @SUCCESS, align 4
  br label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @FAILED, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %11, align 4
  br label %107

102:                                              ; preds = %86
  %103 = call i32 @msleep(i32 1000)
  br label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %83

107:                                              ; preds = %100, %83
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %68, %59, %38
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @aac_logical_to_phys(i32) #1

declare dso_local i32 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i32 @aac_eh_tmf_hard_reset_fib(%struct.aac_hba_map_info*, %struct.fib*) #1

declare dso_local i32 @aac_hba_send(i32, %struct.fib*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
