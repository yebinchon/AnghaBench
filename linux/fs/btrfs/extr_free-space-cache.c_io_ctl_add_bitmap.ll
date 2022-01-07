; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_add_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_add_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_io_ctl = type { i64, i64, i64, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_io_ctl*, i8*)* @io_ctl_add_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_add_bitmap(%struct.btrfs_io_ctl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_io_ctl*, align 8
  %5 = alloca i8*, align 8
  store %struct.btrfs_io_ctl* %0, %struct.btrfs_io_ctl** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %7 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOSPC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %13
  %22 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %23 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @io_ctl_set_crc(%struct.btrfs_io_ctl* %22, i64 %26)
  %28 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %21
  %39 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %40 = call i32 @io_ctl_map_page(%struct.btrfs_io_ctl* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %13
  %42 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @copy_page(i64 %44, i8* %45)
  %47 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %48 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %49 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @io_ctl_set_crc(%struct.btrfs_io_ctl* %47, i64 %51)
  %53 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %54 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %57 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %41
  %61 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %62 = call i32 @io_ctl_map_page(%struct.btrfs_io_ctl* %61, i32 0)
  br label %63

63:                                               ; preds = %60, %41
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %35, %10
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @io_ctl_set_crc(%struct.btrfs_io_ctl*, i64) #1

declare dso_local i32 @io_ctl_map_page(%struct.btrfs_io_ctl*, i32) #1

declare dso_local i32 @copy_page(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
