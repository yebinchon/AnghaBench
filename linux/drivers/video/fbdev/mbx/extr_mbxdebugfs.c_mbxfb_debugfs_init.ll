; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxdebugfs.c_mbxfb_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxdebugfs.c_mbxfb_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.mbxfb_info* }
%struct.mbxfb_info = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"mbxfb\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sysconf\00", align 1
@sysconf_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@clock_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@display_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"gsctl\00", align 1
@gsctl_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"sdram\00", align 1
@sdram_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@misc_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @mbxfb_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbxfb_debugfs_init(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.mbxfb_info*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = load %struct.mbxfb_info*, %struct.mbxfb_info** %6, align 8
  store %struct.mbxfb_info* %7, %struct.mbxfb_info** %3, align 8
  %8 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.dentry* %8, %struct.dentry** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = load %struct.mbxfb_info*, %struct.mbxfb_info** %3, align 8
  %11 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %10, i32 0, i32 0
  store %struct.dentry* %9, %struct.dentry** %11, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %12, %struct.fb_info* %13, i32* @sysconf_fops)
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %15, %struct.fb_info* %16, i32* @clock_fops)
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 292, %struct.dentry* %18, %struct.fb_info* %19, i32* @display_fops)
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 292, %struct.dentry* %21, %struct.fb_info* %22, i32* @gsctl_fops)
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 292, %struct.dentry* %24, %struct.fb_info* %25, i32* @sdram_fops)
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %29 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 292, %struct.dentry* %27, %struct.fb_info* %28, i32* @misc_fops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.fb_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
