; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_on_action_public.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_on_action_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.recv_frame = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@_FAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RTW_WLAN_CATEGORY_PUBLIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.recv_frame*)* @on_action_public to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_action_public(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %10 = load i32, i32* @_FAIL, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %12 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %6, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 4
  store i64* %17, i64** %7, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = call i32 @myid(i32* %19)
  %21 = load i64*, i64** %6, align 8
  %22 = call i32 @GetAddr1Ptr(i64* %21)
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i64 @memcmp(i32 %20, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %48

27:                                               ; preds = %2
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @RTW_WLAN_CATEGORY_PUBLIC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %48

35:                                               ; preds = %27
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  switch i64 %39, label %43 [
    i64 128, label %40
  ]

40:                                               ; preds = %35
  %41 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %42 = call i32 @on_action_public_vendor(%struct.recv_frame* %41)
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @on_action_public_default(%struct.recv_frame* %44, i64 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %34, %26
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @myid(i32*) #1

declare dso_local i32 @GetAddr1Ptr(i64*) #1

declare dso_local i32 @on_action_public_vendor(%struct.recv_frame*) #1

declare dso_local i32 @on_action_public_default(%struct.recv_frame*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
