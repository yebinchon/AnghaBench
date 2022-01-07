; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_SecIsInPMKIDList.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_SecIsInPMKIDList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv }
%struct.security_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NUM_PMKID_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, i32*)* @SecIsInPMKIDList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SecIsInPMKIDList(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.security_priv*, align 8
  %6 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 0
  store %struct.security_priv* %8, %struct.security_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %36, %2
  %10 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %11 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %9
  %20 = load %struct.security_priv*, %struct.security_priv** %5, align 8
  %21 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcmp(i32 %27, i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %40

33:                                               ; preds = %19, %9
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %9, label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %46

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
