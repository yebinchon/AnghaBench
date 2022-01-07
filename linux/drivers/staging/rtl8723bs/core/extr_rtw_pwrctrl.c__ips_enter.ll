; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c__ips_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c__ips_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pwrctrl_priv = type { i32, i64, i64, i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"==>ips_enter cnts:%d\0A\00", align 1
@rf_off = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"nolinked power save enter\0A\00", align 1
@IPS_LEVEL_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ips_enter(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %4)
  store %struct.pwrctrl_priv* %5, %struct.pwrctrl_priv** %3, align 8
  %6 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @rf_off, align 8
  %22 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %1
  %27 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %27, i32 0, i32 4
  store i32 1, i32* %28, align 8
  %29 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPS_LEVEL_2, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %37 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %36, i32 0, i32 5
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = call i32 @rtw_ips_pwr_down(%struct.adapter* %39)
  %41 = load i64, i64* @rf_off, align 8
  %42 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %42, i32 0, i32 6
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %1
  %45 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  ret void
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, ...) #1

declare dso_local i32 @rtw_ips_pwr_down(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
