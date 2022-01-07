; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_debugfs_create_prb_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_debugfs_create_prb_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugfs_reg32 = type { i32 }
%struct.mtu3 = type { i32, %struct.ssusb_mtk* }
%struct.ssusb_mtk = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@mtu3_prb_regs = common dso_local global %struct.debugfs_reg32* null, align 8
@mtu3_probe_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3*)* @mtu3_debugfs_create_prb_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtu3_debugfs_create_prb_files(%struct.mtu3* %0) #0 {
  %2 = alloca %struct.mtu3*, align 8
  %3 = alloca %struct.ssusb_mtk*, align 8
  %4 = alloca %struct.debugfs_reg32*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %2, align 8
  %7 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %8 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %7, i32 0, i32 1
  %9 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %8, align 8
  store %struct.ssusb_mtk* %9, %struct.ssusb_mtk** %3, align 8
  %10 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %11 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  store %struct.dentry* %13, %struct.dentry** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** @mtu3_prb_regs, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.debugfs_reg32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** @mtu3_prb_regs, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %20, i64 %22
  store %struct.debugfs_reg32* %23, %struct.debugfs_reg32** %4, align 8
  %24 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %4, align 8
  %25 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %29 = call i32 @debugfs_create_file(i32 %26, i32 420, %struct.dentry* %27, %struct.mtu3* %28, i32* @mtu3_probe_fops)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %35 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %36 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** @mtu3_prb_regs, align 8
  %39 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** @mtu3_prb_regs, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.debugfs_reg32* %39)
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i32 @mtu3_debugfs_regset(%struct.mtu3* %34, i32 %37, %struct.debugfs_reg32* %38, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %41)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.debugfs_reg32*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, %struct.dentry*, %struct.mtu3*, i32*) #1

declare dso_local i32 @mtu3_debugfs_regset(%struct.mtu3*, i32, %struct.debugfs_reg32*, i32, i8*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
