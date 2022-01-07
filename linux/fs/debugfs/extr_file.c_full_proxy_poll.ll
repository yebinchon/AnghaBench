; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_full_proxy_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_full_proxy_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 (%struct.file.0*, %struct.poll_table_struct*)* }
%struct.file.0 = type opaque

@EPOLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @full_proxy_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @full_proxy_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_operations*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.dentry* @F_DENTRY(%struct.file* %9)
  store %struct.dentry* %10, %struct.dentry** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = call i64 @debugfs_file_get(%struct.dentry* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EPOLLHUP, align 4
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call %struct.file_operations* @debugfs_real_fops(%struct.file* %17)
  store %struct.file_operations* %18, %struct.file_operations** %8, align 8
  %19 = load %struct.file_operations*, %struct.file_operations** %8, align 8
  %20 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %19, i32 0, i32 0
  %21 = load i32 (%struct.file.0*, %struct.poll_table_struct*)*, i32 (%struct.file.0*, %struct.poll_table_struct*)** %20, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = bitcast %struct.file* %22 to %struct.file.0*
  %24 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %25 = call i32 %21(%struct.file.0* %23, %struct.poll_table_struct* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = call i32 @debugfs_file_put(%struct.dentry* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.dentry* @F_DENTRY(%struct.file*) #1

declare dso_local i64 @debugfs_file_get(%struct.dentry*) #1

declare dso_local %struct.file_operations* @debugfs_real_fops(%struct.file*) #1

declare dso_local i32 @debugfs_file_put(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
