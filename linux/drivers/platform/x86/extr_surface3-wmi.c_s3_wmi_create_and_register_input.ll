; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3-wmi.c_s3_wmi_create_and_register_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_surface3-wmi.c_s3_wmi_create_and_register_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.input_dev* }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.platform_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Lid Switch\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"button/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@SW_LID = common dso_local global i32 0, align 4
@s3_wmi = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3_wmi_create_and_register_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3_wmi_create_and_register_input(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.input_dev* @devm_input_allocate_device(i32* %7)
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %10 = icmp ne %struct.input_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @BUS_HOST, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 5, i32* %25, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = load i32, i32* @EV_SW, align 4
  %28 = load i32, i32* @SW_LID, align 4
  %29 = call i32 @input_set_capability(%struct.input_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %31 = call i32 @input_register_device(%struct.input_dev* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %37

35:                                               ; preds = %14
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  store %struct.input_dev* %36, %struct.input_dev** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s3_wmi, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %41

37:                                               ; preds = %34
  %38 = load %struct.input_dev*, %struct.input_dev** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s3_wmi, i32 0, i32 0), align 8
  %39 = call i32 @input_free_device(%struct.input_dev* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %35, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
