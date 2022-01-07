; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_sdio.c_rsi_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.sdio_func = type { i32 }
%struct.rsi_hw = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.rsi_91x_sdiodev = type { i32, i32 }

@CONFIG_RSI_COEX = common dso_local global i32 0, align 4
@rsi_bt_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ERR_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"##### RSI SDIO device disconnected #####\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @rsi_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_disconnect(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.rsi_hw*, align 8
  %4 = alloca %struct.rsi_91x_sdiodev*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = call %struct.rsi_hw* @sdio_get_drvdata(%struct.sdio_func* %5)
  store %struct.rsi_hw* %6, %struct.rsi_hw** %3, align 8
  %7 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %8 = icmp ne %struct.rsi_hw* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %74

10:                                               ; preds = %1
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %12 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rsi_91x_sdiodev*
  store %struct.rsi_91x_sdiodev* %14, %struct.rsi_91x_sdiodev** %4, align 8
  %15 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %4, align 8
  %16 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %15, i32 0, i32 1
  %17 = call i32 @rsi_kill_thread(i32* %16)
  %18 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %19 = call i32 @sdio_claim_host(%struct.sdio_func* %18)
  %20 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %21 = call i32 @sdio_release_irq(%struct.sdio_func* %20)
  %22 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %23 = call i32 @sdio_release_host(%struct.sdio_func* %22)
  %24 = call i32 @mdelay(i32 10)
  %25 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %26 = call i32 @rsi_mac80211_detach(%struct.rsi_hw* %25)
  %27 = call i32 @mdelay(i32 10)
  %28 = load i32, i32* @CONFIG_RSI_COEX, align 4
  %29 = call i64 @IS_ENABLED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %10
  %32 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %33 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %57

38:                                               ; preds = %31
  %39 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %40 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rsi_bt_ops, i32 0, i32 0), align 8
  %47 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %48 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 %46(i32* %51)
  %53 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %54 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %45, %38, %31, %10
  %58 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %59 = call i32 @rsi_reset_chip(%struct.rsi_hw* %58)
  %60 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %61 = call i32 @sdio_claim_host(%struct.sdio_func* %60)
  %62 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %63 = call i32 @rsi_reset_card(%struct.sdio_func* %62)
  %64 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %65 = call i32 @sdio_disable_func(%struct.sdio_func* %64)
  %66 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %67 = call i32 @sdio_release_host(%struct.sdio_func* %66)
  %68 = load %struct.rsi_91x_sdiodev*, %struct.rsi_91x_sdiodev** %4, align 8
  %69 = getelementptr inbounds %struct.rsi_91x_sdiodev, %struct.rsi_91x_sdiodev* %68, i32 0, i32 0
  store i32 2, i32* %69, align 4
  %70 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %71 = call i32 @rsi_91x_deinit(%struct.rsi_hw* %70)
  %72 = load i32, i32* @ERR_ZONE, align 4
  %73 = call i32 @rsi_dbg(i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %57, %9
  ret void
}

declare dso_local %struct.rsi_hw* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @rsi_kill_thread(i32*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rsi_mac80211_detach(%struct.rsi_hw*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @rsi_reset_chip(%struct.rsi_hw*) #1

declare dso_local i32 @rsi_reset_card(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @rsi_91x_deinit(%struct.rsi_hw*) #1

declare dso_local i32 @rsi_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
