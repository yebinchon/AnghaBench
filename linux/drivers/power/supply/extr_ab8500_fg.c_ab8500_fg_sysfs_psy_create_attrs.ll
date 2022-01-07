; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_sysfs_psy_create_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_sysfs_psy_create_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ab8505_fg_sysfs_psy_attrs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Failed creating sysfs psy attrs for ab8505.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*)* @ab8500_fg_sysfs_psy_create_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_sysfs_psy_create_attrs(%struct.ab8500_fg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ab8500_fg*, align 8
  %4 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %3, align 8
  %5 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %6 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @is_ab8505(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** @ab8505_fg_sysfs_psy_attrs, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %18 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** @ab8505_fg_sysfs_psy_attrs, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i64 @device_create_file(i32* %20, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %34

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32, %1
  store i32 0, i32* %2, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %36 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %44, %34
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %4, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.ab8500_fg*, %struct.ab8500_fg** %3, align 8
  %46 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** @ab8505_fg_sysfs_psy_attrs, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @device_remove_file(i32* %48, i32* %52)
  br label %40

54:                                               ; preds = %40
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %33
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @is_ab8505(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
