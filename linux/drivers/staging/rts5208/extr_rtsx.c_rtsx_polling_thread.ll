; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_polling_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx.c_rtsx_polling_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_dev = type { i32, i32, %struct.TYPE_2__*, %struct.rtsx_chip* }
%struct.TYPE_2__ = type { i32 }
%struct.rtsx_chip = type { %struct.ms_info, %struct.xd_info, %struct.sd_info }
%struct.ms_info = type { i64 }
%struct.xd_info = type { i64 }
%struct.sd_info = type { i64 }

@delay_use = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@POLLING_INTERVAL = common dso_local global i32 0, align 4
@RTSX_STAT_DISCONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"-- rtsx-polling exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rtsx_polling_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_polling_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtsx_dev*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca %struct.xd_info*, align 8
  %8 = alloca %struct.ms_info*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.rtsx_dev*
  store %struct.rtsx_dev* %10, %struct.rtsx_dev** %4, align 8
  %11 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %11, i32 0, i32 3
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %12, align 8
  store %struct.rtsx_chip* %13, %struct.rtsx_chip** %5, align 8
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %15 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %14, i32 0, i32 2
  store %struct.sd_info* %15, %struct.sd_info** %6, align 8
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %17 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %16, i32 0, i32 1
  store %struct.xd_info* %17, %struct.xd_info** %7, align 8
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %19 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %18, i32 0, i32 0
  store %struct.ms_info* %19, %struct.ms_info** %8, align 8
  %20 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %21 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.xd_info*, %struct.xd_info** %7, align 8
  %23 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.ms_info*, %struct.ms_info** %8, align 8
  %25 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @delay_use, align 4
  %27 = add nsw i32 %26, 5
  %28 = mul nsw i32 %27, 1000
  %29 = call i32 @wait_timeout(i32 %28)
  br label %30

30:                                               ; preds = %52, %1
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = call i32 @set_current_state(i32 %31)
  %33 = load i32, i32* @POLLING_INTERVAL, align 4
  %34 = call i32 @msecs_to_jiffies(i32 %33)
  %35 = call i32 @schedule_timeout(i32 %34)
  %36 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %37 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %40 = load i32, i32* @RTSX_STAT_DISCONNECT, align 4
  %41 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %30
  %44 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %45 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %50 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %66

52:                                               ; preds = %30
  %53 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %54 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %57 = call i32 @mspro_polling_format_status(%struct.rtsx_chip* %56)
  %58 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %59 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %62 = call i32 @rtsx_polling_func(%struct.rtsx_chip* %61)
  %63 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %64 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %30

66:                                               ; preds = %43
  %67 = load %struct.rtsx_dev*, %struct.rtsx_dev** %4, align 8
  %68 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %67, i32 0, i32 0
  %69 = call i32 @complete_and_exit(i32* %68, i32 0)
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rtsx_chk_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mspro_polling_format_status(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_polling_func(%struct.rtsx_chip*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
