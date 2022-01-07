; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_sme_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@DEVICE_STATE_BOOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @hostif_sme_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_sme_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ks_wlan_private*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.ks_wlan_private*
  store %struct.ks_wlan_private* %5, %struct.ks_wlan_private** %3, align 8
  %6 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %7 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DEVICE_STATE_BOOT, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %14 = call i64 @cnt_smeqbody(%struct.ks_wlan_private* %13)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %39

17:                                               ; preds = %12
  %18 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %19 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %20 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %24 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hostif_sme_execute(%struct.ks_wlan_private* %18, i32 %28)
  %30 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %31 = call i32 @inc_smeqhead(%struct.ks_wlan_private* %30)
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %33 = call i64 @cnt_smeqbody(%struct.ks_wlan_private* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 1
  %38 = call i32 @tasklet_schedule(i32* %37)
  br label %39

39:                                               ; preds = %11, %16, %35, %17
  ret void
}

declare dso_local i64 @cnt_smeqbody(%struct.ks_wlan_private*) #1

declare dso_local i32 @hostif_sme_execute(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @inc_smeqhead(%struct.ks_wlan_private*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
