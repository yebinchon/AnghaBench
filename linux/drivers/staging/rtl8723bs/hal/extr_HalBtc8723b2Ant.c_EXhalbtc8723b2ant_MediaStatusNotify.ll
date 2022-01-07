; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_MediaStatusNotify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_EXhalbtc8723b2ant_MediaStatusNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i32, i64*)*, i32 (%struct.TYPE_8__*, i32, i64*)* }

@BTC_MEDIA_CONNECT = common dso_local global i64 0, align 8
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", align 1
@BTC_GET_U1_WIFI_CENTRAL_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@pCoexDm = common dso_local global %struct.TYPE_9__* null, align 8
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_FW_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EXhalbtc8723b2ant_MediaStatusNotify(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast [3 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 24, i1 false)
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %15 = load i32, i32* @INTF_NOTIFY, align 4
  %16 = call i32 @BTC_PRINT(i32 %14, i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %19 = load i32, i32* @INTF_NOTIFY, align 4
  %20 = call i32 @BTC_PRINT(i32 %18, i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_8__*, i32, i64*)*, i32 (%struct.TYPE_8__*, i32, i64*)** %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = load i32, i32* @BTC_GET_U1_WIFI_CENTRAL_CHNL, align 4
  %27 = call i32 %24(%struct.TYPE_8__* %25, i32 %26, i64* %7)
  %28 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  %33 = icmp sle i64 %32, 14
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  store i64 1, i64* %35, align 16
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32 (%struct.TYPE_8__*, i32, i64*)*, i32 (%struct.TYPE_8__*, i32, i64*)** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %43 = call i32 %40(%struct.TYPE_8__* %41, i32 %42, i64* %6)
  %44 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 48, i64* %48, align 16
  br label %63

49:                                               ; preds = %34
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_8__*, i32, i64*)*, i32 (%struct.TYPE_8__*, i32, i64*)** %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %55 = call i32 %52(%struct.TYPE_8__* %53, i32 %54, i64* %8)
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %56, 10
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 48, i64* %59, align 16
  br label %62

60:                                               ; preds = %49
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 32, i64* %61, align 16
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %31, %21
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %66 = load i64, i64* %65, align 16
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexDm, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  store i64 %66, i64* %70, align 8
  %71 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexDm, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  store i64 %72, i64* %76, align 8
  %77 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %78 = load i64, i64* %77, align 16
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCoexDm, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  store i64 %78, i64* %82, align 8
  %83 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %84 = load i32, i32* @ALGO_TRACE_FW_EXEC, align 4
  %85 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = shl i64 %86, 16
  %88 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = shl i64 %89, 8
  %91 = or i64 %87, %90
  %92 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  %93 = load i64, i64* %92, align 16
  %94 = or i64 %91, %93
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @BTC_PRINT(i32 %83, i32 %84, i8* %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_8__*, i32, i32, i64*)*, i32 (%struct.TYPE_8__*, i32, i32, i64*)** %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %102 = call i32 %99(%struct.TYPE_8__* %100, i32 102, i32 3, i64* %101)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BTC_PRINT(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
