; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.gntdev_priv* }
%struct.gntdev_priv = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@use_ptemod = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@gntdev_mmu_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"priv %p\0A\00", align 1
@gntdev_miscdev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @gntdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gntdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.gntdev_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.gntdev_priv* @kzalloc(i32 32, i32 %8)
  store %struct.gntdev_priv* %9, %struct.gntdev_priv** %6, align 8
  %10 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %11 = icmp ne %struct.gntdev_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %17 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %16, i32 0, i32 6
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %20 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %19, i32 0, i32 5
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %23 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %22, i32 0, i32 4
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load i64, i64* @use_ptemod, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %15
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @get_task_mm(i32 %28)
  %30 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %31 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %33 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %38 = call i32 @kfree(%struct.gntdev_priv* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %68

41:                                               ; preds = %27
  %42 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %43 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32* @gntdev_mmu_ops, i32** %44, align 8
  %45 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %46 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %45, i32 0, i32 2
  %47 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %48 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mmu_notifier_register(%struct.TYPE_3__* %46, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %52 = getelementptr inbounds %struct.gntdev_priv, %struct.gntdev_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mmput(i32 %53)
  br label %55

55:                                               ; preds = %41, %15
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %60 = call i32 @kfree(%struct.gntdev_priv* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %55
  %63 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  store %struct.gntdev_priv* %63, %struct.gntdev_priv** %65, align 8
  %66 = load %struct.gntdev_priv*, %struct.gntdev_priv** %6, align 8
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.gntdev_priv* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %58, %36, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.gntdev_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @get_task_mm(i32) #1

declare dso_local i32 @kfree(%struct.gntdev_priv*) #1

declare dso_local i32 @mmu_notifier_register(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mmput(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.gntdev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
