; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_execute_write_zeroes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_execute_write_zeroes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.nvme_write_zeroes_cmd }
%struct.nvme_write_zeroes_cmd = type { i32, i32 }
%struct.bio = type { i32, %struct.nvmet_req* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nvmet_bio_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_bdev_execute_write_zeroes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_bdev_execute_write_zeroes(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca %struct.nvme_write_zeroes_cmd*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %8 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %9 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.nvme_write_zeroes_cmd* %11, %struct.nvme_write_zeroes_cmd** %3, align 8
  store %struct.bio* null, %struct.bio** %4, align 8
  %12 = load %struct.nvme_write_zeroes_cmd*, %struct.nvme_write_zeroes_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_write_zeroes_cmd, %struct.nvme_write_zeroes_cmd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le64_to_cpu(i32 %14)
  %16 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %17 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 9
  %22 = shl i32 %15, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.nvme_write_zeroes_cmd*, %struct.nvme_write_zeroes_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.nvme_write_zeroes_cmd, %struct.nvme_write_zeroes_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 %27, 1
  %29 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %30 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 9
  %35 = shl i32 %28, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %37 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @__blkdev_issue_zeroout(i32 %40, i32 %41, i32 %42, i32 %43, %struct.bio** %4, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.bio*, %struct.bio** %4, align 8
  %46 = icmp ne %struct.bio* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %1
  %48 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 1
  store %struct.nvmet_req* %48, %struct.nvmet_req** %50, align 8
  %51 = load i32, i32* @nvmet_bio_done, align 4
  %52 = load %struct.bio*, %struct.bio** %4, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = call i32 @submit_bio(%struct.bio* %54)
  br label %62

56:                                               ; preds = %1
  %57 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %58 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @errno_to_nvme_status(%struct.nvmet_req* %58, i32 %59)
  %61 = call i32 @nvmet_req_complete(%struct.nvmet_req* %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %47
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @__blkdev_issue_zeroout(i32, i32, i32, i32, %struct.bio**, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i32) #1

declare dso_local i32 @errno_to_nvme_status(%struct.nvmet_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
