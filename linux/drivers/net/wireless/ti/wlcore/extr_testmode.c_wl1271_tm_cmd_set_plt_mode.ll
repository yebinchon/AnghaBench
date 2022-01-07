; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_set_plt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd_set_plt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.nlattr = type { i32 }

@DEBUG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"testmode cmd set plt mode\00", align 1
@WL1271_TM_ATTR_PLT_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.nlattr**)* @wl1271_tm_cmd_set_plt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_tm_cmd_set_plt_mode(%struct.wl1271* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %8 = load i32, i32* @DEBUG_TESTMODE, align 4
  %9 = call i32 @wl1271_debug(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = load i64, i64* @WL1271_TM_ATTR_PLT_MODE, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %20 = load i64, i64* @WL1271_TM_ATTR_PLT_MODE, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = call i32 @nla_get_u32(%struct.nlattr* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %36 [
    i32 129, label %25
    i32 128, label %28
    i32 131, label %28
    i32 130, label %32
  ]

25:                                               ; preds = %18
  %26 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %27 = call i32 @wl1271_plt_stop(%struct.wl1271* %26)
  store i32 %27, i32* %7, align 4
  br label %39

28:                                               ; preds = %18, %18
  %29 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @wl1271_plt_start(%struct.wl1271* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %39

32:                                               ; preds = %18
  %33 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %34 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %35 = call i32 @wl1271_tm_detect_fem(%struct.wl1271* %33, %struct.nlattr** %34)
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %32, %28, %25
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @wl1271_plt_stop(%struct.wl1271*) #1

declare dso_local i32 @wl1271_plt_start(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_tm_detect_fem(%struct.wl1271*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
