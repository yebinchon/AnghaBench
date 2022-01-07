; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.ks_sdio_card = type { %struct.ks_wlan_private* }
%struct.ks_wlan_private = type { i32, i64 }

@INT_ENABLE_REG = common dso_local global i32 0, align 4
@INT_PENDING_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @ks7010_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks7010_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ks_sdio_card*, align 8
  %5 = alloca %struct.ks_wlan_private*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %7 = call %struct.ks_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %6)
  store %struct.ks_sdio_card* %7, %struct.ks_sdio_card** %4, align 8
  %8 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %4, align 8
  %9 = icmp ne %struct.ks_sdio_card* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %4, align 8
  %13 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %12, i32 0, i32 0
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %13, align 8
  store %struct.ks_wlan_private* %14, %struct.ks_wlan_private** %5, align 8
  %15 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %16 = icmp ne %struct.ks_wlan_private* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %75

18:                                               ; preds = %11
  %19 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %20 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ks_wlan_net_stop(i32 %21)
  %23 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %24 = call i32 @sdio_claim_host(%struct.sdio_func* %23)
  %25 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %26 = load i32, i32* @INT_ENABLE_REG, align 4
  %27 = call i32 @sdio_writeb(%struct.sdio_func* %25, i32 0, i32 %26, i32* %3)
  %28 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %29 = load i32, i32* @INT_PENDING_REG, align 4
  %30 = call i32 @sdio_writeb(%struct.sdio_func* %28, i32 255, i32 %29, i32* %3)
  %31 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %32 = call i32 @sdio_release_host(%struct.sdio_func* %31)
  %33 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %34 = call i32 @send_stop_request(%struct.sdio_func* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %75

38:                                               ; preds = %18
  %39 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %40 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %45 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @flush_workqueue(i64 %46)
  %48 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %49 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @destroy_workqueue(i64 %50)
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %54 = call i32 @hostif_exit(%struct.ks_wlan_private* %53)
  %55 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %56 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @unregister_netdev(i32 %57)
  %59 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %60 = call i32 @trx_device_exit(%struct.ks_wlan_private* %59)
  %61 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %5, align 8
  %62 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @free_netdev(i32 %63)
  %65 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %4, align 8
  %66 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %65, i32 0, i32 0
  store %struct.ks_wlan_private* null, %struct.ks_wlan_private** %66, align 8
  %67 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %68 = call i32 @sdio_claim_host(%struct.sdio_func* %67)
  %69 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %70 = call i32 @sdio_release_irq(%struct.sdio_func* %69)
  %71 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %72 = call i32 @sdio_disable_func(%struct.sdio_func* %71)
  %73 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %74 = call i32 @sdio_release_host(%struct.sdio_func* %73)
  br label %75

75:                                               ; preds = %52, %37, %17
  %76 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %77 = call i32 @sdio_set_drvdata(%struct.sdio_func* %76, i32* null)
  %78 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %4, align 8
  %79 = call i32 @kfree(%struct.ks_sdio_card* %78)
  br label %80

80:                                               ; preds = %75, %10
  ret void
}

declare dso_local %struct.ks_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @ks_wlan_net_stop(i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @send_stop_request(%struct.sdio_func*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @hostif_exit(%struct.ks_wlan_private*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @trx_device_exit(%struct.ks_wlan_private*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, i32*) #1

declare dso_local i32 @kfree(%struct.ks_sdio_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
