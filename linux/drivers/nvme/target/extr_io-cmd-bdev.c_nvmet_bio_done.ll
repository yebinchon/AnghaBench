; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bio_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bio_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.nvmet_req* }
%struct.nvmet_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bio }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @nvmet_bio_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_bio_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.nvmet_req*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.nvmet_req*, %struct.nvmet_req** %5, align 8
  store %struct.nvmet_req* %6, %struct.nvmet_req** %3, align 8
  %7 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %8 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @blk_to_nvme_status(%struct.nvmet_req* %8, i32 %11)
  %13 = call i32 @nvmet_req_complete(%struct.nvmet_req* %7, i32 %12)
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = load %struct.nvmet_req*, %struct.nvmet_req** %3, align 8
  %16 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = icmp ne %struct.bio* %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = call i32 @bio_put(%struct.bio* %20)
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i32) #1

declare dso_local i32 @blk_to_nvme_status(%struct.nvmet_req*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
