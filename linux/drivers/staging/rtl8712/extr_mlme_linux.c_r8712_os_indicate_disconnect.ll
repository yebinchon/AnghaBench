; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_mlme_linux.c_r8712_os_indicate_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_mlme_linux.c_r8712_os_indicate_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv, i32 }
%struct.security_priv = type { i32, i32, i32, i32, i32, i8*, i64, i8*, i8*, i8*, i32*, i32 }

@backupPMKIDList = common dso_local global i32* null, align 8
@NUM_PMKID_CACHE = common dso_local global i32 0, align 4
@r8712_use_tkipkey_handler = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i8* null, align 8
@Ndis802_11AuthModeOpen = common dso_local global i32 0, align 4
@Ndis802_11WEPDisabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_os_indicate_disconnect(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load %struct._adapter*, %struct._adapter** %2, align 8
  %7 = call i32 @r8712_indicate_wx_disassoc_event(%struct._adapter* %6)
  %8 = load %struct._adapter*, %struct._adapter** %2, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @netif_carrier_off(i32 %10)
  %12 = load %struct._adapter*, %struct._adapter** %2, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %67

17:                                               ; preds = %1
  %18 = load i32*, i32** @backupPMKIDList, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load %struct._adapter*, %struct._adapter** %2, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %21, i32 0, i32 10
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memcpy(i32* %19, i32* %24, i32 %28)
  %30 = load %struct._adapter*, %struct._adapter** %2, align 8
  %31 = getelementptr inbounds %struct._adapter, %struct._adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %31, i32 0, i32 9
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  %34 = load %struct._adapter*, %struct._adapter** %2, align 8
  %35 = getelementptr inbounds %struct._adapter, %struct._adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %35, i32 0, i32 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  %38 = load %struct._adapter*, %struct._adapter** %2, align 8
  %39 = getelementptr inbounds %struct._adapter, %struct._adapter* %38, i32 0, i32 0
  %40 = bitcast %struct.security_priv* %39 to i8*
  %41 = call i32 @memset(i8* %40, i32 0, i32 80)
  %42 = load %struct._adapter*, %struct._adapter** %2, align 8
  %43 = getelementptr inbounds %struct._adapter, %struct._adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %43, i32 0, i32 11
  %45 = load i32, i32* @r8712_use_tkipkey_handler, align 4
  %46 = call i32 @timer_setup(i32* %44, i32 %45, i32 0)
  %47 = load %struct._adapter*, %struct._adapter** %2, align 8
  %48 = getelementptr inbounds %struct._adapter, %struct._adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %48, i32 0, i32 10
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32*, i32** @backupPMKIDList, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(i32* %51, i32* %53, i32 %57)
  %59 = load i8*, i8** %3, align 8
  %60 = load %struct._adapter*, %struct._adapter** %2, align 8
  %61 = getelementptr inbounds %struct._adapter, %struct._adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %61, i32 0, i32 9
  store i8* %59, i8** %62, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct._adapter*, %struct._adapter** %2, align 8
  %65 = getelementptr inbounds %struct._adapter, %struct._adapter* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %65, i32 0, i32 8
  store i8* %63, i8** %66, align 8
  br label %90

67:                                               ; preds = %1
  %68 = load %struct._adapter*, %struct._adapter** %2, align 8
  %69 = getelementptr inbounds %struct._adapter, %struct._adapter* %68, i32 0, i32 0
  store %struct.security_priv* %69, %struct.security_priv** %5, align 8
  %70 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %71 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i8*, i8** @_NO_PRIVACY_, align 8
  %73 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %74 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %73, i32 0, i32 7
  store i8* %72, i8** %74, align 8
  %75 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %76 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %75, i32 0, i32 6
  store i64 0, i64* %76, align 8
  %77 = load i8*, i8** @_NO_PRIVACY_, align 8
  %78 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %79 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %81 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @Ndis802_11AuthModeOpen, align 4
  %83 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %84 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @Ndis802_11WEPDisabled, align 4
  %86 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %87 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %89 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %67, %17
  ret void
}

declare dso_local i32 @r8712_indicate_wx_disassoc_event(%struct._adapter*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
