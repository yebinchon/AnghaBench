; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwm_export_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwm_export_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pwm_device = type { i32, i32 }
%struct.pwm_export = type { %struct.TYPE_4__, i32, %struct.pwm_device* }
%struct.TYPE_4__ = type { i32, i32, %struct.device*, i32 }

@PWMF_EXPORTED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pwm_export_release = common dso_local global i32 0, align 4
@pwm_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pwm%u\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"EXPORT=pwm%u\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.pwm_device*)* @pwm_export_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_export_child(%struct.device* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_export*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %9 = load i32, i32* @PWMF_EXPORTED, align 4
  %10 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %11 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %10, i32 0, i32 1
  %12 = call i64 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pwm_export* @kzalloc(i32 40, i32 %18)
  store %struct.pwm_export* %19, %struct.pwm_export** %6, align 8
  %20 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %21 = icmp ne %struct.pwm_export* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @PWMF_EXPORTED, align 4
  %24 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %25 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %24, i32 0, i32 1
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %17
  %30 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %31 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %32 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %31, i32 0, i32 2
  store %struct.pwm_device* %30, %struct.pwm_device** %32, align 8
  %33 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %34 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %33, i32 0, i32 1
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load i32, i32* @pwm_export_release, align 4
  %37 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %38 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %42 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store %struct.device* %40, %struct.device** %43, align 8
  %44 = call i32 @MKDEV(i32 0, i32 0)
  %45 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %46 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @pwm_groups, align 4
  %49 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %50 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %53 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %52, i32 0, i32 0
  %54 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %55 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_set_name(%struct.TYPE_4__* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %59 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %58, i32 0, i32 0
  %60 = call i32 @device_register(%struct.TYPE_4__* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %29
  %64 = load i32, i32* @PWMF_EXPORTED, align 4
  %65 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %66 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %65, i32 0, i32 1
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  %68 = load %struct.pwm_export*, %struct.pwm_export** %6, align 8
  %69 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %68, i32 0, i32 0
  %70 = call i32 @put_device(%struct.TYPE_4__* %69)
  store %struct.pwm_export* null, %struct.pwm_export** %6, align 8
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %88

72:                                               ; preds = %29
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %75 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @kasprintf(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %77, i8** %78, align 16
  %79 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* null, i8** %79, align 8
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = load i32, i32* @KOBJ_CHANGE, align 4
  %83 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %84 = call i32 @kobject_uevent_env(i32* %81, i32 %82, i8** %83)
  %85 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %86 = load i8*, i8** %85, align 16
  %87 = call i32 @kfree(i8* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %72, %63, %22, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.pwm_export* @kzalloc(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
