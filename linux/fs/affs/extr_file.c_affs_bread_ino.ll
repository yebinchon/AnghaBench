; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_bread_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_bread_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.inode = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i32, i32)* @affs_bread_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @affs_bread_ino(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @affs_get_block(%struct.inode* %12, i32 %13, %struct.buffer_head* %9, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.buffer_head* @affs_bread(i32 %21, i32 %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %8, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %34, %struct.buffer_head** %4, align 8
  br label %41

35:                                               ; preds = %18
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %3
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.buffer_head* @ERR_PTR(i32 %39)
  store %struct.buffer_head* %40, %struct.buffer_head** %4, align 8
  br label %41

41:                                               ; preds = %38, %27
  %42 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %42
}

declare dso_local i32 @affs_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local %struct.buffer_head* @affs_bread(i32, i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
