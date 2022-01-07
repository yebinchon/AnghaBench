; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_sysfs.c_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_sysfs.c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.controller* }
%struct.controller = type { i32 }
%struct.file = type { %struct.ctrl_dbg* }
%struct.ctrl_dbg = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@cpqphp_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.controller*, align 8
  %6 = alloca %struct.ctrl_dbg*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.controller*, %struct.controller** %9, align 8
  store %struct.controller* %10, %struct.controller** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = call i32 @mutex_lock(i32* @cpqphp_mutex)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i32 16, i32 %14)
  %16 = bitcast i8* %15 to %struct.ctrl_dbg*
  store %struct.ctrl_dbg* %16, %struct.ctrl_dbg** %6, align 8
  %17 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %6, align 8
  %18 = icmp ne %struct.ctrl_dbg* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %45

20:                                               ; preds = %2
  %21 = load i32, i32* @MAX_OUTPUT, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  %24 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %6, align 8
  %25 = getelementptr inbounds %struct.ctrl_dbg, %struct.ctrl_dbg* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %6, align 8
  %27 = getelementptr inbounds %struct.ctrl_dbg, %struct.ctrl_dbg* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %6, align 8
  %32 = call i32 @kfree(%struct.ctrl_dbg* %31)
  br label %45

33:                                               ; preds = %20
  %34 = load %struct.controller*, %struct.controller** %5, align 8
  %35 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %6, align 8
  %36 = getelementptr inbounds %struct.ctrl_dbg, %struct.ctrl_dbg* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @MAX_OUTPUT, align 4
  %39 = call i32 @spew_debug_info(%struct.controller* %34, i8* %37, i32 %38)
  %40 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %6, align 8
  %41 = getelementptr inbounds %struct.ctrl_dbg, %struct.ctrl_dbg* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %6, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  store %struct.ctrl_dbg* %42, %struct.ctrl_dbg** %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %33, %30, %19
  %46 = call i32 @mutex_unlock(i32* @cpqphp_mutex)
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ctrl_dbg*) #1

declare dso_local i32 @spew_debug_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
