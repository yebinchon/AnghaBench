; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_write_protect_flush_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_admin-cmd.c_nvmet_write_protect_flush_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"write protect flush failed nsid: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvmet_req*)* @nvmet_write_protect_flush_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvmet_write_protect_flush_sync(%struct.nvmet_req* %0) #0 {
  %2 = alloca %struct.nvmet_req*, align 8
  %3 = alloca i64, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %2, align 8
  %4 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %12 = call i64 @nvmet_file_flush(%struct.nvmet_req* %11)
  store i64 %12, i64* %3, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %15 = call i64 @nvmet_bdev_flush(%struct.nvmet_req* %14)
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.nvmet_req*, %struct.nvmet_req** %2, align 8
  %21 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i64 @nvmet_file_flush(%struct.nvmet_req*) #1

declare dso_local i64 @nvmet_bdev_flush(%struct.nvmet_req*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
