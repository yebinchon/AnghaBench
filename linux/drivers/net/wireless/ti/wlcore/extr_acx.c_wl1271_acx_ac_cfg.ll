; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_ac_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_ac_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_ac_cfg = type { i8*, i8*, i8*, i8*, i8*, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"acx ac cfg %d cw_ming %d cw_max %d aifs %d txop %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_AC_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"acx ac cfg failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_ac_cfg(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.wl1271*, align 8
  %9 = alloca %struct.wl12xx_vif*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.acx_ac_cfg*, align 8
  %16 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %8, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @DEBUG_ACX, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @wl1271_debug(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19, i32 %20, i8* %21, i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.acx_ac_cfg* @kzalloc(i32 48, i32 %24)
  store %struct.acx_ac_cfg* %25, %struct.acx_ac_cfg** %15, align 8
  %26 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %27 = icmp ne %struct.acx_ac_cfg* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %16, align 4
  br label %64

31:                                               ; preds = %7
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %36 = getelementptr inbounds %struct.acx_ac_cfg, %struct.acx_ac_cfg* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %39 = getelementptr inbounds %struct.acx_ac_cfg, %struct.acx_ac_cfg* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %42 = getelementptr inbounds %struct.acx_ac_cfg, %struct.acx_ac_cfg* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %46 = getelementptr inbounds %struct.acx_ac_cfg, %struct.acx_ac_cfg* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %49 = getelementptr inbounds %struct.acx_ac_cfg, %struct.acx_ac_cfg* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %53 = getelementptr inbounds %struct.acx_ac_cfg, %struct.acx_ac_cfg* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %55 = load i32, i32* @ACX_AC_CFG, align 4
  %56 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %57 = call i32 @wl1271_cmd_configure(%struct.wl1271* %54, i32 %55, %struct.acx_ac_cfg* %56, i32 48)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %31
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %64

63:                                               ; preds = %31
  br label %64

64:                                               ; preds = %63, %60, %28
  %65 = load %struct.acx_ac_cfg*, %struct.acx_ac_cfg** %15, align 8
  %66 = call i32 @kfree(%struct.acx_ac_cfg* %65)
  %67 = load i32, i32* %16, align 4
  ret i32 %67
}

declare dso_local i32 @wl1271_debug(i32, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local %struct.acx_ac_cfg* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_ac_cfg*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_ac_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
