; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, %struct.dasd_device* }
%struct.dasd_device = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.dasd_device*, %struct.format_data_t*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.format_data_t = type { i32, i32, i32, i32 }
%struct.block_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@DASD_STATE_BASIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"%s: The DASD cannot be formatted while it is enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DBF_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"formatting units %u to %u (%u B blocks) flags %u\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*, %struct.format_data_t*)* @dasd_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_format(%struct.dasd_block* %0, %struct.format_data_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_block*, align 8
  %5 = alloca %struct.format_data_t*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_device*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %4, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %5, align 8
  %9 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %9, i32 0, i32 1
  %11 = load %struct.dasd_device*, %struct.dasd_device** %10, align 8
  store %struct.dasd_device* %11, %struct.dasd_device** %6, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (%struct.dasd_device*, %struct.format_data_t*, i32)*, i32 (%struct.dasd_device*, %struct.format_data_t*, i32)** %15, align 8
  %17 = icmp eq i32 (%struct.dasd_device*, %struct.format_data_t*, i32)* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %95

21:                                               ; preds = %2
  %22 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DASD_STATE_BASIC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @dev_name(i32* %31)
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %21
  %37 = load i32, i32* @DBF_NOTICE, align 4
  %38 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %39 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %40 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %43 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %46 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %49 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DBF_DEV_EVENT(i32 %37, %struct.dasd_device* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %53 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %36
  %57 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %58 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.block_device* @bdget_disk(i32 %59, i32 0)
  store %struct.block_device* %60, %struct.block_device** %8, align 8
  %61 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %62 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @blksize_bits(i32 %63)
  %65 = load %struct.block_device*, %struct.block_device** %8, align 8
  %66 = getelementptr inbounds %struct.block_device, %struct.block_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.block_device*, %struct.block_device** %8, align 8
  %70 = call i32 @bdput(%struct.block_device* %69)
  br label %71

71:                                               ; preds = %56, %36
  %72 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %73 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (%struct.dasd_device*, %struct.format_data_t*, i32)*, i32 (%struct.dasd_device*, %struct.format_data_t*, i32)** %75, align 8
  %77 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %78 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %79 = call i32 %76(%struct.dasd_device* %77, %struct.format_data_t* %78, i32 1)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %71
  %85 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %86 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32 (%struct.dasd_device*, %struct.format_data_t*, i32)*, i32 (%struct.dasd_device*, %struct.format_data_t*, i32)** %88, align 8
  %90 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %91 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %92 = call i32 %89(%struct.dasd_device* %90, %struct.format_data_t* %91, i32 0)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %84, %71
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %27, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.block_device* @bdget_disk(i32, i32) #1

declare dso_local i32 @blksize_bits(i32) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
