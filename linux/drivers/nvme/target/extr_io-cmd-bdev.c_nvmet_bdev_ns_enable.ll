; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_ns_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_ns_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ns = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to open block device %s: (%ld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_bdev_ns_enable(%struct.nvmet_ns* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_ns*, align 8
  %4 = alloca i32, align 4
  store %struct.nvmet_ns* %0, %struct.nvmet_ns** %3, align 8
  %5 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %6 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FMODE_READ, align 4
  %9 = load i32, i32* @FMODE_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.TYPE_5__* @blkdev_get_by_path(i32 %7, i32 %10, i32* null)
  %12 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %13 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %12, i32 0, i32 0
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %13, align 8
  %14 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %15 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i64 @IS_ERR(%struct.TYPE_5__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %21 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @PTR_ERR(%struct.TYPE_5__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ENOTBLK, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %30 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %33 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.TYPE_5__* %34)
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %28, %19
  %38 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %39 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %38, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %39, align 8
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %57

41:                                               ; preds = %1
  %42 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %43 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @i_size_read(i32 %46)
  %48 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %49 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %51 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 @bdev_logical_block_size(%struct.TYPE_5__* %52)
  %54 = call i32 @blksize_bits(i32 %53)
  %55 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %56 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %41, %37
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_5__* @blkdev_get_by_path(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @blksize_bits(i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
