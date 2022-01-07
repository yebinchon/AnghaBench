; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_debugfs.c_sdw_slave_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_debugfs.c_sdw_slave_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave = type { %struct.dentry*, i32, %struct.TYPE_2__* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { %struct.dentry* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@sdw_slave_reg_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdw_slave_debugfs_init(%struct.sdw_slave* %0) #0 {
  %2 = alloca %struct.sdw_slave*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [32 x i8], align 16
  store %struct.sdw_slave* %0, %struct.sdw_slave** %2, align 8
  %6 = load %struct.sdw_slave*, %struct.sdw_slave** %2, align 8
  %7 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %12 = load %struct.sdw_slave*, %struct.sdw_slave** %2, align 8
  %13 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %12, i32 0, i32 1
  %14 = call i8* @dev_name(i32* %13)
  %15 = call i32 @snprintf(i8* %11, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call %struct.dentry* @debugfs_create_dir(i8* %16, %struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %4, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = load %struct.sdw_slave*, %struct.sdw_slave** %2, align 8
  %21 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %19, %struct.sdw_slave* %20, i32* @sdw_slave_reg_fops)
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = load %struct.sdw_slave*, %struct.sdw_slave** %2, align 8
  %24 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %23, i32 0, i32 0
  store %struct.dentry* %22, %struct.dentry** %24, align 8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.sdw_slave*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
