; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_nd.h_nd_iostat_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_nd.h_nd_iostat_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.gendisk* }
%struct.gendisk = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*, i64*)* @nd_iostat_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_iostat_start(%struct.bio* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.gendisk*, align 8
  store %struct.bio* %0, %struct.bio** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  store %struct.gendisk* %9, %struct.gendisk** %6, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @blk_queue_io_stat(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64*, i64** %5, align 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %20 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = call i32 @bio_op(%struct.bio* %22)
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = call i32 @bio_sectors(%struct.bio* %24)
  %26 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %27 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %26, i32 0, i32 0
  %28 = call i32 @generic_start_io_acct(i32 %21, i32 %23, i32 %25, i32* %27)
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @blk_queue_io_stat(i32) #1

declare dso_local i32 @generic_start_io_acct(i32, i32, i32, i32*) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
