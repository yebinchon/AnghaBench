; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_show_volume_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_show_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32, i32 }

@pqi_show_volume_status.unknown_state_str = internal constant [35 x i8] c"Volume is in an unknown state (%u)\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"Volume online\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Volume failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Volume not configured\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Volume degraded\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Volume ready for recovery operation\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Volume undergoing recovery\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Wrong physical drive was replaced\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"A physical drive not properly connected\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Hardware is overheating\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Hardware has overheated\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Volume undergoing expansion\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Volume waiting for transforming volume\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Volume queued for expansion\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Volume disabled due to SCSI ID conflict\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Volume has been ejected\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Volume undergoing background erase\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Volume ready for predictive spare rebuild\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Volume undergoing rapid parity initialization\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Volume queued for rapid parity initialization\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Encrypted volume inaccessible - key not present\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Volume undergoing encryption process\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Volume undergoing encryption re-keying process\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Volume encrypted but encryption is disabled\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Volume pending migration to encrypted state\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Volume pending encryption rekeying\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Volume not supported on this controller\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Volume status not available\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"scsi %d:%d:%d:%d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_show_volume_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_show_volume_status(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [45 x i8], align 16
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %7 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %37 [
    i32 143, label %10
    i32 149, label %11
    i32 145, label %12
    i32 154, label %13
    i32 136, label %14
    i32 130, label %15
    i32 128, label %16
    i32 139, label %17
    i32 147, label %18
    i32 148, label %19
    i32 131, label %20
    i32 146, label %21
    i32 138, label %22
    i32 153, label %23
    i32 152, label %24
    i32 132, label %25
    i32 137, label %26
    i32 129, label %27
    i32 140, label %28
    i32 150, label %29
    i32 134, label %30
    i32 133, label %31
    i32 151, label %32
    i32 142, label %33
    i32 141, label %34
    i32 144, label %35
    i32 135, label %36
  ]

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %44

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %44

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %44

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %44

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %44

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %44

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %44

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %44

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %44

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %44

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %44

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %44

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %44

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %44

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %44

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %44

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i8** %5, align 8
  br label %44

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i8** %5, align 8
  br label %44

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i8** %5, align 8
  br label %44

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8** %5, align 8
  br label %44

30:                                               ; preds = %2
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8** %5, align 8
  br label %44

31:                                               ; preds = %2
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i8** %5, align 8
  br label %44

32:                                               ; preds = %2
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i8** %5, align 8
  br label %44

33:                                               ; preds = %2
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i8** %5, align 8
  br label %44

34:                                               ; preds = %2
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i8** %5, align 8
  br label %44

35:                                               ; preds = %2
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8** %5, align 8
  br label %44

36:                                               ; preds = %2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i8** %5, align 8
  br label %44

37:                                               ; preds = %2
  %38 = getelementptr inbounds [45 x i8], [45 x i8]* %6, i64 0, i64 0
  %39 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snprintf(i8* %38, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @pqi_show_volume_status.unknown_state_str, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [45 x i8], [45 x i8]* %6, i64 0, i64 0
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %45 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %46 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %50 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %62, i8* %63)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
