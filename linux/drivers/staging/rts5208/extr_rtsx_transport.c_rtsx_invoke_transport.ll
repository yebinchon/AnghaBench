; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_invoke_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_invoke_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32 }
%struct.rtsx_chip = type { i32* }

@RTSX_STAT_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"-- command was aborted\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"-- transport indicates error, resetting\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@TRANSPORT_FAILED = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_invoke_transport(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %4, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %8 = call i32 @rtsx_scsi_handler(%struct.scsi_cmnd* %6, %struct.rtsx_chip* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = load i32, i32* @RTSX_STAT_ABORT, align 4
  %11 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %15 = call i32 @rtsx_dev(%struct.rtsx_chip* %14)
  %16 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @DID_ABORT, align 4
  %18 = shl i32 %17, 16
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TRANSPORT_ERROR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %27 = call i32 @rtsx_dev(%struct.rtsx_chip* %26)
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @DID_ERROR, align 4
  %30 = shl i32 %29, 16
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %56

33:                                               ; preds = %21
  %34 = load i32, i32* @SAM_STAT_GOOD, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @TRANSPORT_FAILED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %48 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %51 = call i64 @SCSI_LUN(%struct.scsi_cmnd* %50)
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @memcpy(i32 %46, i8* %53, i32 4)
  br label %55

55:                                               ; preds = %40, %33
  br label %57

56:                                               ; preds = %25, %13
  br label %57

57:                                               ; preds = %56, %55
  ret void
}

declare dso_local i32 @rtsx_scsi_handler(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

declare dso_local i64 @rtsx_chk_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @SCSI_LUN(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
