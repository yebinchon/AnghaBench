; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_LPS_Leave_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_LPS_Leave_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i64 }
%struct.pwrctrl_priv = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Wait for cpwm event  than 100 ms!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LPS_Leave_check(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %6)
  store %struct.pwrctrl_priv* %7, %struct.pwrctrl_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %4, align 8
  %9 = call i32 (...) @cond_resched()
  br label %10

10:                                               ; preds = %1, %45
  %11 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %10
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %18, %10
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %47

37:                                               ; preds = %30
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub i64 %38, %39
  %41 = call i32 @jiffies_to_msecs(i64 %40)
  %42 = icmp sgt i32 %41, 100
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @DBG_871X(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %47

45:                                               ; preds = %37
  %46 = call i32 @msleep(i32 1)
  br label %10

47:                                               ; preds = %43, %36
  ret void
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
