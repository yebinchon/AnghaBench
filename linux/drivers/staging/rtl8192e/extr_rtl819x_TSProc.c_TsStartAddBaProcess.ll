; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_TSProc.c_TsStartAddBaProcess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_TSProc.c_TsStartAddBaProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.tx_ts_record = type { i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Start ADDBA after 60 sec!!\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TS_ADDBA_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Immediately Start ADDBA\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"BA timer is already added\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TsStartAddBaProcess(%struct.rtllib_device* %0, %struct.tx_ts_record* %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca %struct.tx_ts_record*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store %struct.tx_ts_record* %1, %struct.tx_ts_record** %4, align 8
  %5 = load %struct.tx_ts_record*, %struct.tx_ts_record** %4, align 8
  %6 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load %struct.tx_ts_record*, %struct.tx_ts_record** %4, align 8
  %11 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.tx_ts_record*, %struct.tx_ts_record** %4, align 8
  %13 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %18 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netdev_dbg(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.tx_ts_record*, %struct.tx_ts_record** %4, align 8
  %22 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %21, i32 0, i32 1
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i32, i32* @TS_ADDBA_DELAY, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @mod_timer(i32* %22, i64 %26)
  br label %38

28:                                               ; preds = %9
  %29 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %30 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netdev_dbg(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.tx_ts_record*, %struct.tx_ts_record** %4, align 8
  %34 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %33, i32 0, i32 1
  %35 = load i64, i64* @jiffies, align 8
  %36 = add nsw i64 %35, 10
  %37 = call i32 @mod_timer(i32* %34, i64 %36)
  br label %38

38:                                               ; preds = %28, %16
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %41 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netdev_dbg(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
