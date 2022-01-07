; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_queuecommand_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_queuecommand_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rtsx_dev = type { i32, %struct.TYPE_3__*, %struct.rtsx_chip* }
%struct.TYPE_3__ = type { i32 }
%struct.rtsx_chip = type { %struct.scsi_cmnd* }

@.str = private unnamed_addr constant [23 x i8] c"Error: chip->srb = %p\0A\00", align 1
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@RTSX_STAT_DISCONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Fail command during disconnect\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @queuecommand_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queuecommand_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.rtsx_dev*, align 8
  %7 = alloca %struct.rtsx_chip*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rtsx_dev* @host_to_rtsx(i32 %12)
  store %struct.rtsx_dev* %13, %struct.rtsx_dev** %6, align 8
  %14 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %14, i32 0, i32 2
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %15, align 8
  store %struct.rtsx_chip* %16, %struct.rtsx_chip** %7, align 8
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 0
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %18, align 8
  %20 = icmp ne %struct.scsi_cmnd* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %23 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %27 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %26, i32 0, i32 0
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %27, align 8
  %29 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %28)
  %30 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %33 = load i32, i32* @RTSX_STAT_DISCONNECT, align 4
  %34 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %38 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @DID_NO_CONNECT, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %46(%struct.scsi_cmnd* %47)
  store i32 0, i32* %3, align 4
  br label %58

48:                                               ; preds = %31
  %49 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %49, void (%struct.scsi_cmnd*)** %51, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %54 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %53, i32 0, i32 0
  store %struct.scsi_cmnd* %52, %struct.scsi_cmnd** %54, align 8
  %55 = load %struct.rtsx_dev*, %struct.rtsx_dev** %6, align 8
  %56 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %55, i32 0, i32 0
  %57 = call i32 @complete(i32* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %36, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.rtsx_dev* @host_to_rtsx(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, %struct.scsi_cmnd*) #1

declare dso_local i64 @rtsx_chk_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
