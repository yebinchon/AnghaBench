; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_discard_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_discard_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { i32, %struct.nvmet_ns* }
%struct.nvmet_ns = type { i32, i32 }
%struct.nvme_dsm_range = type { i32, i32 }
%struct.bio = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NVME_SC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_req*, %struct.nvme_dsm_range*, %struct.bio**)* @nvmet_bdev_discard_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_bdev_discard_range(%struct.nvmet_req* %0, %struct.nvme_dsm_range* %1, %struct.bio** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvmet_req*, align 8
  %6 = alloca %struct.nvme_dsm_range*, align 8
  %7 = alloca %struct.bio**, align 8
  %8 = alloca %struct.nvmet_ns*, align 8
  %9 = alloca i32, align 4
  store %struct.nvmet_req* %0, %struct.nvmet_req** %5, align 8
  store %struct.nvme_dsm_range* %1, %struct.nvme_dsm_range** %6, align 8
  store %struct.bio** %2, %struct.bio*** %7, align 8
  %10 = load %struct.nvmet_req*, %struct.nvmet_req** %5, align 8
  %11 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %10, i32 0, i32 1
  %12 = load %struct.nvmet_ns*, %struct.nvmet_ns** %11, align 8
  store %struct.nvmet_ns* %12, %struct.nvmet_ns** %8, align 8
  %13 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %14 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %6, align 8
  %17 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le64_to_cpu(i32 %18)
  %20 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %21 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 9
  %24 = shl i32 %19, %23
  %25 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %6, align 8
  %26 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = load %struct.nvmet_ns*, %struct.nvmet_ns** %8, align 8
  %30 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 9
  %33 = shl i32 %28, %32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load %struct.bio**, %struct.bio*** %7, align 8
  %36 = call i32 @__blkdev_issue_discard(i32 %15, i32 %24, i32 %33, i32 %34, i32 0, %struct.bio** %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %6, align 8
  %46 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le64_to_cpu(i32 %47)
  %49 = load %struct.nvmet_req*, %struct.nvmet_req** %5, align 8
  %50 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nvmet_req*, %struct.nvmet_req** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @errno_to_nvme_status(%struct.nvmet_req* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %39, %3
  %55 = load i32, i32* @NVME_SC_SUCCESS, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %44
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @__blkdev_issue_discard(i32, i32, i32, i32, i32, %struct.bio**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @errno_to_nvme_status(%struct.nvmet_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
