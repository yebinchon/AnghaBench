; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_BAProc.c_TsInitAddBA.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_BAProc.c_TsInitAddBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.tx_ts_record = type { i32, %struct.TYPE_18__, %struct.ba_record }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ba_record = type { %struct.TYPE_17__, i64, %struct.TYPE_15__, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }

@BA_SETUP_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TsInitAddBA(%struct.rtllib_device* %0, %struct.tx_ts_record* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.tx_ts_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ba_record*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.tx_ts_record* %1, %struct.tx_ts_record** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tx_ts_record*, %struct.tx_ts_record** %6, align 8
  %11 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %10, i32 0, i32 2
  store %struct.ba_record* %11, %struct.ba_record** %9, align 8
  %12 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %13 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %75

20:                                               ; preds = %16, %4
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %22 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %23 = call i32 @DeActivateBAEntry(%struct.rtllib_device* %21, %struct.ba_record* %22)
  %24 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %25 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %29 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %34 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 8
  %37 = load %struct.tx_ts_record*, %struct.tx_ts_record** %6, align 8
  %38 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %46 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %50 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 32, i32* %52, align 8
  %53 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %54 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.tx_ts_record*, %struct.tx_ts_record** %6, align 8
  %56 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 3
  %59 = srem i32 %58, 4096
  %60 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %61 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %65 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %66 = load i32, i32* @BA_SETUP_TIMEOUT, align 4
  %67 = call i32 @ActivateBAEntry(%struct.rtllib_device* %64, %struct.ba_record* %65, i32 %66)
  %68 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %69 = load %struct.tx_ts_record*, %struct.tx_ts_record** %6, align 8
  %70 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ba_record*, %struct.ba_record** %9, align 8
  %74 = call i32 @rtllib_send_ADDBAReq(%struct.rtllib_device* %68, i32 %72, %struct.ba_record* %73)
  br label %75

75:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @DeActivateBAEntry(%struct.rtllib_device*, %struct.ba_record*) #1

declare dso_local i32 @ActivateBAEntry(%struct.rtllib_device*, %struct.ba_record*, i32) #1

declare dso_local i32 @rtllib_send_ADDBAReq(%struct.rtllib_device*, i32, %struct.ba_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
