; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_sec_restore_wep_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_rtw_sec_restore_wep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv }
%struct.security_priv = type { i64, i32, i32 }

@_WEP40_ = common dso_local global i64 0, align 8
@_WEP104_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_sec_restore_wep_key(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.security_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  store %struct.security_priv* %6, %struct.security_priv** %3, align 8
  %7 = load i64, i64* @_WEP40_, align 8
  %8 = load %struct.security_priv*, %struct.security_priv** %3, align 8
  %9 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @_WEP104_, align 8
  %14 = load %struct.security_priv*, %struct.security_priv** %3, align 8
  %15 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %12, %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load %struct.security_priv*, %struct.security_priv** %3, align 8
  %24 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.security_priv*, %struct.security_priv** %3, align 8
  %33 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = load %struct.security_priv*, %struct.security_priv** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @rtw_set_key(%struct.adapter* %37, %struct.security_priv* %38, i32 %39, i32 1, i32 0)
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = load %struct.security_priv*, %struct.security_priv** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @rtw_set_key(%struct.adapter* %42, %struct.security_priv* %43, i32 %44, i32 0, i32 0)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %19

51:                                               ; preds = %19
  br label %52

52:                                               ; preds = %51, %12
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_set_key(%struct.adapter*, %struct.security_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
