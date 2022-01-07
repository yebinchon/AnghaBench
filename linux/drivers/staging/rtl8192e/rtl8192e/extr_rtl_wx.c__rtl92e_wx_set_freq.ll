; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.r8192_priv = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @_rtl92e_wx_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_wx_set_freq(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %11, align 8
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %27 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @rtllib_wx_set_freq(i32 %25, %struct.iw_request_info* %26, %union.iwreq_data* %27, i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %19, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtllib_wx_set_freq(i32, %struct.iw_request_info*, %union.iwreq_data*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
