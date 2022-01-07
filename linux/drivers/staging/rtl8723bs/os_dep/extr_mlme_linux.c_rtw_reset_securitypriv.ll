; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_mlme_linux.c_rtw_reset_securitypriv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_mlme_linux.c_rtw_reset_securitypriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.security_priv, %struct.mlme_ext_priv }
%struct.security_priv = type { i64, i32, i8*, i8*, i8*, i64, i8*, i32, i8*, i8*, i32* }
%struct.mlme_ext_priv = type { i64 }

@dot11AuthAlgrthm_8021X = common dso_local global i64 0, align 8
@backupPMKIDList = common dso_local global i32* null, align 8
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
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.security_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  store %struct.mlme_ext_priv* %9, %struct.mlme_ext_priv** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @dot11AuthAlgrthm_8021X, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %1
  %20 = load i32*, i32** @backupPMKIDList, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %23, i32 0, i32 10
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memcpy(i32* %21, i32* %26, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %33, i32 0, i32 9
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %37, i32 0, i32 8
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %4, align 8
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %5, align 4
  %44 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %45 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = bitcast %struct.security_priv* %47 to i8*
  %49 = call i32 @memset(i8* %48, i32 0, i32 88)
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %51, i32 0, i32 10
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32*, i32** @backupPMKIDList, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i32* %54, i32* %56, i32 %60)
  %62 = load i8*, i8** %3, align 8
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %64, i32 0, i32 9
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %68, i32 0, i32 8
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %72, i32 0, i32 7
  store i32 %70, i32* %73, align 8
  %74 = load i8*, i8** @Ndis802_11AuthModeOpen, align 8
  %75 = load %struct.adapter*, %struct.adapter** %2, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %76, i32 0, i32 3
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  br label %104

82:                                               ; preds = %1
  %83 = load %struct.adapter*, %struct.adapter** %2, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 1
  store %struct.security_priv* %84, %struct.security_priv** %7, align 8
  %85 = load i64, i64* @dot11AuthAlgrthm_Open, align 8
  %86 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %87 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i8*, i8** @_NO_PRIVACY_, align 8
  %89 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %90 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %89, i32 0, i32 6
  store i8* %88, i8** %90, align 8
  %91 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %92 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load i8*, i8** @_NO_PRIVACY_, align 8
  %94 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %95 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %97 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %96, i32 0, i32 1
  store i32 1, i32* %97, align 8
  %98 = load i8*, i8** @Ndis802_11AuthModeOpen, align 8
  %99 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %100 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @Ndis802_11WEPDisabled, align 8
  %102 = load %struct.security_priv*, %struct.security_priv** %7, align 8
  %103 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %82, %19
  %105 = load %struct.adapter*, %struct.adapter** %2, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_bh(i32* %106)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
