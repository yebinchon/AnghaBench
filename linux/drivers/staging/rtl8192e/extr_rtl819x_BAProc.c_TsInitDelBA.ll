; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_BAProc.c_TsInitDelBA.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtl819x_BAProc.c_TsInitDelBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.ts_common_info = type { i32 }
%struct.tx_ts_record = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rx_ts_record = type { %struct.TYPE_2__ }

@TX_DIR = common dso_local global i32 0, align 4
@DELBA_REASON_END_BA = common dso_local global i32 0, align 4
@RX_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TsInitDelBA(%struct.rtllib_device* %0, %struct.ts_common_info* %1, i32 %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.ts_common_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_ts_record*, align 8
  %8 = alloca %struct.rx_ts_record*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store %struct.ts_common_info* %1, %struct.ts_common_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @TX_DIR, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load %struct.ts_common_info*, %struct.ts_common_info** %5, align 8
  %14 = bitcast %struct.ts_common_info* %13 to %struct.tx_ts_record*
  store %struct.tx_ts_record* %14, %struct.tx_ts_record** %7, align 8
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %16 = load %struct.tx_ts_record*, %struct.tx_ts_record** %7, align 8
  %17 = call i64 @TxTsDeleteBA(%struct.rtllib_device* %15, %struct.tx_ts_record* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %21 = load %struct.ts_common_info*, %struct.ts_common_info** %5, align 8
  %22 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tx_ts_record*, %struct.tx_ts_record** %7, align 8
  %25 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.tx_ts_record*, %struct.tx_ts_record** %7, align 8
  %31 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %30, i32 0, i32 1
  br label %35

32:                                               ; preds = %19
  %33 = load %struct.tx_ts_record*, %struct.tx_ts_record** %7, align 8
  %34 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %33, i32 0, i32 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi %struct.TYPE_2__* [ %31, %29 ], [ %34, %32 ]
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DELBA_REASON_END_BA, align 4
  %39 = call i32 @rtllib_send_DELBA(%struct.rtllib_device* %20, i32 %23, %struct.TYPE_2__* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %12
  br label %64

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RX_DIR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load %struct.ts_common_info*, %struct.ts_common_info** %5, align 8
  %47 = bitcast %struct.ts_common_info* %46 to %struct.rx_ts_record*
  store %struct.rx_ts_record* %47, %struct.rx_ts_record** %8, align 8
  %48 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %49 = load %struct.rx_ts_record*, %struct.rx_ts_record** %8, align 8
  %50 = call i64 @RxTsDeleteBA(%struct.rtllib_device* %48, %struct.rx_ts_record* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %54 = load %struct.ts_common_info*, %struct.ts_common_info** %5, align 8
  %55 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rx_ts_record*, %struct.rx_ts_record** %8, align 8
  %58 = getelementptr inbounds %struct.rx_ts_record, %struct.rx_ts_record* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DELBA_REASON_END_BA, align 4
  %61 = call i32 @rtllib_send_DELBA(%struct.rtllib_device* %53, i32 %56, %struct.TYPE_2__* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %52, %45
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %40
  ret void
}

declare dso_local i64 @TxTsDeleteBA(%struct.rtllib_device*, %struct.tx_ts_record*) #1

declare dso_local i32 @rtllib_send_DELBA(%struct.rtllib_device*, i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @RxTsDeleteBA(%struct.rtllib_device*, %struct.rx_ts_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
