; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_fplus.c_adfs_fplus_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_fplus.c_adfs_fplus_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { i32, %struct.buffer_head** }
%struct.buffer_head = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adfs_dir*)* @adfs_fplus_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_fplus_sync(%struct.adfs_dir* %0) #0 {
  %2 = alloca %struct.adfs_dir*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.adfs_dir* %0, %struct.adfs_dir** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %7 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load %struct.adfs_dir*, %struct.adfs_dir** %2, align 8
  %15 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %14, i32 0, i32 1
  %16 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %16, i64 %18
  %20 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  store %struct.buffer_head* %20, %struct.buffer_head** %5, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = call i32 @sync_dirty_buffer(%struct.buffer_head* %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %24 = call i64 @buffer_req(%struct.buffer_head* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %28 = call i32 @buffer_uptodate(%struct.buffer_head* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %26, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
