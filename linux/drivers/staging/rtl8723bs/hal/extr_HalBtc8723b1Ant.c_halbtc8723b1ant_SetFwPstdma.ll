; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_SetFwPstdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_SetFwPstdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*)* }

@BTC_GET_BL_WIFI_AP_MODE_ENABLE = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@BTC_MSG_INTERFACE = common dso_local global i32 0, align 4
@INTF_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[BTCoex], FW for 1Ant AP mode\0A\00", align 1
@BIT6 = common dso_local global i32 0, align 4
@pCoexDm = common dso_local global %struct.TYPE_7__* null, align 8
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_FW_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"[BTCoex], PS-TDMA H2C cmd = 0x%x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32, i32, i32)* @halbtc8723b1ant_SetFwPstdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_SetFwPstdma(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = bitcast [5 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 20, i1 false)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_6__*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*)** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = load i32, i32* @BTC_GET_BL_WIFI_AP_MODE_ENABLE, align 4
  %25 = call i32 %22(%struct.TYPE_6__* %23, i32 %24, i32* %16)
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %6
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BIT4, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BIT5, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @BTC_MSG_INTERFACE, align 4
  %40 = load i32, i32* @INTF_NOTIFY, align 4
  %41 = call i32 @BTC_PRINT(i32 %39, i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @BIT4, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %14, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @BIT5, align 4
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @BIT5, align 4
  %50 = load i32, i32* %15, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* @BIT6, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %15, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %38, %33, %28
  br label %57

57:                                               ; preds = %56, %6
  %58 = load i32, i32* %14, align 4
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  store i32 %58, i32* %59, align 16
  %60 = load i32, i32* %9, align 4
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %15, align 4
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 4
  store i32 %66, i32* %67, align 16
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCoexDm, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %94 = load i32, i32* @ALGO_TRACE_FW_EXEC, align 4
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 24
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %101, 16
  %103 = or i32 %99, %102
  %104 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 8
  %107 = or i32 %103, %106
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 4
  %109 = load i32, i32* %108, align 16
  %110 = or i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @BTC_PRINT(i32 %93, i32 %94, i8* %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_6__*, i32, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32, i32*)** %115, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %119 = call i32 %116(%struct.TYPE_6__* %117, i32 96, i32 5, i32* %118)
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
