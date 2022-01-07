; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_to_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_key = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.btrfs_key*)* @btrfs_uuid_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_uuid_to_key(i32* %0, i32 %1, %struct.btrfs_key* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_key*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.btrfs_key* %2, %struct.btrfs_key** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %9 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @get_unaligned_le64(i32* %10)
  %12 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %13 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = call i8* @get_unaligned_le64(i32* %15)
  %17 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

declare dso_local i8* @get_unaligned_le64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
