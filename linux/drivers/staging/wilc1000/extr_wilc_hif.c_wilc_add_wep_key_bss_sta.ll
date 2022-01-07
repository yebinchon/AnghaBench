; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_wep_key_bss_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_wep_key_bss_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i8**, i8*, i32, i32 }
%struct.wilc_wep_key = type { i32, i8*, i8* }

@WID_ADD_WEP_KEY = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to add wep key config packet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_add_wep_key_bss_sta(%struct.wilc_vif* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wid, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wilc_wep_key*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @WID_ADD_WEP_KEY, align 4
  %14 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @WID_STR, align 4
  %16 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr i8, i8* %17, i64 24
  %19 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.wilc_wep_key* @kzalloc(i8* %21, i32 %22)
  store %struct.wilc_wep_key* %23, %struct.wilc_wep_key** %12, align 8
  %24 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %12, align 8
  %25 = icmp ne %struct.wilc_wep_key* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %59

29:                                               ; preds = %4
  %30 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %12, align 8
  %31 = bitcast %struct.wilc_wep_key* %30 to i8**
  %32 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 0
  store i8** %31, i8*** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %12, align 8
  %35 = getelementptr inbounds %struct.wilc_wep_key, %struct.wilc_wep_key* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %12, align 8
  %38 = getelementptr inbounds %struct.wilc_wep_key, %struct.wilc_wep_key* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %12, align 8
  %40 = getelementptr inbounds %struct.wilc_wep_key, %struct.wilc_wep_key* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @memcpy(i32 %41, i8** %42, i8* %43)
  %45 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %46 = load i32, i32* @WILC_SET_CFG, align 4
  %47 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %45, i32 %46, %struct.wid* %10, i32 1)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %29
  %51 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %52 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netdev_err(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %29
  %56 = load %struct.wilc_wep_key*, %struct.wilc_wep_key** %12, align 8
  %57 = call i32 @kfree(%struct.wilc_wep_key* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %26
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.wilc_wep_key* @kzalloc(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.wilc_wep_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
