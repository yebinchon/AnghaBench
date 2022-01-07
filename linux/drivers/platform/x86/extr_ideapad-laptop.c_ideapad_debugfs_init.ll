; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ideapad\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@debugfs_cfg_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@debugfs_status_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ideapad_private*)* @ideapad_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ideapad_debugfs_init(%struct.ideapad_private* %0) #0 {
  %2 = alloca %struct.ideapad_private*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.ideapad_private* %0, %struct.ideapad_private** %2, align 8
  %4 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.dentry* %4, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %7 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %6, i32 0, i32 0
  store %struct.dentry* %5, %struct.dentry** %7, align 8
  %8 = load i32, i32* @S_IRUGO, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %11 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %8, %struct.dentry* %9, %struct.ideapad_private* %10, i32* @debugfs_cfg_fops)
  %12 = load i32, i32* @S_IRUGO, align 4
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %15 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %12, %struct.dentry* %13, %struct.ideapad_private* %14, i32* @debugfs_status_fops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.ideapad_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
