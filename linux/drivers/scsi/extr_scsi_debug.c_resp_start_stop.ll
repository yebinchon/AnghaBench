; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8* }
%struct.sdebug_dev_info = type { i32 }

@SDEB_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@SDEG_RES_IMMED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_start_stop(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 240
  %18 = ashr i32 %17, 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = load i32, i32* @SDEB_IN_CDB, align 4
  %24 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %22, i32 %23, i32 4, i32 7)
  %25 = load i32, i32* @check_condition_result, align 4
  store i32 %25, i32* %3, align 4
  br label %60

26:                                               ; preds = %2
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %36 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %35, i32 0, i32 0
  %37 = call i32 @atomic_read(i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = icmp eq i32 %37, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %45 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @atomic_xchg(i32* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %26
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %26
  %58 = load i32, i32* @SDEG_RES_IMMED_MASK, align 4
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
