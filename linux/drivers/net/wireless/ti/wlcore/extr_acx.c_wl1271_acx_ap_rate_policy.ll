; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_ap_rate_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_ap_rate_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.conf_tx_rate_class = type { i32, i32, i32, i32 }
%struct.acx_rate_policy = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"acx ap rate policy %d rates 0x%x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RATE_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Setting of ap rate policy failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_ap_rate_policy(%struct.wl1271* %0, %struct.conf_tx_rate_class* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.conf_tx_rate_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acx_rate_policy*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.conf_tx_rate_class* %1, %struct.conf_tx_rate_class** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.conf_tx_rate_class*, %struct.conf_tx_rate_class** %5, align 8
  %12 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.acx_rate_policy* @kzalloc(i32 32, i32 %15)
  store %struct.acx_rate_policy* %16, %struct.acx_rate_policy** %7, align 8
  %17 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %7, align 8
  %18 = icmp ne %struct.acx_rate_policy* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %62

22:                                               ; preds = %3
  %23 = load %struct.conf_tx_rate_class*, %struct.conf_tx_rate_class** %5, align 8
  %24 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %7, align 8
  %28 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i8* %26, i8** %29, align 8
  %30 = load %struct.conf_tx_rate_class*, %struct.conf_tx_rate_class** %5, align 8
  %31 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %7, align 8
  %34 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.conf_tx_rate_class*, %struct.conf_tx_rate_class** %5, align 8
  %37 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %7, align 8
  %40 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.conf_tx_rate_class*, %struct.conf_tx_rate_class** %5, align 8
  %43 = getelementptr inbounds %struct.conf_tx_rate_class, %struct.conf_tx_rate_class* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %7, align 8
  %46 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %7, align 8
  %51 = getelementptr inbounds %struct.acx_rate_policy, %struct.acx_rate_policy* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %53 = load i32, i32* @ACX_RATE_POLICY, align 4
  %54 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %7, align 8
  %55 = call i32 @wl1271_cmd_configure(%struct.wl1271* %52, i32 %53, %struct.acx_rate_policy* %54, i32 32)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %22
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @wl1271_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %62

61:                                               ; preds = %22
  br label %62

62:                                               ; preds = %61, %58, %19
  %63 = load %struct.acx_rate_policy*, %struct.acx_rate_policy** %7, align 8
  %64 = call i32 @kfree(%struct.acx_rate_policy* %63)
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local %struct.acx_rate_policy* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_rate_policy*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_rate_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
