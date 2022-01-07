; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_rw32_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_setup_rw32_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, i32 }

@sd_cdb_pool = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@SD_EXT_CDB_SIZE = common dso_local global i32 0, align 4
@VARIABLE_LENGTH_CMD = common dso_local global i32 0, align 4
@WRITE_32 = common dso_local global i32 0, align 4
@READ_32 = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32, i32, i32, i8)* @sd_setup_rw32_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_setup_rw32_cmnd(%struct.scsi_cmnd* %0, i32 %1, i32 %2, i32 %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  %12 = load i32, i32* @sd_cdb_pool, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call i32* @mempool_alloc(i32 %12, i32 %13)
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %25, i32* %6, align 4
  br label %86

26:                                               ; preds = %5
  %27 = load i32, i32* @SD_EXT_CDB_SIZE, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memset(i32* %32, i32 0, i32 %35)
  %37 = load i32, i32* @VARIABLE_LENGTH_CMD, align 4
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 24, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = load i32, i32* @WRITE_32, align 4
  br label %52

50:                                               ; preds = %26
  %51 = load i32, i32* @READ_32, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 9
  store i32 %53, i32* %57, align 4
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 10
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 12
  %69 = bitcast i32* %68 to i8*
  %70 = call i32 @put_unaligned_be64(i32 %64, i8* %69)
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 20
  %76 = bitcast i32* %75 to i8*
  %77 = call i32 @put_unaligned_be32(i32 %71, i8* %76)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 28
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @put_unaligned_be32(i32 %78, i8* %83)
  %85 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %52, %24
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32* @mempool_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
