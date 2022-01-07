; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_hsuid_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_hsuid_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qeth_l3_dev_hsuid_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_hsuid_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qeth_card*, align 8
  %9 = alloca [9 x i8], align 1
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %10)
  store %struct.qeth_card* %11, %struct.qeth_card** %8, align 8
  %12 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %13 = icmp ne %struct.qeth_card* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %19 = call i32 @IS_IQD(%struct.qeth_card* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %17
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %26 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i8* %25, i32 %29, i32 9)
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %32 = call i32 @EBCASC(i8* %31, i32 8)
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %21, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @EBCASC(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
