; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_add_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_add_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv }
%struct.security_priv = type { i64, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.NDIS_802_11_WEP = type { i32, i32, i32 }

@WEP_KEYS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@_WEP40_ = common dso_local global i32 0, align 4
@_WEP104_ = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_set_802_11_add_wep(%struct._adapter* %0, %struct.NDIS_802_11_WEP* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.NDIS_802_11_WEP*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.NDIS_802_11_WEP* %1, %struct.NDIS_802_11_WEP** %5, align 8
  %8 = load %struct._adapter*, %struct._adapter** %4, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 0
  store %struct.security_priv* %9, %struct.security_priv** %7, align 8
  %10 = load %struct.NDIS_802_11_WEP*, %struct.NDIS_802_11_WEP** %5, align 8
  %11 = getelementptr inbounds %struct.NDIS_802_11_WEP, %struct.NDIS_802_11_WEP* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 1073741823
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @WEP_KEYS, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.NDIS_802_11_WEP*, %struct.NDIS_802_11_WEP** %5, align 8
  %23 = getelementptr inbounds %struct.NDIS_802_11_WEP, %struct.NDIS_802_11_WEP* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %33 [
    i32 5, label %25
    i32 13, label %29
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @_WEP40_, align 4
  %27 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %28 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %37

29:                                               ; preds = %21
  %30 = load i32, i32* @_WEP104_, align 4
  %31 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %32 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %37

33:                                               ; preds = %21
  %34 = load i32, i32* @_NO_PRIVACY_, align 4
  %35 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %36 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %29, %25
  %38 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %39 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.NDIS_802_11_WEP*, %struct.NDIS_802_11_WEP** %5, align 8
  %46 = getelementptr inbounds %struct.NDIS_802_11_WEP, %struct.NDIS_802_11_WEP* %45, i32 0, i32 2
  %47 = load %struct.NDIS_802_11_WEP*, %struct.NDIS_802_11_WEP** %5, align 8
  %48 = getelementptr inbounds %struct.NDIS_802_11_WEP, %struct.NDIS_802_11_WEP* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32 %44, i32* %46, i32 %49)
  %51 = load %struct.NDIS_802_11_WEP*, %struct.NDIS_802_11_WEP** %5, align 8
  %52 = getelementptr inbounds %struct.NDIS_802_11_WEP, %struct.NDIS_802_11_WEP* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %55 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %61 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct._adapter*, %struct._adapter** %4, align 8
  %63 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @r8712_set_key(%struct._adapter* %62, %struct.security_priv* %63, i64 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %37, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @r8712_set_key(%struct._adapter*, %struct.security_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
