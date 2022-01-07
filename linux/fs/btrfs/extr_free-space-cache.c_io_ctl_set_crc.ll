; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_set_crc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_set_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_io_ctl = type { i32, i32*, i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_io_ctl*, i32)* @io_ctl_set_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_ctl_set_crc(%struct.btrfs_io_ctl* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_io_ctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_io_ctl* %0, %struct.btrfs_io_ctl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 -1, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %3, align 8
  %14 = call i32 @io_ctl_unmap_page(%struct.btrfs_io_ctl* %13)
  br label %55

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %3, align 8
  %28 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = call i64 @btrfs_crc32c(i64 %26, i64 %32, i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = bitcast i64* %6 to i32*
  %40 = call i32 @btrfs_crc32c_final(i64 %38, i32* %39)
  %41 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %3, align 8
  %42 = call i32 @io_ctl_unmap_page(%struct.btrfs_io_ctl* %41)
  %43 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64* @page_address(i32 %47)
  store i64* %48, i64** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i64*, i64** %5, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64* %52, i64** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64*, i64** %5, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %25, %12
  ret void
}

declare dso_local i32 @io_ctl_unmap_page(%struct.btrfs_io_ctl*) #1

declare dso_local i64 @btrfs_crc32c(i64, i64, i64) #1

declare dso_local i32 @btrfs_crc32c_final(i64, i32*) #1

declare dso_local i64* @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
