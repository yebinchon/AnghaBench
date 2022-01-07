; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_dbgfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_init_dbgfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_ntb_dev = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@dbgfs_topdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Top DebugFS directory absent\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"info:%s\00", align 1
@idt_dbgfs_info_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to create DebugFS node\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"NTB device DebugFS node created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_ntb_dev*)* @idt_init_dbgfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_init_dbgfs(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt_ntb_dev*, align 8
  %4 = alloca [64 x i8], align 16
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %3, align 8
  %5 = load i32, i32* @dbgfs_topdir, align 4
  %6 = call i64 @IS_ERR_OR_NULL(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @dev_info(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @dbgfs_topdir, align 4
  %16 = call i32 @PTR_ERR(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %54

17:                                               ; preds = %1
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %19 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %20 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i8* @pci_name(%struct.TYPE_4__* %22)
  %24 = call i32 @snprintf(i8* %18, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %26 = load i32, i32* @dbgfs_topdir, align 4
  %27 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %28 = call i32 @debugfs_create_file(i8* %25, i32 256, i32 %26, %struct.idt_ntb_dev* %27, i32* @idt_dbgfs_info_ops)
  %29 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %30 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %32 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %17
  %37 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %38 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %44 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %54

47:                                               ; preds = %17
  %48 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %49 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %36, %8
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.TYPE_4__*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.idt_ntb_dev*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
