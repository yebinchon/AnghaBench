; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_init.c_wl1251_hw_init_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }

@DEFAULT_SLOT_TIME = common dso_local global i32 0, align 4
@RTS_THRESHOLD_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_hw_init_phy_config(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %5 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %6 = call i32 @wl1251_acx_pd_threshold(%struct.wl1251* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %13 = load i32, i32* @DEFAULT_SLOT_TIME, align 4
  %14 = call i32 @wl1251_acx_slot(%struct.wl1251* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %11
  %20 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %21 = call i32 @wl1251_acx_group_address_tbl(%struct.wl1251* %20, i32 1, i32* null, i32 0)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %19
  %27 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %28 = call i32 @wl1251_acx_service_period_timeout(%struct.wl1251* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %42

33:                                               ; preds = %26
  %34 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %35 = load i32, i32* @RTS_THRESHOLD_DEF, align 4
  %36 = call i32 @wl1251_acx_rts_threshold(%struct.wl1251* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %31, %24, %17, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @wl1251_acx_pd_threshold(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_slot(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_acx_group_address_tbl(%struct.wl1251*, i32, i32*, i32) #1

declare dso_local i32 @wl1251_acx_service_period_timeout(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_rts_threshold(%struct.wl1251*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
