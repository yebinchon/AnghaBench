; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_get_variable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_get_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32, %struct.ms_info, %struct.sd_info, %struct.xd_info }
%struct.ms_info = type { i32 }
%struct.sd_info = type { i32 }
%struct.xd_info = type { i32 }

@SENSE_TYPE_MEDIA_INVALID_CMD_FIELD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @get_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_variable(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xd_info*, align 8
  %8 = alloca %struct.sd_info*, align 8
  %9 = alloca %struct.ms_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %22 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %21, i32 0, i32 3
  store %struct.xd_info* %22, %struct.xd_info** %7, align 8
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %24 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %23, i32 0, i32 2
  store %struct.sd_info* %24, %struct.sd_info** %8, align 8
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %26 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %25, i32 0, i32 1
  store %struct.ms_info* %26, %struct.ms_info** %9, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 129, label %36
    i32 130, label %40
  ]

32:                                               ; preds = %20
  %33 = load %struct.xd_info*, %struct.xd_info** %7, align 8
  %34 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  br label %50

36:                                               ; preds = %20
  %37 = load %struct.sd_info*, %struct.sd_info** %8, align 8
  %38 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  br label %50

40:                                               ; preds = %20
  %41 = load %struct.ms_info*, %struct.ms_info** %9, align 8
  %42 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  br label %50

44:                                               ; preds = %20
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %48 = call i32 @set_sense_type(%struct.rtsx_chip* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %49, i32* %3, align 4
  br label %75

50:                                               ; preds = %40, %36, %32
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = call i32 @rtsx_stor_set_xfer_buf(i32* %10, i32 1, %struct.scsi_cmnd* %51)
  br label %73

53:                                               ; preds = %2
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %62 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %65 = call i32 @rtsx_stor_set_xfer_buf(i32* %11, i32 1, %struct.scsi_cmnd* %64)
  br label %72

66:                                               ; preds = %53
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @SENSE_TYPE_MEDIA_INVALID_CMD_FIELD, align 4
  %70 = call i32 @set_sense_type(%struct.rtsx_chip* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @TRANSPORT_FAILED, align 4
  store i32 %71, i32* %3, align 4
  br label %75

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %66, %44
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_sense_type(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_stor_set_xfer_buf(i32*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
