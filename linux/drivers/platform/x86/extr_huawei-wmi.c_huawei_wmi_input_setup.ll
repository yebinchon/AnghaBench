; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_huawei-wmi.c_huawei_wmi_input_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_huawei-wmi.c_huawei_wmi_input_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%struct.huawei_wmi_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Huawei WMI hotkeys\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wmi/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@huawei_wmi_keymap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi_device*)* @huawei_wmi_input_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huawei_wmi_input_setup(%struct.wmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wmi_device*, align 8
  %4 = alloca %struct.huawei_wmi_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.wmi_device* %0, %struct.wmi_device** %3, align 8
  %6 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %7 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %6, i32 0, i32 0
  %8 = call %struct.huawei_wmi_priv* @dev_get_drvdata(i32* %7)
  store %struct.huawei_wmi_priv* %8, %struct.huawei_wmi_priv** %4, align 8
  %9 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %10 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %9, i32 0, i32 0
  %11 = call %struct.TYPE_8__* @devm_input_allocate_device(i32* %10)
  %12 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %13 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %12, i32 0, i32 0
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %13, align 8
  %14 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %15 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %1
  %22 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %23 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %27 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @BUS_HOST, align 4
  %31 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %32 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 8
  %36 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %37 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %36, i32 0, i32 0
  %38 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %39 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32* %37, i32** %42, align 8
  %43 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %44 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* @huawei_wmi_keymap, align 4
  %47 = call i32 @sparse_keymap_setup(%struct.TYPE_8__* %45, i32 %46, i32* null)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %21
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %57

52:                                               ; preds = %21
  %53 = load %struct.huawei_wmi_priv*, %struct.huawei_wmi_priv** %4, align 8
  %54 = getelementptr inbounds %struct.huawei_wmi_priv, %struct.huawei_wmi_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = call i32 @input_register_device(%struct.TYPE_8__* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %50, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.huawei_wmi_priv* @dev_get_drvdata(i32*) #1

declare dso_local %struct.TYPE_8__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @sparse_keymap_setup(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
