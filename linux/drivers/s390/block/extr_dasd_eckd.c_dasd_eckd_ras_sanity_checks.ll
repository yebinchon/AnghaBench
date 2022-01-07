; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_ras_sanity_checks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_ras_sanity_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_4__*, %struct.dasd_eckd_private* }
%struct.TYPE_4__ = type { i32 }
%struct.dasd_eckd_private = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"Start track number %u used in the space release command is too big\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Stop track number %u used in the space release command is too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Start track %u used in the space release command exceeds the end track\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32, i32)* @dasd_eckd_ras_sanity_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_ras_sanity_checks(%struct.dasd_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_eckd_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  %14 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  %17 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul i32 %15, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %61

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %39 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_warn(i32* %41, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %60

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %50, %46
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %24
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
