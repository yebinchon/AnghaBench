; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_ssusb_dev_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_ssusb_dev_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { i32, %struct.mtu3* }
%struct.mtu3 = type { i32, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@mtu3_ippc_regs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"reg-ippc\00", align 1
@mtu3_dev_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"reg-dev\00", align 1
@mtu3_csr_regs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"reg-csr\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"link-state\00", align 1
@mtu3_link_state_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"ep-used\00", align 1
@mtu3_ep_used_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssusb_dev_debugfs_init(%struct.ssusb_mtk* %0) #0 {
  %2 = alloca %struct.ssusb_mtk*, align 8
  %3 = alloca %struct.mtu3*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %2, align 8
  %5 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %6 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %5, i32 0, i32 1
  %7 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  store %struct.mtu3* %7, %struct.mtu3** %3, align 8
  %8 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %9 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  store %struct.dentry* %11, %struct.dentry** %4, align 8
  %12 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %13 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %14 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @mtu3_ippc_regs, align 4
  %17 = load i32, i32* @mtu3_ippc_regs, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call i32 @mtu3_debugfs_regset(%struct.mtu3* %12, i32 %15, i32 %16, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %19)
  %21 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %22 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %23 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @mtu3_dev_regs, align 4
  %26 = load i32, i32* @mtu3_dev_regs, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = call i32 @mtu3_debugfs_regset(%struct.mtu3* %21, i32 %24, i32 %25, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %28)
  %30 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %31 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %32 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @mtu3_csr_regs, align 4
  %35 = load i32, i32* @mtu3_csr_regs, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = call i32 @mtu3_debugfs_regset(%struct.mtu3* %30, i32 %33, i32 %34, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.dentry* %37)
  %39 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %40 = call i32 @mtu3_debugfs_create_ep_dirs(%struct.mtu3* %39)
  %41 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %42 = call i32 @mtu3_debugfs_create_prb_files(%struct.mtu3* %41)
  %43 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %44 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %47 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 292, i32 %45, %struct.mtu3* %46, i32* @mtu3_link_state_fops)
  %48 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %2, align 8
  %49 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %52 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 292, i32 %50, %struct.mtu3* %51, i32* @mtu3_ep_used_fops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @mtu3_debugfs_regset(%struct.mtu3*, i32, i32, i32, i8*, %struct.dentry*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mtu3_debugfs_create_ep_dirs(%struct.mtu3*) #1

declare dso_local i32 @mtu3_debugfs_create_prb_files(%struct.mtu3*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.mtu3*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
