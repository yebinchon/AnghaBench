; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_netdev_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_netdev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32, i32, i32, i32, %struct.TYPE_2__**, i32* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wilc_netdev_cleanup(%struct.wilc* %0) #0 {
  %2 = alloca %struct.wilc*, align 8
  %3 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %2, align 8
  %4 = load %struct.wilc*, %struct.wilc** %2, align 8
  %5 = icmp ne %struct.wilc* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %86

7:                                                ; preds = %1
  %8 = load %struct.wilc*, %struct.wilc** %2, align 8
  %9 = getelementptr inbounds %struct.wilc, %struct.wilc* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.wilc*, %struct.wilc** %2, align 8
  %14 = getelementptr inbounds %struct.wilc, %struct.wilc* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @release_firmware(i32* %15)
  %17 = load %struct.wilc*, %struct.wilc** %2, align 8
  %18 = getelementptr inbounds %struct.wilc, %struct.wilc* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %7
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.wilc*, %struct.wilc** %2, align 8
  %23 = getelementptr inbounds %struct.wilc, %struct.wilc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.wilc*, %struct.wilc** %2, align 8
  %28 = getelementptr inbounds %struct.wilc, %struct.wilc* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %26
  %36 = load %struct.wilc*, %struct.wilc** %2, align 8
  %37 = getelementptr inbounds %struct.wilc, %struct.wilc* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load %struct.wilc*, %struct.wilc** %2, align 8
  %48 = getelementptr inbounds %struct.wilc, %struct.wilc* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @unregister_netdev(i64 %55)
  br label %57

57:                                               ; preds = %46, %35, %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %20

61:                                               ; preds = %20
  %62 = load %struct.wilc*, %struct.wilc** %2, align 8
  %63 = call i32 @wilc_wfi_deinit_mon_interface(%struct.wilc* %62, i32 0)
  %64 = load %struct.wilc*, %struct.wilc** %2, align 8
  %65 = getelementptr inbounds %struct.wilc, %struct.wilc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @flush_workqueue(i32 %66)
  %68 = load %struct.wilc*, %struct.wilc** %2, align 8
  %69 = getelementptr inbounds %struct.wilc, %struct.wilc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @destroy_workqueue(i32 %70)
  %72 = load %struct.wilc*, %struct.wilc** %2, align 8
  %73 = call i32 @wilc_wlan_cfg_deinit(%struct.wilc* %72)
  %74 = load %struct.wilc*, %struct.wilc** %2, align 8
  %75 = getelementptr inbounds %struct.wilc, %struct.wilc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @kfree(i32 %76)
  %78 = load %struct.wilc*, %struct.wilc** %2, align 8
  %79 = getelementptr inbounds %struct.wilc, %struct.wilc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @wiphy_unregister(i32 %80)
  %82 = load %struct.wilc*, %struct.wilc** %2, align 8
  %83 = getelementptr inbounds %struct.wilc, %struct.wilc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wiphy_free(i32 %84)
  br label %86

86:                                               ; preds = %61, %6
  ret void
}

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @unregister_netdev(i64) #1

declare dso_local i32 @wilc_wfi_deinit_mon_interface(%struct.wilc*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @wilc_wlan_cfg_deinit(%struct.wilc*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wiphy_unregister(i32) #1

declare dso_local i32 @wiphy_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
