; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_mac_indicate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_mac_indicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i8*, i32 }

@WID_STATUS = common dso_local global i32 0, align 4
@WILC_MAC_STATUS_INIT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wilc_mac_indicate(%struct.wilc* %0) #0 {
  %2 = alloca %struct.wilc*, align 8
  %3 = alloca i8*, align 8
  store %struct.wilc* %0, %struct.wilc** %2, align 8
  %4 = load %struct.wilc*, %struct.wilc** %2, align 8
  %5 = load i32, i32* @WID_STATUS, align 4
  %6 = call i32 @wilc_wlan_cfg_get_val(%struct.wilc* %4, i32 %5, i8** %3, i32 1)
  %7 = load %struct.wilc*, %struct.wilc** %2, align 8
  %8 = getelementptr inbounds %struct.wilc, %struct.wilc* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** @WILC_MAC_STATUS_INIT, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.wilc*, %struct.wilc** %2, align 8
  %15 = getelementptr inbounds %struct.wilc, %struct.wilc* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.wilc*, %struct.wilc** %2, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 1
  %18 = call i32 @complete(i32* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.wilc*, %struct.wilc** %2, align 8
  %22 = getelementptr inbounds %struct.wilc, %struct.wilc* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @wilc_wlan_cfg_get_val(%struct.wilc*, i32, i8**, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
