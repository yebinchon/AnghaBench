; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_del_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_del_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32, i32, i32 }

@WID_REMOVE_STA = common dso_local global i32 0, align 4
@WID_BIN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to del station\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_del_station(%struct.wilc_vif* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wid, align 4
  %7 = alloca i32, align 4
  store %struct.wilc_vif* %0, %struct.wilc_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @WID_REMOVE_STA, align 4
  %9 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @WID_BIN, align 4
  %11 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @kzalloc(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @eth_broadcast_addr(i32 %30)
  br label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ether_addr_copy(i32 %34, i32* %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %39 = load i32, i32* @WILC_SET_CFG, align 4
  %40 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %38, i32 %39, %struct.wid* %6, i32 1)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %45 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netdev_err(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %37
  %49 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kfree(i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
