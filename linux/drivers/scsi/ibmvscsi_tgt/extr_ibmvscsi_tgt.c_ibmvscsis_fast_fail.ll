; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_fast_fail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_fast_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i64 }
%struct.ibmvscsis_cmd = type { i32, %struct.se_cmd, %struct.iu_entry* }
%struct.se_cmd = type { i64, i64, i32, i32, i32 }
%struct.iu_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.srp_cmd = type { i32 }
%struct.scsi_sense_hdr = type { i64 }

@HARDWARE_ERROR = common dso_local global i64 0, align 8
@NO_SENSE = common dso_local global i32 0, align 4
@CMD_FAST_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_info*, %struct.ibmvscsis_cmd*)* @ibmvscsis_fast_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsis_fast_fail(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.ibmvscsis_cmd*, align 8
  %5 = alloca %struct.iu_entry*, align 8
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca %struct.srp_cmd*, align 8
  %8 = alloca %struct.scsi_sense_hdr, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %4, align 8
  %10 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %10, i32 0, i32 2
  %12 = load %struct.iu_entry*, %struct.iu_entry** %11, align 8
  store %struct.iu_entry* %12, %struct.iu_entry** %5, align 8
  %13 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %13, i32 0, i32 1
  store %struct.se_cmd* %14, %struct.se_cmd** %6, align 8
  %15 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %16 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.srp_cmd*
  store %struct.srp_cmd* %20, %struct.srp_cmd** %7, align 8
  %21 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %2
  %29 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @READ_CMD(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @WRITE_CMD(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %34, %28
  %41 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @scsi_normalize_sense(i32 %43, i32 %46, %struct.scsi_sense_hdr* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HARDWARE_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %59, %54
  %68 = load i32, i32* @NO_SENSE, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @CMD_FAST_FAIL, align 4
  %70 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %67, %59, %49
  br label %75

75:                                               ; preds = %74, %40
  br label %76

76:                                               ; preds = %75, %34, %2
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i64 @READ_CMD(i32) #1

declare dso_local i64 @WRITE_CMD(i32) #1

declare dso_local i64 @scsi_normalize_sense(i32, i32, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
