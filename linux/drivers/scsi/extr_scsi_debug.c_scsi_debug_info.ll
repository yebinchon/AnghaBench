; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }

@sdebug_info = common dso_local global i8* null, align 8
@SDEBUG_INFO_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: version %s [%s]\0A\00", align 1
@my_name = common dso_local global i32 0, align 4
@SDEBUG_VERSION = common dso_local global i32 0, align 4
@sdebug_version_date = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"  dev_size_mb=%d, opts=0x%x, submit_queues=%d, %s=%d\00", align 1
@sdebug_dev_size_mb = common dso_local global i32 0, align 4
@sdebug_opts = common dso_local global i32 0, align 4
@submit_queues = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@sdebug_statistics = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Scsi_Host*)* @scsi_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_debug_info(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %5 = load i8*, i8** @sdebug_info, align 8
  %6 = load i32, i32* @SDEBUG_INFO_LEN, align 4
  %7 = load i32, i32* @my_name, align 4
  %8 = load i32, i32* @SDEBUG_VERSION, align 4
  %9 = load i32, i32* @sdebug_version_date, align 4
  %10 = call i32 (i8*, i32, i8*, i32, i32, i32, ...) @scnprintf(i8* %5, i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SDEBUG_INFO_LEN, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp sge i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i8*, i8** @sdebug_info, align 8
  store i8* %16, i8** %2, align 8
  br label %32

17:                                               ; preds = %1
  %18 = load i8*, i8** @sdebug_info, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i32, i32* @SDEBUG_INFO_LEN, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* @sdebug_dev_size_mb, align 4
  %26 = load i32, i32* @sdebug_opts, align 4
  %27 = load i32, i32* @submit_queues, align 4
  %28 = load i64, i64* @sdebug_statistics, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i8*, i32, i8*, i32, i32, i32, ...) @scnprintf(i8* %21, i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** @sdebug_info, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %17, %15
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
