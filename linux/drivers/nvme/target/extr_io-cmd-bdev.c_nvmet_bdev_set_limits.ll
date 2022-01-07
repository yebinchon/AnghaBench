; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_set_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_set_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.nvme_id_ns = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.queue_limits = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.queue_limits }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvmet_bdev_set_limits(%struct.block_device* %0, %struct.nvme_id_ns* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.nvme_id_ns*, align 8
  %5 = alloca %struct.queue_limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.nvme_id_ns* %1, %struct.nvme_id_ns** %4, align 8
  %8 = load %struct.block_device*, %struct.block_device** %3, align 8
  %9 = call %struct.TYPE_2__* @bdev_get_queue(%struct.block_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.queue_limits* %10, %struct.queue_limits** %5, align 8
  %11 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %12 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %15 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @to0based(i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %21 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, 2
  store i32 %23, i32* %21, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %32 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %34 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, 16
  store i32 %36, i32* %34, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %44 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %46 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %49 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %47, %50
  %52 = call i8* @to0based(i32 %51)
  %53 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %59 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %61 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %64 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %62, %65
  %67 = call i8* @to0based(i32 %66)
  %68 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %4, align 8
  %69 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i8* @to0based(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
