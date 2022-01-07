; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_sync_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.sdebug_dev_info = type { i32 }

@SYNCHRONIZE_CACHE = common dso_local global i32 0, align 4
@sdebug_capacity = common dso_local global i64 0, align 8
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@LBA_OUT_OF_RANGE = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@write_since_sync = common dso_local global i32 0, align 4
@SDEG_RES_IMMED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_sync_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_sync_cache(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SYNCHRONIZE_CACHE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = call i64 @get_unaligned_be32(i32* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = call i64 @get_unaligned_be16(i32* %23)
  store i64 %24, i64* %8, align 8
  br label %32

25:                                               ; preds = %2
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = call i64 @get_unaligned_be64(i32* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 10
  %31 = call i64 @get_unaligned_be32(i32* %30)
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* @sdebug_capacity, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %40 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %41 = load i32, i32* @LBA_OUT_OF_RANGE, align 4
  %42 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %39, i32 %40, i32 %41, i32 0)
  %43 = load i32, i32* @check_condition_result, align 4
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %32
  %45 = load i32, i32* @write_since_sync, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 2
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %44
  %54 = load i32, i32* @SDEG_RES_IMMED_MASK, align 4
  store i32 %54, i32* %6, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* @write_since_sync, align 4
  br label %56

56:                                               ; preds = %55, %53
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %38
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i64 @get_unaligned_be64(i32*) #1

declare dso_local i32 @mk_sense_buffer(%struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
