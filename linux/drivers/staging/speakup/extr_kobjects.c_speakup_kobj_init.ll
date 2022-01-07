; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_speakup_kobj_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_speakup_kobj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"accessibility\00", align 1
@accessibility_kobj = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"speakup\00", align 1
@speakup_kobj = common dso_local global i32* null, align 8
@main_attr_group = common dso_local global i32 0, align 4
@i18n_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speakup_kobj_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32* @kobject_create_and_add(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %2, i32** @accessibility_kobj, align 8
  %3 = load i32*, i32** @accessibility_kobj, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %38

8:                                                ; preds = %0
  %9 = load i32*, i32** @accessibility_kobj, align 8
  %10 = call i32* @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i32* %10, i32** @speakup_kobj, align 8
  %11 = load i32*, i32** @speakup_kobj, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %35

16:                                               ; preds = %8
  %17 = load i32*, i32** @speakup_kobj, align 8
  %18 = call i32 @sysfs_create_group(i32* %17, i32* @main_attr_group)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %32

22:                                               ; preds = %16
  %23 = load i32*, i32** @speakup_kobj, align 8
  %24 = call i32 @sysfs_create_group(i32* %23, i32* @i18n_attr_group)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  br label %38

29:                                               ; preds = %27
  %30 = load i32*, i32** @speakup_kobj, align 8
  %31 = call i32 @sysfs_remove_group(i32* %30, i32* @main_attr_group)
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32*, i32** @speakup_kobj, align 8
  %34 = call i32 @kobject_put(i32* %33)
  br label %35

35:                                               ; preds = %32, %13
  %36 = load i32*, i32** @accessibility_kobj, align 8
  %37 = call i32 @kobject_put(i32* %36)
  br label %38

38:                                               ; preds = %35, %28, %5
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32* @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
