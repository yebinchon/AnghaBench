; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_is_same_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_is_same_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_network = type { i64, i64, i32, i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_network*, %struct.rtllib_network*, i32)* @is_same_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same_network(%struct.rtllib_network* %0, %struct.rtllib_network* %1, i32 %2) #0 {
  %4 = alloca %struct.rtllib_network*, align 8
  %5 = alloca %struct.rtllib_network*, align 8
  %6 = alloca i32, align 4
  store %struct.rtllib_network* %0, %struct.rtllib_network** %4, align 8
  store %struct.rtllib_network* %1, %struct.rtllib_network** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %8 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %11 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %74, label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %19 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %22 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %17
  %26 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %27 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %30 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* @ETH_ALEN, align 8
  %33 = call i32 @memcmp(i32 %28, i32 %31, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %74, label %35

35:                                               ; preds = %25
  %36 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %37 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %40 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %43 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcmp(i32 %38, i32 %41, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %47, %35
  %51 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %52 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %57 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %55, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load %struct.rtllib_network*, %struct.rtllib_network** %4, align 8
  %64 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %67 = and i32 %65, %66
  %68 = load %struct.rtllib_network*, %struct.rtllib_network** %5, align 8
  %69 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %67, %72
  br label %74

74:                                               ; preds = %62, %50, %47, %25, %17, %14
  %75 = phi i1 [ false, %50 ], [ false, %47 ], [ false, %25 ], [ false, %17 ], [ false, %14 ], [ %73, %62 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
