; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { %struct.backlight_device*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.backlight_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.backlight_properties = type { i64, i32 }

@VPCCMD_R_BL_MAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VPCCMD_R_BL = common dso_local global i32 0, align 4
@VPCCMD_R_BL_POWER = common dso_local global i32 0, align 4
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ideapad\00", align 1
@ideapad_backlight_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not register backlight device\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ideapad_private*)* @ideapad_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ideapad_backlight_init(%struct.ideapad_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ideapad_private*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.backlight_properties, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ideapad_private* %0, %struct.ideapad_private** %3, align 8
  %9 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %10 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VPCCMD_R_BL_MAX, align 4
  %15 = call i64 @read_ec_data(i32 %13, i32 %14, i64* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %84

20:                                               ; preds = %1
  %21 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %22 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VPCCMD_R_BL, align 4
  %27 = call i64 @read_ec_data(i32 %25, i32 %26, i64* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %84

32:                                               ; preds = %20
  %33 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %34 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VPCCMD_R_BL_POWER, align 4
  %39 = call i64 @read_ec_data(i32 %37, i32 %38, i64* %8)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %84

44:                                               ; preds = %32
  %45 = call i32 @memset(%struct.backlight_properties* %5, i32 0, i32 16)
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %49 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %51 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %55 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %53, %struct.ideapad_private* %54, i32* @ideapad_backlight_ops, %struct.backlight_properties* %5)
  store %struct.backlight_device* %55, %struct.backlight_device** %4, align 8
  %56 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %57 = call i64 @IS_ERR(%struct.backlight_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %44
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %62 = call i32 @PTR_ERR(%struct.backlight_device* %61)
  store i32 %62, i32* %2, align 4
  br label %84

63:                                               ; preds = %44
  %64 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %65 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %66 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %65, i32 0, i32 0
  store %struct.backlight_device* %64, %struct.backlight_device** %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %69 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  br label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %80 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %83 = call i32 @backlight_update_status(%struct.backlight_device* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %59, %41, %29, %17
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @read_ec_data(i32, i32, i64*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, i32*, %struct.ideapad_private*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
