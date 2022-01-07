; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq_debugfs.c_ptp_qoriq_create_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq_debugfs.c_ptp_qoriq_create_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_qoriq = type { i32, %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"fiper1-loopback\00", align 1
@ptp_qoriq_fiper1_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"fiper2-loopback\00", align 1
@ptp_qoriq_fiper2_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to initialize debugfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptp_qoriq_create_debugfs(%struct.ptp_qoriq* %0) #0 {
  %2 = alloca %struct.ptp_qoriq*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.ptp_qoriq* %0, %struct.ptp_qoriq** %2, align 8
  %4 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %5 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dev_name(i32 %6)
  %8 = call %struct.dentry* @debugfs_create_dir(i32 %7, i32* null)
  store %struct.dentry* %8, %struct.dentry** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call i64 @IS_ERR(%struct.dentry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %38

17:                                               ; preds = %13
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %20 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %19, i32 0, i32 1
  store %struct.dentry* %18, %struct.dentry** %20, align 8
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %23 = call i32 @debugfs_create_file_unsafe(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 384, %struct.dentry* %21, %struct.ptp_qoriq* %22, i32* @ptp_qoriq_fiper1_fops)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %29 = call i32 @debugfs_create_file_unsafe(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %27, %struct.ptp_qoriq* %28, i32* @ptp_qoriq_fiper2_fops)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %33

32:                                               ; preds = %26
  br label %43

33:                                               ; preds = %31, %25
  %34 = load %struct.dentry*, %struct.dentry** %3, align 8
  %35 = call i32 @debugfs_remove_recursive(%struct.dentry* %34)
  %36 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %37 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %36, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %37, align 8
  br label %38

38:                                               ; preds = %33, %16
  %39 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %40 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %32, %12
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @debugfs_create_file_unsafe(i8*, i32, %struct.dentry*, %struct.ptp_qoriq*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
