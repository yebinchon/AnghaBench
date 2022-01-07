; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_rsup_tmfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_rsup_tmfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.sdebug_dev_info = type { i32 }

@SDEB_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_rsup_tmfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_rsup_tmfs(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 64)
  %16 = load i32*, i32** %10, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 6
  %26 = call i32 @get_unaligned_be32(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = load i32, i32* @SDEB_IN_CDB, align 4
  %32 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %30, i32 %31, i32 6, i32 -1)
  %33 = load i32, i32* @check_condition_result, align 4
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %2
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  store i32 200, i32* %35, align 16
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 3
  store i32 12, i32* %40, align 4
  store i32 16, i32* %8, align 4
  br label %42

41:                                               ; preds = %34
  store i32 4, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %8, align 4
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %52, i32* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %29
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
