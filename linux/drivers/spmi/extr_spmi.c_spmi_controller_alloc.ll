; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_controller_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_controller_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_controller = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.device*, i32*, i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@spmi_ctrl_type = common dso_local global i32 0, align 4
@spmi_bus_type = common dso_local global i32 0, align 4
@ctrl_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"unable to allocate SPMI controller identifier.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"spmi-%d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"allocated controller 0x%p id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spmi_controller* @spmi_controller_alloc(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.spmi_controller*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.spmi_controller*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.spmi_controller* null, %struct.spmi_controller** %3, align 8
  br label %71

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = add i64 40, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.spmi_controller* @kzalloc(i32 %18, i32 %19)
  store %struct.spmi_controller* %20, %struct.spmi_controller** %6, align 8
  %21 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %22 = icmp ne %struct.spmi_controller* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store %struct.spmi_controller* null, %struct.spmi_controller** %3, align 8
  br label %71

24:                                               ; preds = %15
  %25 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %26 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %25, i32 0, i32 1
  %27 = call i32 @device_initialize(%struct.TYPE_4__* %26)
  %28 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %29 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i32* @spmi_ctrl_type, i32** %30, align 8
  %31 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %32 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32* @spmi_bus_type, i32** %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %36 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.device* %34, %struct.device** %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %42 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %45 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %46 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %45, i64 1
  %47 = call i32 @spmi_controller_set_drvdata(%struct.spmi_controller* %44, %struct.spmi_controller* %46)
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @ida_simple_get(i32* @ctrl_ida, i32 0, i32 0, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %24
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %56 = call i32 @spmi_controller_put(%struct.spmi_controller* %55)
  store %struct.spmi_controller* null, %struct.spmi_controller** %3, align 8
  br label %71

57:                                               ; preds = %24
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %60 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %62 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %61, i32 0, i32 1
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_set_name(%struct.TYPE_4__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %66 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %65, i32 0, i32 1
  %67 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_dbg(%struct.TYPE_4__* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.spmi_controller* %67, i32 %68)
  %70 = load %struct.spmi_controller*, %struct.spmi_controller** %6, align 8
  store %struct.spmi_controller* %70, %struct.spmi_controller** %3, align 8
  br label %71

71:                                               ; preds = %57, %52, %23, %14
  %72 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  ret %struct.spmi_controller* %72
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.spmi_controller* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @spmi_controller_set_drvdata(%struct.spmi_controller*, %struct.spmi_controller*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spmi_controller_put(%struct.spmi_controller*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*, %struct.spmi_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
