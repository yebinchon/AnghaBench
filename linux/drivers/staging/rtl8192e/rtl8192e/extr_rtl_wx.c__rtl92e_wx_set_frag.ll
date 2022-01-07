; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_set_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_wx.c__rtl92e_wx_set_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.r8192_priv = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@DEFAULT_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MIN_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @_rtl92e_wx_set_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_wx_set_frag(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %10, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @DEFAULT_FRAG_THRESHOLD, align 4
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %57

30:                                               ; preds = %18
  %31 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %32 = bitcast %union.iwreq_data* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MIN_FRAG_THRESHOLD, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %39 = bitcast %union.iwreq_data* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %37
  %48 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, -2
  %53 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %54 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %47, %24
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %44, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
