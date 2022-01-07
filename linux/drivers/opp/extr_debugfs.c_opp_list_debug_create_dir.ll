; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_debugfs.c_opp_list_debug_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_debugfs.c_opp_list_debug_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_device = type { %struct.dentry*, %struct.device* }
%struct.dentry = type { i32 }
%struct.device = type { i32 }
%struct.opp_table = type { %struct.dentry*, i32 }

@rootdir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opp_device*, %struct.opp_table*)* @opp_list_debug_create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opp_list_debug_create_dir(%struct.opp_device* %0, %struct.opp_table* %1) #0 {
  %3 = alloca %struct.opp_device*, align 8
  %4 = alloca %struct.opp_table*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.opp_device* %0, %struct.opp_device** %3, align 8
  store %struct.opp_table* %1, %struct.opp_table** %4, align 8
  %7 = load %struct.opp_device*, %struct.opp_device** %3, align 8
  %8 = getelementptr inbounds %struct.opp_device, %struct.opp_device* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %12 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @opp_set_dev_name(%struct.device* %10, i32 %13)
  %15 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %16 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @rootdir, align 4
  %19 = call %struct.dentry* @debugfs_create_dir(i32 %17, i32 %18)
  store %struct.dentry* %19, %struct.dentry** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = load %struct.opp_device*, %struct.opp_device** %3, align 8
  %22 = getelementptr inbounds %struct.opp_device, %struct.opp_device* %21, i32 0, i32 0
  store %struct.dentry* %20, %struct.dentry** %22, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = load %struct.opp_table*, %struct.opp_table** %4, align 8
  %25 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %24, i32 0, i32 0
  store %struct.dentry* %23, %struct.dentry** %25, align 8
  ret void
}

declare dso_local i32 @opp_set_dev_name(%struct.device*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
