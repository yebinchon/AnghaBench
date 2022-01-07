; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.sdebug_dev_info*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.sdebug_dev_info = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@sdebug_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"slave_configure <%u %u %u %llu>\0A\00", align 1
@SDEBUG_MAX_CMD_LEN = common dso_local global i64 0, align 8
@sdebug_no_uld = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @scsi_debug_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_debug_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.sdebug_dev_info*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 1
  %7 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %6, align 8
  store %struct.sdebug_dev_info* %7, %struct.sdebug_dev_info** %4, align 8
  %8 = load i64, i64* @sdebug_verbose, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %10, %1
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SDEBUG_MAX_CMD_LEN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i64, i64* @SDEBUG_MAX_CMD_LEN, align 8
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %4, align 8
  %42 = icmp eq %struct.sdebug_dev_info* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %45 = call %struct.sdebug_dev_info* @find_build_dev_info(%struct.scsi_device* %44)
  store %struct.sdebug_dev_info* %45, %struct.sdebug_dev_info** %4, align 8
  %46 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %4, align 8
  %47 = icmp eq %struct.sdebug_dev_info* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %62

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %4, align 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 1
  store %struct.sdebug_dev_info* %51, %struct.sdebug_dev_info** %53, align 8
  %54 = load i64, i64* @sdebug_no_uld, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %61 = call i32 @config_cdb_len(%struct.scsi_device* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.sdebug_dev_info* @find_build_dev_info(%struct.scsi_device*) #1

declare dso_local i32 @config_cdb_len(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
