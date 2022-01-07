; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32*, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.wilc*, i32)* }

@EIO = common dso_local global i32 0, align 4
@WILC_TX_BUFF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@WILC_RX_BUFF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_wlan_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %7)
  store %struct.wilc_vif* %8, %struct.wilc_vif** %5, align 8
  %9 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %10 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %9, i32 0, i32 0
  %11 = load %struct.wilc*, %struct.wilc** %10, align 8
  store %struct.wilc* %11, %struct.wilc** %6, align 8
  %12 = load %struct.wilc*, %struct.wilc** %6, align 8
  %13 = getelementptr inbounds %struct.wilc, %struct.wilc* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.wilc*, %struct.wilc** %6, align 8
  %15 = getelementptr inbounds %struct.wilc, %struct.wilc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.wilc*, i32)*, i32 (%struct.wilc*, i32)** %17, align 8
  %19 = load %struct.wilc*, %struct.wilc** %6, align 8
  %20 = call i32 %18(%struct.wilc* %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %73

25:                                               ; preds = %1
  %26 = load %struct.wilc*, %struct.wilc** %6, align 8
  %27 = getelementptr inbounds %struct.wilc, %struct.wilc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @WILC_TX_BUFF_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kmalloc(i32 %31, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.wilc*, %struct.wilc** %6, align 8
  %36 = getelementptr inbounds %struct.wilc, %struct.wilc* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.wilc*, %struct.wilc** %6, align 8
  %39 = getelementptr inbounds %struct.wilc, %struct.wilc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOBUFS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %73

45:                                               ; preds = %37
  %46 = load %struct.wilc*, %struct.wilc** %6, align 8
  %47 = getelementptr inbounds %struct.wilc, %struct.wilc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @WILC_RX_BUFF_SIZE, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kmalloc(i32 %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.wilc*, %struct.wilc** %6, align 8
  %56 = getelementptr inbounds %struct.wilc, %struct.wilc* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.wilc*, %struct.wilc** %6, align 8
  %59 = getelementptr inbounds %struct.wilc, %struct.wilc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOBUFS, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %57
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @init_chip(%struct.net_device* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %87

73:                                               ; preds = %69, %62, %42, %22
  %74 = load %struct.wilc*, %struct.wilc** %6, align 8
  %75 = getelementptr inbounds %struct.wilc, %struct.wilc* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load %struct.wilc*, %struct.wilc** %6, align 8
  %79 = getelementptr inbounds %struct.wilc, %struct.wilc* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.wilc*, %struct.wilc** %6, align 8
  %81 = getelementptr inbounds %struct.wilc, %struct.wilc* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @kfree(i32* %82)
  %84 = load %struct.wilc*, %struct.wilc** %6, align 8
  %85 = getelementptr inbounds %struct.wilc, %struct.wilc* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %73, %72
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @init_chip(%struct.net_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
