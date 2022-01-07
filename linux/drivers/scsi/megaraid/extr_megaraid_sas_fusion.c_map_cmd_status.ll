; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_map_cmd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_map_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusion_context = type { i32 }
%struct.scsi_cmnd = type { i32, i32 }

@DID_OK = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@READ_WRITE_LDIO = common dso_local global i32 0, align 4
@READ_WRITE_SYSPDIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"BRCM Debug mfi stat 0x%x, data len requested/completed 0x%x/0x%x\0A\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fusion_context*, %struct.scsi_cmnd*, i32, i32, i32, i32*)* @map_cmd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_cmd_status(%struct.fusion_context* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.fusion_context*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fusion_context* %0, %struct.fusion_context** %7, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %16 = call i32 @megasas_cmd_type(%struct.scsi_cmnd* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %95 [
    i32 130, label %18
    i32 128, label %23
    i32 132, label %23
    i32 129, label %30
    i32 131, label %85
    i32 133, label %85
    i32 134, label %90
  ]

18:                                               ; preds = %6
  %19 = load i32, i32* @DID_OK, align 4
  %20 = shl i32 %19, 16
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %100

23:                                               ; preds = %6, %6
  %24 = load i32, i32* @DID_ERROR, align 4
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %100

30:                                               ; preds = %6
  %31 = load i32, i32* @DID_OK, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %30
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %45 = call i32 @memset(i32 %43, i32 0, i32 %44)
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %51 = call i32 @memcpy(i32 %48, i32* %49, i32 %50)
  %52 = load i32, i32* @DRIVER_SENSE, align 4
  %53 = shl i32 %52, 24
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %40, %30
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %60 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %59)
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %14, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %63, i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %58
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @READ_WRITE_LDIO, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @READ_WRITE_SYSPDIO, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72, %68
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %81 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @scmd_printk(i32 %77, %struct.scsi_cmnd* %78, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %72, %58
  br label %100

85:                                               ; preds = %6, %6
  %86 = load i32, i32* @DID_BAD_TARGET, align 4
  %87 = shl i32 %86, 16
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %100

90:                                               ; preds = %6
  %91 = load i32, i32* @DID_IMM_RETRY, align 4
  %92 = shl i32 %91, 16
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %100

95:                                               ; preds = %6
  %96 = load i32, i32* @DID_ERROR, align 4
  %97 = shl i32 %96, 16
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %90, %85, %84, %23, %18
  ret void
}

declare dso_local i32 @megasas_cmd_type(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
