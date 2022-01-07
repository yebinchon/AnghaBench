; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_ips_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_ips_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pwrctrl_priv = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@IPS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ips_leave(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pwrctrl_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %6)
  store %struct.pwrctrl_priv* %7, %struct.pwrctrl_priv** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = call i32 @is_primary_adapter(%struct.adapter* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @_SUCCESS, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %15 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = call i32 @_ips_leave(%struct.adapter* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %20 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* @_SUCCESS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = load i32, i32* @IPS_NONE, align 4
  %28 = call i32 @hal_btcoex_IpsNotify(%struct.adapter* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %13
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @is_primary_adapter(%struct.adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_ips_leave(%struct.adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hal_btcoex_IpsNotify(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
