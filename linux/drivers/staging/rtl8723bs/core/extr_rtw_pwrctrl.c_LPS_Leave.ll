; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_LPS_Leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_LPS_Leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.dvobj_priv = type { i32 }
%struct.pwrctrl_priv = type { i64, i32, i64 }

@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"WIFI-%s\00", align 1
@LPS_LEAVE_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LPS_Leave(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dvobj_priv*, align 8
  %6 = alloca %struct.pwrctrl_priv*, align 8
  %7 = alloca [32 x i8], align 16
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %8)
  store %struct.dvobj_priv* %9, %struct.dvobj_priv** %5, align 8
  %10 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %11 = call %struct.pwrctrl_priv* @dvobj_to_pwrctl(%struct.dvobj_priv* %10)
  store %struct.pwrctrl_priv* %11, %struct.pwrctrl_priv** %6, align 8
  %12 = bitcast [32 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = call i64 @hal_btcoex_IsBtControlLps(%struct.adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %19 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %24 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %35 = call i32 @rtw_set_ps_mode(%struct.adapter* %32, i64 %33, i32 0, i32 0, i8* %34)
  %36 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %37 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = call i32 @LPS_RF_ON_check(%struct.adapter* %42, i32 100)
  br label %44

44:                                               ; preds = %41, %28
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45, %17
  %47 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %48 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %16
  ret void
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local %struct.pwrctrl_priv* @dvobj_to_pwrctl(%struct.dvobj_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @hal_btcoex_IsBtControlLps(%struct.adapter*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @rtw_set_ps_mode(%struct.adapter*, i64, i32, i32, i8*) #1

declare dso_local i32 @LPS_RF_ON_check(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
