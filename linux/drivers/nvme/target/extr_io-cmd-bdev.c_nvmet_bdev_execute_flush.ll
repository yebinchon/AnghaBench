; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_execute_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_execute_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.bio }
%struct.bio = type { i32, i32, %struct.nvmet_req* }

@nvmet_bio_done = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_bdev_execute_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_bdev_execute_flush(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %4 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.bio* %6, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %9 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %12 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @bio_init(%struct.bio* %7, i32 %10, i32 %14)
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %18 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bio_set_dev(%struct.bio* %16, i32 %21)
  %23 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 2
  store %struct.nvmet_req* %23, %struct.nvmet_req** %25, align 8
  %26 = load i32, i32* @nvmet_bio_done, align 4
  %27 = load %struct.bio*, %struct.bio** %3, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @REQ_OP_WRITE, align 4
  %30 = load i32, i32* @REQ_PREFLUSH, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = call i32 @submit_bio(%struct.bio* %34)
  ret void
}

declare dso_local i32 @bio_init(%struct.bio*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
