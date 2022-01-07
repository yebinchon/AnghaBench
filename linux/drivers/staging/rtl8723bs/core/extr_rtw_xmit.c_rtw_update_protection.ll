; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_update_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_update_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.registry_priv, %struct.xmit_priv }
%struct.registry_priv = type { i8* }
%struct.xmit_priv = type { i32, i8* }

@NONE_VCS = common dso_local global i8* null, align 8
@_ERPINFO_IE_ = common dso_local global i32 0, align 4
@RTS_CTS = common dso_local global i8* null, align 8
@CTS_TO_SELF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_update_protection(%struct.adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xmit_priv*, align 8
  %11 = alloca %struct.registry_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.xmit_priv* %13, %struct.xmit_priv** %10, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.registry_priv* %15, %struct.registry_priv** %11, align 8
  %16 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %17 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 128, label %23
    i32 130, label %24
  ]

19:                                               ; preds = %3
  %20 = load i8*, i8** @NONE_VCS, align 8
  %21 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %22 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %65

23:                                               ; preds = %3
  br label %65

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %3, %24
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @_ERPINFO_IE_, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32* @rtw_get_ie(i32* %26, i32 %27, i32* %9, i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** @NONE_VCS, align 8
  %34 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %35 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %64

36:                                               ; preds = %25
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BIT(i32 1)
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load %struct.registry_priv*, %struct.registry_priv** %11, align 8
  %46 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** @RTS_CTS, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i8*, i8** @RTS_CTS, align 8
  %52 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %53 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %58

54:                                               ; preds = %44
  %55 = load i8*, i8** @CTS_TO_SELF, align 8
  %56 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %57 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %63

59:                                               ; preds = %36
  %60 = load i8*, i8** @NONE_VCS, align 8
  %61 = load %struct.xmit_priv*, %struct.xmit_priv** %10, align 8
  %62 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %59, %58
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %23, %19
  ret void
}

declare dso_local i32* @rtw_get_ie(i32*, i32, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
