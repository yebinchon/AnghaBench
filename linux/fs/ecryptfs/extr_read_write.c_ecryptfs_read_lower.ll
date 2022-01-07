; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_read_write.c_ecryptfs_read_lower.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_read_write.c_ecryptfs_read_lower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { %struct.file* }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_read_lower(i8* %0, i32 %1, i64 %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.file*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %9, align 8
  %12 = call %struct.TYPE_2__* @ecryptfs_inode_to_private(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %10, align 8
  %15 = load %struct.file*, %struct.file** %10, align 8
  %16 = icmp ne %struct.file* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %4
  %21 = load %struct.file*, %struct.file** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @kernel_read(%struct.file* %21, i8* %22, i64 %23, i32* %7)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local %struct.TYPE_2__* @ecryptfs_inode_to_private(%struct.inode*) #1

declare dso_local i32 @kernel_read(%struct.file*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
