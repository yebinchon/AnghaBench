; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_scan_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_scan_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_dev = type { i32, %struct.TYPE_2__*, i32, %struct.rtsx_chip* }
%struct.TYPE_2__ = type { i32 }
%struct.rtsx_chip = type { i32 }

@delay_use = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: waiting for device to settle before scanning\0A\00", align 1
@CR_DRIVER_NAME = common dso_local global i32 0, align 4
@RTSX_STAT_DISCONNECT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: device scan complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rtsx_scan_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_scan_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtsx_dev*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.rtsx_dev*
  store %struct.rtsx_dev* %7, %struct.rtsx_dev** %4, align 8
  %8 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %8, i32 0, i32 3
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %9, align 8
  store %struct.rtsx_chip* %10, %struct.rtsx_chip** %5, align 8
  %11 = load i32, i32* @delay_use, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* @CR_DRIVER_NAME, align 4
  %19 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %21 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %24 = load i32, i32* @RTSX_STAT_DISCONNECT, align 4
  %25 = call i32 @rtsx_chk_stat(%struct.rtsx_chip* %23, i32 %24)
  %26 = load i32, i32* @delay_use, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i32 @wait_event_interruptible_timeout(i32 %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %13, %1
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %32 = load i32, i32* @RTSX_STAT_DISCONNECT, align 4
  %33 = call i32 @rtsx_chk_stat(%struct.rtsx_chip* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %37 = call i32 @rtsx_to_host(%struct.rtsx_dev* %36)
  %38 = call i32 @scsi_scan_host(i32 %37)
  %39 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %40 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* @CR_DRIVER_NAME, align 4
  %44 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %47 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %46, i32 0, i32 0
  %48 = call i32 @complete_and_exit(i32* %47, i32 0)
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @rtsx_chk_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @scsi_scan_host(i32) #1

declare dso_local i32 @rtsx_to_host(%struct.rtsx_dev*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
