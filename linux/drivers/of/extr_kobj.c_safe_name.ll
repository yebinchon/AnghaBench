; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c_safe_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_kobj.c_safe_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kernfs_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s#%i\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Duplicate name in %s, renamed to \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kobject*, i8*)* @safe_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @safe_name(%struct.kobject* %0, i8* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.kobject*, %struct.kobject** %3, align 8
  %14 = getelementptr inbounds %struct.kobject, %struct.kobject* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.kernfs_node* @sysfs_get_dirent(i32 %15, i8* %16)
  store %struct.kernfs_node* %17, %struct.kernfs_node** %6, align 8
  %18 = icmp ne %struct.kernfs_node* %17, null
  br label %19

19:                                               ; preds = %12, %9
  %20 = phi i1 [ false, %9 ], [ %18, %12 ]
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %23 = call i32 @sysfs_put(%struct.kernfs_node* %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @kfree(i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = call i8* @kasprintf(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %34)
  store i8* %35, i8** %5, align 8
  br label %9

36:                                               ; preds = %19
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kstrdup(i8* %41, i32 %42)
  store i8* %43, i8** %5, align 8
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.kobject*, %struct.kobject** %3, align 8
  %46 = call i32 @kobject_name(%struct.kobject* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i8*, i8** %5, align 8
  ret i8* %50
}

declare dso_local %struct.kernfs_node* @sysfs_get_dirent(i32, i8*) #1

declare dso_local i32 @sysfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i8*) #1

declare dso_local i32 @kobject_name(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
