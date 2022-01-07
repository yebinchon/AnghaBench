; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_config_write_zeroes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_config_write_zeroes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.nvme_ns = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@NVME_CTRL_ONCS_WRITE_ZEROES = common dso_local global i32 0, align 4
@NVME_QUIRK_DISABLE_WRITE_ZEROES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@USHRT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, %struct.nvme_ns*)* @nvme_config_write_zeroes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_config_write_zeroes(%struct.gendisk* %0, %struct.nvme_ns* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %4, align 8
  %7 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %8 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = shl i32 1, %9
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %6, align 2
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NVME_CTRL_ONCS_WRITE_ZEROES, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NVME_QUIRK_DISABLE_WRITE_ZEROES, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20, %2
  br label %68

30:                                               ; preds = %20
  %31 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %32 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UINT_MAX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load i64, i64* @USHRT_MAX, align 8
  %40 = add nsw i64 %39, 1
  %41 = trunc i64 %40 to i16
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %6, align 2
  %44 = zext i16 %43 to i32
  %45 = mul nsw i32 %42, %44
  %46 = ashr i32 %45, 9
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %5, align 2
  br label %62

48:                                               ; preds = %30
  %49 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = trunc i64 %54 to i16
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* %6, align 2
  %58 = zext i16 %57 to i32
  %59 = mul nsw i32 %56, %58
  %60 = ashr i32 %59, 9
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %5, align 2
  br label %62

62:                                               ; preds = %48, %38
  %63 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %64 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i16, i16* %5, align 2
  %67 = call i32 @blk_queue_max_write_zeroes_sectors(i32 %65, i16 zeroext %66)
  br label %68

68:                                               ; preds = %62, %29
  ret void
}

declare dso_local i32 @blk_queue_max_write_zeroes_sectors(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
