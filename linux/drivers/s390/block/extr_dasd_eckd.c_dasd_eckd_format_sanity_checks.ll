; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_format_sanity_checks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_format_sanity_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_4__*, %struct.dasd_eckd_private* }
%struct.TYPE_4__ = type { i32 }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.format_data_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Start track number %u used in formatting is too big\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Stop track number %u used in formatting is too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Start track %u used in formatting exceeds end track\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"The DASD cannot be formatted with block size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.format_data_t*)* @dasd_eckd_format_sanity_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_format_sanity_checks(%struct.dasd_device* %0, %struct.format_data_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.format_data_t*, align 8
  %6 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %5, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 1
  %9 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  store %struct.dasd_eckd_private* %9, %struct.dasd_eckd_private** %6, align 8
  %10 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %11 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %14 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %17 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %15, %19
  %21 = icmp sge i32 %12, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %28 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %94

33:                                               ; preds = %2
  %34 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %35 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %38 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %41 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %39, %43
  %45 = icmp sge i32 %36, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %33
  %47 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %48 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %52 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %94

57:                                               ; preds = %33
  %58 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %59 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %62 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %67 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %71 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %94

76:                                               ; preds = %57
  %77 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %78 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @dasd_check_blocksize(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %84 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %88 = getelementptr inbounds %struct.format_data_t, %struct.format_data_t* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_warn(i32* %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %82, %65, %46, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @dasd_check_blocksize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
