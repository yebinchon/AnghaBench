; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_debugfs.c_wl1271_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_debugfs.c_wl1271_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_debugfs_init(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %5 = load i32, i32* @KBUILD_MODNAME, align 4
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dentry* @debugfs_create_dir(i32 %5, i32 %12)
  store %struct.dentry* %13, %struct.dentry** %4, align 8
  %14 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %1
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = call i32 @wl1271_debugfs_add_files(%struct.wl1271* %36, %struct.dentry* %37)
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = call i32 @wlcore_debugfs_init(%struct.wl1271* %39, %struct.dentry* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %46

45:                                               ; preds = %31
  br label %52

46:                                               ; preds = %44
  %47 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %48 = call i32 @wl1271_debugfs_exit(%struct.wl1271* %47)
  br label %49

49:                                               ; preds = %46, %28
  %50 = load %struct.dentry*, %struct.dentry** %4, align 8
  %51 = call i32 @debugfs_remove_recursive(%struct.dentry* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debugfs_add_files(%struct.wl1271*, %struct.dentry*) #1

declare dso_local i32 @wlcore_debugfs_init(%struct.wl1271*, %struct.dentry*) #1

declare dso_local i32 @wl1271_debugfs_exit(%struct.wl1271*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
