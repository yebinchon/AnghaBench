; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_SetFwIgnoreWlanAct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b2Ant.c_halbtc8723b2ant_SetFwIgnoreWlanAct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32*)* }

@BIT0 = common dso_local global i32 0, align 4
@BTC_MSG_ALGORITHM = common dso_local global i32 0, align 4
@ALGO_TRACE_FW_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"[BTCoex], set FW for BT Ignore Wlan_Act, FW write 0x63 = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @halbtc8723b2ant_SetFwIgnoreWlanAct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b2ant_SetFwIgnoreWlanAct(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast [1 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @BIT0, align 4
  %11 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @BTC_MSG_ALGORITHM, align 4
  %16 = load i32, i32* @ALGO_TRACE_FW_EXEC, align 4
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @BTC_PRINT(i32 %15, i32 %16, i8* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i32, i32, i32*)*, i32 (%struct.TYPE_4__*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %27 = call i32 %24(%struct.TYPE_4__* %25, i32 99, i32 1, i32* %26)
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
