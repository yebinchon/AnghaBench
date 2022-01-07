; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_del_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_del_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32*, i32, i32 }

@WID_DEL_BEACON = common dso_local global i32 0, align 4
@WID_CHAR = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to send delete beacon\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_del_beacon(%struct.wilc_vif* %0) #0 {
  %2 = alloca %struct.wilc_vif*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wid, align 8
  %5 = alloca i32, align 4
  store %struct.wilc_vif* %0, %struct.wilc_vif** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @WID_DEL_BEACON, align 4
  %7 = getelementptr inbounds %struct.wid, %struct.wid* %4, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @WID_CHAR, align 4
  %9 = getelementptr inbounds %struct.wid, %struct.wid* %4, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.wid, %struct.wid* %4, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.wid, %struct.wid* %4, i32 0, i32 1
  store i32* %5, i32** %11, align 8
  %12 = load %struct.wilc_vif*, %struct.wilc_vif** %2, align 8
  %13 = load i32, i32* @WILC_SET_CFG, align 4
  %14 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %12, i32 %13, %struct.wid* %4, i32 1)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.wilc_vif*, %struct.wilc_vif** %2, align 8
  %19 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netdev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
