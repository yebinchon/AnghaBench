; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c__ips_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c__ips_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pwrctrl_priv = type { i64, i32, i32, i32, i32, i8* }

@_SUCCESS = common dso_local global i32 0, align 4
@rf_off = common dso_local global i64 0, align 8
@rf_on = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"==>ips_leave cnts:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"nolinked power save leave\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"==> ips_leave.....LED(0x%08x)...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ips_leave(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %5)
  store %struct.pwrctrl_priv* %6, %struct.pwrctrl_priv** %3, align 8
  %7 = load i32, i32* @_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @rf_off, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %1
  %14 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %13
  %19 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = load i8*, i8** @rf_on, align 8
  %22 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = call i32 @rtw_ips_pwr_up(%struct.adapter* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load i8*, i8** @rf_on, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %18
  %43 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.adapter*, %struct.adapter** %2, align 8
  %45 = call i32 @rtw_read32(%struct.adapter* %44, i32 76)
  %46 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %52 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %51, i32 0, i32 3
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %13, %1
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, ...) #1

declare dso_local i32 @rtw_ips_pwr_up(%struct.adapter*) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
