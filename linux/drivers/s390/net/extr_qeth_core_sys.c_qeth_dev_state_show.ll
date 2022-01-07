; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DOWN\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"HARDSETUP\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"UP (LAN %s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SOFTSETUP\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qeth_dev_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qeth_card*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %9)
  store %struct.qeth_card* %10, %struct.qeth_card** %8, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %12 = icmp ne %struct.qeth_card* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %48 [
    i32 130, label %20
    i32 129, label %23
    i32 128, label %26
  ]

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %51

26:                                               ; preds = %16
  %27 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_UP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @netif_carrier_ok(%struct.TYPE_2__* %39)
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  store i32 %44, i32* %4, align 4
  br label %51

45:                                               ; preds = %26
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %16
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %45, %35, %23, %20, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @netif_carrier_ok(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
