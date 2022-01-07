; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_endio_direct_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_endio_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.btrfs_dio_private* }
%struct.btrfs_dio_private = type { i32, i32, i32, %struct.bio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @btrfs_endio_direct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_endio_direct_write(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.btrfs_dio_private*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  store %struct.btrfs_dio_private* %7, %struct.btrfs_dio_private** %3, align 8
  %8 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %8, i32 0, i32 3
  %10 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %10, %struct.bio** %4, align 8
  %11 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @__endio_write_update_ordered(i32 %13, i32 %16, i32 %19, i32 %25)
  %27 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %28 = call i32 @kfree(%struct.btrfs_dio_private* %27)
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = call i32 @dio_end_io(%struct.bio* %34)
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = call i32 @bio_put(%struct.bio* %36)
  ret void
}

declare dso_local i32 @__endio_write_update_ordered(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_dio_private*) #1

declare dso_local i32 @dio_end_io(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
