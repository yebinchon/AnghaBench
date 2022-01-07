; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_beacon_filter_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_beacon_filter_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_beacon_filter_ie_table = type { i32, i32* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"acx beacon filter table\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BEACON_FILTER_IE_ID_CHANNEL_SWITCH_ANN = common dso_local global i32 0, align 4
@BEACON_RULE_PASS_ON_APPEARANCE = common dso_local global i32 0, align 4
@ACX_BEACON_FILTER_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to set beacon filter table: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_beacon_filter_table(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.acx_beacon_filter_ie_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @DEBUG_ACX, align 4
  %8 = call i32 @wl1251_debug(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acx_beacon_filter_ie_table* @kzalloc(i32 16, i32 %9)
  store %struct.acx_beacon_filter_ie_table* %10, %struct.acx_beacon_filter_ie_table** %4, align 8
  %11 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %4, align 8
  %12 = icmp ne %struct.acx_beacon_filter_ie_table* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %4, align 8
  %18 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @BEACON_FILTER_IE_ID_CHANNEL_SWITCH_ANN, align 4
  %20 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %4, align 8
  %21 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %19, i32* %26, align 4
  %27 = load i32, i32* @BEACON_RULE_PASS_ON_APPEARANCE, align 4
  %28 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %4, align 8
  %29 = getelementptr inbounds %struct.acx_beacon_filter_ie_table, %struct.acx_beacon_filter_ie_table* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %27, i32* %34, align 4
  %35 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %36 = load i32, i32* @ACX_BEACON_FILTER_TABLE, align 4
  %37 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %4, align 8
  %38 = call i32 @wl1251_cmd_configure(%struct.wl1251* %35, i32 %36, %struct.acx_beacon_filter_ie_table* %37, i32 16)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %16
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @wl1251_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %45

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %41
  %46 = load %struct.acx_beacon_filter_ie_table*, %struct.acx_beacon_filter_ie_table** %4, align 8
  %47 = call i32 @kfree(%struct.acx_beacon_filter_ie_table* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_beacon_filter_ie_table* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_beacon_filter_ie_table*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_beacon_filter_ie_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
