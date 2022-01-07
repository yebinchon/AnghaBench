; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_recv_linux.c_rtw_handle_tkip_mic_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_recv_linux.c_rtw_handle_tkip_mic_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.security_priv, %struct.mlme_priv }
%struct.security_priv = type { i64, i32, i32 }
%struct.mlme_priv = type { i32* }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iw_michaelmicfailure = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@IW_MICFAILURE_GROUP = common dso_local global i32 0, align 4
@IW_MICFAILURE_PAIRWISE = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IWEVMICHAELMICFAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_handle_tkip_mic_err(%struct.adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.iwreq_data, align 4
  %6 = alloca %struct.iw_michaelmicfailure, align 4
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.security_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 2
  store %struct.mlme_priv* %11, %struct.mlme_priv** %7, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.security_priv* %13, %struct.security_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.security_priv*, %struct.security_priv** %8, align 8
  %15 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** @jiffies, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.security_priv*, %struct.security_priv** %8, align 8
  %22 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %50

23:                                               ; preds = %2
  %24 = load i8*, i8** @jiffies, align 8
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.security_priv*, %struct.security_priv** %8, align 8
  %29 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 60, %32
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load %struct.security_priv*, %struct.security_priv** %8, align 8
  %38 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %37, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.security_priv*, %struct.security_priv** %8, align 8
  %40 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.security_priv*, %struct.security_priv** %8, align 8
  %43 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %49

44:                                               ; preds = %23
  %45 = load i8*, i8** @jiffies, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.security_priv*, %struct.security_priv** %8, align 8
  %48 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  br label %50

50:                                               ; preds = %49, %18
  %51 = bitcast %struct.iw_michaelmicfailure* %6 to %union.iwreq_data*
  %52 = call i32 @memset(%union.iwreq_data* %51, i32 0, i32 16)
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @IW_MICFAILURE_GROUP, align 4
  %57 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %6, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @IW_MICFAILURE_PAIRWISE, align 4
  %62 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %6, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @ARPHRD_ETHER, align 4
  %67 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %6, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.iw_michaelmicfailure, %struct.iw_michaelmicfailure* %6, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %73 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = call i32 @memcpy(i32 %71, i32* %75, i32 %76)
  %78 = call i32 @memset(%union.iwreq_data* %5, i32 0, i32 8)
  %79 = bitcast %union.iwreq_data* %5 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 16, i32* %80, align 4
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IWEVMICHAELMICFAILURE, align 4
  %85 = bitcast %struct.iw_michaelmicfailure* %6 to i8*
  %86 = call i32 @wireless_send_event(i32 %83, i32 %84, %union.iwreq_data* %5, i8* %85)
  ret void
}

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
