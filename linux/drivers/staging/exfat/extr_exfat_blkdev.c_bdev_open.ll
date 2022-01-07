; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_blkdev.c_bdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_blkdev.c_bdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bd_info_t = type { i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.bd_info_t }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdev_open(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.bd_info_t* %6, %struct.bd_info_t** %3, align 8
  %7 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %8 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i64 @bdev_logical_block_size(%struct.TYPE_3__* %15)
  %17 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %18 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %20 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ilog2(i64 %21)
  %23 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %24 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %26 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %30 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @i_size_read(i32 %35)
  %37 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %38 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %36, %39
  %41 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %42 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bd_info_t*, %struct.bd_info_t** %3, align 8
  %44 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @bdev_logical_block_size(%struct.TYPE_3__*) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
