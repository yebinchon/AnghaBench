; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_rtw_chk_start_clnt_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_rtw_chk_start_clnt_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i8, i8, i8 }

@.str = private unnamed_addr constant [57 x i8] c"start_join_set_ch_bw: ch =%d, bwmode =%d, ch_offset =%d\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_chk_start_clnt_join(%struct.adapter* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlme_ext_priv*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.mlme_ext_priv* %15, %struct.mlme_ext_priv** %9, align 8
  %16 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %10, align 1
  %19 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %20 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %11, align 1
  %22 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %23 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %12, align 1
  store i32 1, i32* %13, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %27, %4
  %34 = call i32 @rtw_warn_on(i32 1)
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i8, i8* %10, align 1
  %40 = load i8, i8* %11, align 1
  %41 = load i8, i8* %12, align 1
  %42 = call i32 @DBG_871X(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8 zeroext %39, i8 zeroext %40, i8 zeroext %41)
  %43 = load i8, i8* %10, align 1
  %44 = load i8*, i8** %6, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i8, i8* %11, align 1
  %46 = load i8*, i8** %7, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i8, i8* %12, align 1
  %48 = load i8*, i8** %8, align 8
  store i8 %47, i8* %48, align 1
  br label %49

49:                                               ; preds = %38, %35
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @_SUCCESS, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @_FAIL, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  ret i32 %57
}

declare dso_local i32 @rtw_warn_on(i32) #1

declare dso_local i32 @DBG_871X(i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
