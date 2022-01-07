; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_check_crc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_check_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_io_ctl = type { i32, i32, i64, i32*, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"csum mismatch on free space cache\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_io_ctl*, i32)* @io_ctl_check_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_check_crc(%struct.btrfs_io_ctl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_io_ctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_io_ctl* %0, %struct.btrfs_io_ctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 -1, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %16 = call i32 @io_ctl_map_page(%struct.btrfs_io_ctl* %15, i32 0)
  store i32 0, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64* @page_address(i32 %32)
  store i64* %33, i64** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64*, i64** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64* %37, i64** %6, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %41 = call i32 @io_ctl_map_page(%struct.btrfs_io_ctl* %40, i32 0)
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = sub nsw i64 %49, %51
  %53 = call i64 @btrfs_crc32c(i64 %42, i64 %48, i64 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = bitcast i64* %8 to i32*
  %56 = call i32 @btrfs_crc32c_final(i64 %54, i32* %55)
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %27
  %61 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %62 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @btrfs_err_rl(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %66 = call i32 @io_ctl_unmap_page(%struct.btrfs_io_ctl* %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %60, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @io_ctl_map_page(%struct.btrfs_io_ctl*, i32) #1

declare dso_local i64* @page_address(i32) #1

declare dso_local i64 @btrfs_crc32c(i64, i64, i64) #1

declare dso_local i32 @btrfs_crc32c_final(i64, i32*) #1

declare dso_local i32 @btrfs_err_rl(i32, i8*) #1

declare dso_local i32 @io_ctl_unmap_page(%struct.btrfs_io_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
