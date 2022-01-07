; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c_rtl92e_init_adaptive_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c_rtl92e_init_adaptive_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, %struct.rate_adaptive }
%struct.rate_adaptive = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@DM_RATR_STA_MAX = common dso_local global i32 0, align 4
@RateAdaptiveTH_High = common dso_local global i8* null, align 8
@RateAdaptiveTH_Low_20M = common dso_local global i8* null, align 8
@RateAdaptiveTH_Low_40M = common dso_local global i8* null, align 8
@RT_CID_819x_Netcore = common dso_local global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_init_adaptive_rate(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.rate_adaptive*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %7, i32 0, i32 2
  store %struct.rate_adaptive* %8, %struct.rate_adaptive** %4, align 8
  %9 = load i32, i32* @DM_RATR_STA_MAX, align 4
  %10 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %11 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %10, i32 0, i32 14
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** @RateAdaptiveTH_High, align 8
  %13 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %14 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %13, i32 0, i32 13
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @RateAdaptiveTH_Low_20M, align 8
  %16 = getelementptr i8, i8* %15, i64 5
  %17 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %18 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %17, i32 0, i32 12
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @RateAdaptiveTH_Low_40M, align 8
  %20 = getelementptr i8, i8* %19, i64 5
  %21 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %22 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %21, i32 0, i32 11
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @RateAdaptiveTH_High, align 8
  %24 = getelementptr i8, i8* %23, i64 5
  %25 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %26 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @RateAdaptiveTH_Low_20M, align 8
  %28 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %29 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @RateAdaptiveTH_Low_40M, align 8
  %31 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %32 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RT_CID_819x_Netcore, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %40 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %44

41:                                               ; preds = %1
  %42 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %43 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %46 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %45, i32 0, i32 1
  store i32 15, i32* %46, align 4
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RF_2T4R, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %54 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %53, i32 0, i32 2
  store i32 -1894842368, i32* %54, align 8
  %55 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %56 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %55, i32 0, i32 3
  store i32 -1894780928, i32* %56, align 4
  %57 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %58 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %57, i32 0, i32 4
  store i32 -1894780927, i32* %58, align 8
  %59 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %60 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %59, i32 0, i32 5
  store i32 -1894780923, i32* %60, align 4
  %61 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %62 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %61, i32 0, i32 6
  store i32 -1894780927, i32* %62, align 8
  %63 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %64 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %63, i32 0, i32 7
  store i32 13, i32* %64, align 4
  br label %85

65:                                               ; preds = %44
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RF_1T2R, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %73 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %72, i32 0, i32 2
  store i32 1032192, i32* %73, align 8
  %74 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %75 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %74, i32 0, i32 3
  store i32 1044480, i32* %75, align 4
  %76 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %77 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %76, i32 0, i32 4
  store i32 1044481, i32* %77, align 8
  %78 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %79 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %78, i32 0, i32 5
  store i32 1044485, i32* %79, align 4
  %80 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %81 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %80, i32 0, i32 6
  store i32 1044481, i32* %81, align 8
  %82 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %83 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %82, i32 0, i32 7
  store i32 13, i32* %83, align 4
  br label %84

84:                                               ; preds = %71, %65
  br label %85

85:                                               ; preds = %84, %52
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
