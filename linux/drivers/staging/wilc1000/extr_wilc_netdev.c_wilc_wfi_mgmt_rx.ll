; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_wfi_mgmt_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_wfi_mgmt_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32, i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.wilc_vif = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wilc_wfi_mgmt_rx(%struct.wilc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wilc_vif*, align 8
  %9 = alloca i64, align 8
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.wilc*, %struct.wilc** %4, align 8
  %11 = getelementptr inbounds %struct.wilc, %struct.wilc* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %83, %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.wilc*, %struct.wilc** %4, align 8
  %16 = getelementptr inbounds %struct.wilc, %struct.wilc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @le16_to_cpup(i32* %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.wilc*, %struct.wilc** %4, align 8
  %23 = getelementptr inbounds %struct.wilc, %struct.wilc* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.wilc_vif* @netdev_priv(i32 %30)
  store %struct.wilc_vif* %31, %struct.wilc_vif** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %34 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %19
  %41 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %42 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %40, %19
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %51 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %49, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %48
  %58 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %59 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57, %40
  %66 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @wilc_wfi_p2p_rx(%struct.wilc_vif* %66, i32* %67, i32 %68)
  br label %86

70:                                               ; preds = %57, %48
  %71 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %72 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.wilc*, %struct.wilc** %4, align 8
  %77 = getelementptr inbounds %struct.wilc, %struct.wilc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @wilc_wfi_monitor_rx(i32 %78, i32* %79, i32 %80)
  br label %86

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %13

86:                                               ; preds = %75, %65, %13
  %87 = load %struct.wilc*, %struct.wilc** %4, align 8
  %88 = getelementptr inbounds %struct.wilc, %struct.wilc* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @le16_to_cpup(i32*) #1

declare dso_local %struct.wilc_vif* @netdev_priv(i32) #1

declare dso_local i32 @wilc_wfi_p2p_rx(%struct.wilc_vif*, i32*, i32) #1

declare dso_local i32 @wilc_wfi_monitor_rx(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
