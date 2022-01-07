; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_set_802_11_authentication_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_set_802_11_authentication_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv }
%struct.security_priv = type { i32, i32 }

@_module_rtl871x_ioctl_set_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"set_802_11_auth.mode(): mode =%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"rtw_set_802_11_authentication_mode:psecuritypriv->ndisauthtype =%d\00", align 1
@dot11AuthAlgrthm_8021X = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_set_802_11_authentication_mode(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.security_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.security_priv* %9, %struct.security_priv** %5, align 8
  %10 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %11 = load i32, i32* @_drv_info_, align 4
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @RT_TRACE(i32 %10, i32 %11, i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %18 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %20 = load i32, i32* @_drv_info_, align 4
  %21 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %22 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @RT_TRACE(i32 %19, i32 %20, i8* %25)
  %27 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %28 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @dot11AuthAlgrthm_8021X, align 4
  %33 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %34 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %38 = call i32 @rtw_set_auth(%struct.adapter* %36, %struct.security_priv* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @_SUCCESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_set_auth(%struct.adapter*, %struct.security_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
