; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_check_generation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_check_generation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_io_ctl = type { i32, i32, i32*, i32, i64 }

@.str = private unnamed_addr constant [58 x i8] c"space cache generation (%llu) does not match inode (%llu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_io_ctl*, i64)* @io_ctl_check_generation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_check_generation(%struct.btrfs_io_ctl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_io_ctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.btrfs_io_ctl* %0, %struct.btrfs_io_ctl** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 %16
  store i32* %20, i32** %18, align 8
  %21 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = add i64 8, %25
  %27 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  br label %44

33:                                               ; preds = %2
  %34 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32* %37, i32** %35, align 8
  %38 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 16
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  br label %44

44:                                               ; preds = %33, %11
  %45 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le64_to_cpu(i32 %49)
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %55 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @btrfs_err_rl(i32 %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %59)
  %61 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %62 = call i32 @io_ctl_unmap_page(%struct.btrfs_io_ctl* %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %70

65:                                               ; preds = %44
  %66 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %4, align 8
  %67 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32* %69, i32** %67, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %53
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @btrfs_err_rl(i32, i8*, i32, i64) #1

declare dso_local i32 @io_ctl_unmap_page(%struct.btrfs_io_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
