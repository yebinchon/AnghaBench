; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_execute_dsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-bdev.c_nvmet_bdev_execute_dsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*)* @nvmet_bdev_execute_dsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_bdev_execute_dsm(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %3 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %4 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le32_to_cpu(i32 %8)
  switch i32 %9, label %14 [
    i32 130, label %10
    i32 129, label %13
    i32 128, label %13
  ]

10:                                               ; preds = %1
  %11 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %12 = call i32 @nvmet_bdev_execute_discard(%struct.nvmet_req* %11)
  br label %17

13:                                               ; preds = %1, %1
  br label %14

14:                                               ; preds = %1, %13
  %15 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %16 = call i32 @nvmet_req_complete(%struct.nvmet_req* %15, i32 0)
  br label %17

17:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nvmet_bdev_execute_discard(%struct.nvmet_req*) #1

declare dso_local i32 @nvmet_req_complete(%struct.nvmet_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
