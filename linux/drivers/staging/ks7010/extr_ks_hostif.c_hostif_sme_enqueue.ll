; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@SME_EVENT_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"sme queue buffer overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostif_sme_enqueue(%struct.ks_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %6 = call i32 @cnt_smeqbody(%struct.ks_wlan_private* %5)
  %7 = load i32, i32* @SME_EVENT_BUFF_SIZE, align 4
  %8 = sub nsw i32 %7, 1
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %13 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %17 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32 %11, i32* %20, align 4
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %22 = call i32 @inc_smeqtail(%struct.ks_wlan_private* %21)
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %25 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netdev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %10
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 0
  %31 = call i32 @tasklet_schedule(i32* %30)
  ret void
}

declare dso_local i32 @cnt_smeqbody(%struct.ks_wlan_private*) #1

declare dso_local i32 @inc_smeqtail(%struct.ks_wlan_private*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
