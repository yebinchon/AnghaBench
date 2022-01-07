; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_wep_key_bss_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_wep_key_bss_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32*, i8*, i32 }
%struct.wilc_wep_key = type { i32, i32, i32 }

@WID_11I_MODE = common dso_local global i32 0, align 4
@WID_CHAR = common dso_local global i8* null, align 8
@WID_AUTH_TYPE = common dso_local global i32 0, align 4
@WID_WEP_KEY_VALUE = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to add wep ap key config packet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_add_wep_key_bss_ap(%struct.wilc_vif* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wilc_vif*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x %struct.wid], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.wilc_wep_key*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @WID_11I_MODE, align 4
  %18 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 0
  %19 = getelementptr inbounds %struct.wid, %struct.wid* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @WID_CHAR, align 8
  %21 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 0
  %22 = getelementptr inbounds %struct.wid, %struct.wid* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 16
  %23 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 0
  %24 = getelementptr inbounds %struct.wid, %struct.wid* %23, i32 0, i32 0
  store i32 1, i32* %24, align 16
  %25 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 0
  %26 = getelementptr inbounds %struct.wid, %struct.wid* %25, i32 0, i32 1
  store i32* %12, i32** %26, align 8
  %27 = load i32, i32* @WID_AUTH_TYPE, align 4
  %28 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 1
  %29 = getelementptr inbounds %struct.wid, %struct.wid* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** @WID_CHAR, align 8
  %31 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 1
  %32 = getelementptr inbounds %struct.wid, %struct.wid* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 16
  %33 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 1
  %34 = getelementptr inbounds %struct.wid, %struct.wid* %33, i32 0, i32 0
  store i32 1, i32* %34, align 16
  %35 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 1
  %36 = getelementptr inbounds %struct.wid, %struct.wid* %35, i32 0, i32 1
  store i32* %13, i32** %36, align 8
  %37 = load i32, i32* @WID_WEP_KEY_VALUE, align 4
  %38 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 2
  %39 = getelementptr inbounds %struct.wid, %struct.wid* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @WID_STR, align 8
  %41 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 2
  %42 = getelementptr inbounds %struct.wid, %struct.wid* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 16
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 12, %44
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 2
  %48 = getelementptr inbounds %struct.wid, %struct.wid* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 16
  %49 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 2
  %50 = getelementptr inbounds %struct.wid, %struct.wid* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 16
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.wilc_wep_key* @kzalloc(i32 %51, i32 %52)
  store %struct.wilc_wep_key* %53, %struct.wilc_wep_key** %16, align 8
  %54 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %16, align 8
  %55 = icmp ne %struct.wilc_wep_key* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %6
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %93

59:                                               ; preds = %6
  %60 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %16, align 8
  %61 = bitcast %struct.wilc_wep_key* %60 to i32*
  %62 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 2
  %63 = getelementptr inbounds %struct.wid, %struct.wid* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %16, align 8
  %66 = getelementptr inbounds %struct.wilc_wep_key, %struct.wilc_wep_key* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %16, align 8
  %69 = getelementptr inbounds %struct.wilc_wep_key, %struct.wilc_wep_key* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %16, align 8
  %71 = getelementptr inbounds %struct.wilc_wep_key, %struct.wilc_wep_key* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @memcpy(i32 %72, i32* %73, i32 %74)
  %76 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %77 = load i32, i32* @WILC_SET_CFG, align 4
  %78 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 0
  %79 = getelementptr inbounds [3 x %struct.wid], [3 x %struct.wid]* %14, i64 0, i64 0
  %80 = call i32 @ARRAY_SIZE(%struct.wid* %79)
  %81 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %76, i32 %77, %struct.wid* %78, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %59
  %85 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %86 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @netdev_err(i32 %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %59
  %90 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %16, align 8
  %91 = call i32 @kfree(%struct.wilc_wep_key* %90)
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %56
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.wilc_wep_key* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.wid*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.wilc_wep_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
