; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xiaomi-wmi.c_xiaomi_wmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xiaomi-wmi.c_xiaomi_wmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_device = type { i32 }
%struct.xiaomi_wmi = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Xiaomi WMI keys\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wmi/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xiaomi_wmi_probe(%struct.wmi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xiaomi_wmi*, align 8
  store %struct.wmi_device* %0, %struct.wmi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %8 = icmp eq %struct.wmi_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %76

15:                                               ; preds = %9
  %16 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %17 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.xiaomi_wmi* @devm_kzalloc(i32* %17, i32 16, i32 %18)
  store %struct.xiaomi_wmi* %19, %struct.xiaomi_wmi** %6, align 8
  %20 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %21 = icmp eq %struct.xiaomi_wmi* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %15
  %26 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %27 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %26, i32 0, i32 0
  %28 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %29 = call i32 @dev_set_drvdata(i32* %27, %struct.xiaomi_wmi* %28)
  %30 = load %struct.wmi_device*, %struct.wmi_device** %4, align 8
  %31 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %30, i32 0, i32 0
  %32 = call %struct.TYPE_3__* @devm_input_allocate_device(i32* %31)
  %33 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %34 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %33, i32 0, i32 1
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %34, align 8
  %35 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %36 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp eq %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %76

42:                                               ; preds = %25
  %43 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %44 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %46, align 8
  %47 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %48 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %55 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @EV_KEY, align 4
  %57 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %58 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @set_bit(i32 %56, i32 %61)
  %63 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %64 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %67 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @set_bit(i32 %65, i32 %70)
  %72 = load %struct.xiaomi_wmi*, %struct.xiaomi_wmi** %6, align 8
  %73 = getelementptr inbounds %struct.xiaomi_wmi, %struct.xiaomi_wmi* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = call i32 @input_register_device(%struct.TYPE_3__* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %42, %39, %22, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.xiaomi_wmi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.xiaomi_wmi*) #1

declare dso_local %struct.TYPE_3__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
