; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mlme_linux.c_rtw_reset_securitypriv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mlme_linux.c_rtw_reset_securitypriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv }
%struct.security_priv = type { i64, i32, i8*, i8*, i8*, i64, i8*, i32, i8*, i8*, i32 }

@dot11AuthAlgrthm_8021X = common dso_local global i64 0, align 8
@backup_pmkid = common dso_local global i32 0, align 4
@NUM_PMKID_CACHE = common dso_local global i32 0, align 4
@Ndis802_11AuthModeOpen = common dso_local global i8* null, align 8
@Ndis802_11WEPDisabled = common dso_local global i8* null, align 8
@dot11AuthAlgrthm_Open = common dso_local global i64 0, align 8
@_NO_PRIVACY_ = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_reset_securitypriv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.security_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.security_priv* %8, %struct.security_priv** %6, align 8
  %9 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %10 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @dot11AuthAlgrthm_8021X, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = load i32, i32* @backup_pmkid, align 4
  %16 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %17 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(i32 %15, i32 %18, i32 %22)
  %24 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %25 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %24, i32 0, i32 9
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  %27 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %28 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %27, i32 0, i32 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  %30 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %31 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  %33 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %34 = call i32 @memset(%struct.security_priv* %33, i32 0, i32 88)
  %35 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %36 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @backup_pmkid, align 4
  %39 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i32 %37, i32 %38, i32 %42)
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %46 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %45, i32 0, i32 9
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %49 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %52 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @Ndis802_11AuthModeOpen, align 8
  %54 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %55 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %57 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %58 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %79

59:                                               ; preds = %1
  %60 = load i64, i64* @dot11AuthAlgrthm_Open, align 8
  %61 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %62 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i8*, i8** @_NO_PRIVACY_, align 8
  %64 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %65 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %67 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load i8*, i8** @_NO_PRIVACY_, align 8
  %69 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %70 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %72 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %71, i32 0, i32 1
  store i32 1, i32* %72, align 8
  %73 = load i8*, i8** @Ndis802_11AuthModeOpen, align 8
  %74 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %75 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %77 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %78 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %59, %14
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.security_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
