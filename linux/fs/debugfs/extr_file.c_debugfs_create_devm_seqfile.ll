; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_create_devm_seqfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_create_devm_seqfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dentry = type { i32 }
%struct.seq_file = type opaque
%struct.debugfs_devm_entry = type { i32 (%struct.seq_file.0*, i8*)*, %struct.device* }
%struct.seq_file.0 = type opaque

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@debugfs_devm_entry_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_devm_seqfile(%struct.device* %0, i8* %1, %struct.dentry* %2, i32 (%struct.seq_file*, i8*)* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  %10 = alloca %struct.debugfs_devm_entry*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 (%struct.seq_file*, i8*)* %3, i32 (%struct.seq_file*, i8*)** %9, align 8
  %11 = load %struct.dentry*, %struct.dentry** %8, align 8
  %12 = call i64 @IS_ERR(%struct.dentry* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.dentry* @ERR_PTR(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %5, align 8
  br label %41

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.debugfs_devm_entry* @devm_kzalloc(%struct.device* %19, i32 16, i32 %20)
  store %struct.debugfs_devm_entry* %21, %struct.debugfs_devm_entry** %10, align 8
  %22 = load %struct.debugfs_devm_entry*, %struct.debugfs_devm_entry** %10, align 8
  %23 = icmp ne %struct.debugfs_devm_entry* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.dentry* @ERR_PTR(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %5, align 8
  br label %41

28:                                               ; preds = %18
  %29 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %9, align 8
  %30 = bitcast i32 (%struct.seq_file*, i8*)* %29 to i32 (%struct.seq_file.0*, i8*)*
  %31 = load %struct.debugfs_devm_entry*, %struct.debugfs_devm_entry** %10, align 8
  %32 = getelementptr inbounds %struct.debugfs_devm_entry, %struct.debugfs_devm_entry* %31, i32 0, i32 0
  store i32 (%struct.seq_file.0*, i8*)* %30, i32 (%struct.seq_file.0*, i8*)** %32, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.debugfs_devm_entry*, %struct.debugfs_devm_entry** %10, align 8
  %35 = getelementptr inbounds %struct.debugfs_devm_entry, %struct.debugfs_devm_entry* %34, i32 0, i32 1
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @S_IRUGO, align 4
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = load %struct.debugfs_devm_entry*, %struct.debugfs_devm_entry** %10, align 8
  %40 = call %struct.dentry* @debugfs_create_file(i8* %36, i32 %37, %struct.dentry* %38, %struct.debugfs_devm_entry* %39, i32* @debugfs_devm_entry_ops)
  store %struct.dentry* %40, %struct.dentry** %5, align 8
  br label %41

41:                                               ; preds = %28, %24, %14
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %42
}

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.debugfs_devm_entry* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.debugfs_devm_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
