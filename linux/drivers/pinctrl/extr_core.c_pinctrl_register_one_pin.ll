; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_register_one_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_register_one_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pinctrl_pin_desc = type { i32, i32, i64 }
%struct.pin_desc = type { i32, i64, i32, %struct.pinctrl_dev* }

@.str = private unnamed_addr constant [27 x i8] c"pin %d already registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PIN%u\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"registered pin %d (%s) on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_pin_desc*)* @pinctrl_register_one_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinctrl_register_one_pin(%struct.pinctrl_dev* %0, %struct.pinctrl_pin_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_pin_desc*, align 8
  %6 = alloca %struct.pin_desc*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_pin_desc* %1, %struct.pinctrl_pin_desc** %5, align 8
  %7 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %8 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %9 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %7, i32 %10)
  store %struct.pin_desc* %11, %struct.pin_desc** %6, align 8
  %12 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %13 = icmp ne %struct.pin_desc* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %19 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.pin_desc* @kzalloc(i32 32, i32 %25)
  store %struct.pin_desc* %26, %struct.pin_desc** %6, align 8
  %27 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %28 = icmp ne %struct.pin_desc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %91

32:                                               ; preds = %24
  %33 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %34 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %35 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %34, i32 0, i32 3
  store %struct.pinctrl_dev* %33, %struct.pinctrl_dev** %35, align 8
  %36 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %37 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %42 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %45 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %66

46:                                               ; preds = %32
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %49 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @kasprintf(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %53 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %55 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %46
  %59 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %60 = call i32 @kfree(%struct.pin_desc* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %91

63:                                               ; preds = %46
  %64 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %65 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %40
  %67 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %68 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %71 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %72, i32 0, i32 1
  %74 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %75 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %78 = call i32 @radix_tree_insert(i32* %73, i32 %76, %struct.pin_desc* %77)
  %79 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %80 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pin_desc*, %struct.pin_desc** %6, align 8
  %83 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %81, i64 %84, i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %66, %58, %29, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.pin_desc* @kzalloc(i32, i32) #1

declare dso_local i64 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.pin_desc*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.pin_desc*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
