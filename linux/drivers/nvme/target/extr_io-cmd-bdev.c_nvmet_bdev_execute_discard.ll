; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_execute_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_execute_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_dsm_range = type { i32 }
%struct.bio = type { i32, i32, %struct.nvmet_req* }

@nvmet_bio_done = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_bdev_execute_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_bdev_execute_discard(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca %struct.nvme_dsm_range, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  store %struct.bio* null, %struct.bio** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %10 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = icmp sle i32 %8, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %7
  %18 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i64 @nvmet_copy_from_sgl(%struct.nvmet_req* %18, i32 %22, %struct.nvme_dsm_range* %3, i32 4)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %29 = call i64 @nvmet_bdev_discard_range(%struct.nvmet_req* %28, %struct.nvme_dsm_range* %3, %struct.bio** %4)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %37

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %7

37:                                               ; preds = %32, %26, %7
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = icmp ne %struct.bio* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 2
  store %struct.nvmet_req* %41, %struct.nvmet_req** %43, align 8
  %44 = load i32, i32* @nvmet_bio_done, align 4
  %45 = load %struct.bio*, %struct.bio** %4, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* @BLK_STS_IOERR, align 4
  %51 = load %struct.bio*, %struct.bio** %4, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = call i32 @bio_endio(%struct.bio* %53)
  br label %58

55:                                               ; preds = %40
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = call i32 @submit_bio(%struct.bio* %56)
  br label %58

58:                                               ; preds = %55, %49
  br label %63

59:                                               ; preds = %37
  %60 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @nvmet_req_complete(%struct.nvmet_req* %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %58
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @nvmet_copy_from_sgl(%struct.nvmet_req*, i32, %struct.nvme_dsm_range*, i32) #1

declare dso_local i64 @nvmet_bdev_discard_range(%struct.nvmet_req*, %struct.nvme_dsm_range*, %struct.bio**) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
