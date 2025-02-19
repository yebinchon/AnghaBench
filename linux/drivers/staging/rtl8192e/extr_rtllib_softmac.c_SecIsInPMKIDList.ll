; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_SecIsInPMKIDList.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_SecIsInPMKIDList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NUM_PMKID_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, i32*)* @SecIsInPMKIDList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SecIsInPMKIDList(%struct.rtllib_device* %0, i32* %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %8 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %6
  %17 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %18 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i64 @memcmp(i32 %24, i32* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %37

30:                                               ; preds = %16, %6
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %6, label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @NUM_PMKID_CACHE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
