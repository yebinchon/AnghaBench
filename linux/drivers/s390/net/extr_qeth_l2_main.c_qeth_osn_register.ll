; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_osn_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_osn_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type opaque
%struct.qeth_card = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.net_device.0*, i8*)*, i32 (%struct.sk_buff.1*)* }
%struct.net_device.0 = type opaque
%struct.sk_buff.1 = type opaque

@.str = private unnamed_addr constant [9 x i8] c"0.0.%04x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"osnreg\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_osn_register(i8* %0, %struct.net_device** %1, i32 (%struct.net_device*, i8*)* %2, i32 (%struct.sk_buff*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device**, align 8
  %8 = alloca i32 (%struct.net_device*, i8*)*, align 8
  %9 = alloca i32 (%struct.sk_buff*)*, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.net_device** %1, %struct.net_device*** %7, align 8
  store i32 (%struct.net_device*, i8*)* %2, i32 (%struct.net_device*, i8*)** %8, align 8
  store i32 (%struct.sk_buff*)* %3, i32 (%struct.sk_buff*)** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @memcpy(i32* %12, i8* %13, i32 2)
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %19 = call %struct.qeth_card* @qeth_get_card_by_busid(i8* %18)
  store %struct.qeth_card* %19, %struct.qeth_card** %10, align 8
  %20 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %21 = icmp ne %struct.qeth_card* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %24 = call i32 @IS_OSN(%struct.qeth_card* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %4
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %55

29:                                               ; preds = %22
  %30 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 1
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  %33 = load %struct.net_device**, %struct.net_device*** %7, align 8
  store %struct.net_device* %32, %struct.net_device** %33, align 8
  %34 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %35 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %34, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i8*)** %8, align 8
  %37 = icmp eq i32 (%struct.net_device*, i8*)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %9, align 8
  %40 = icmp eq i32 (%struct.sk_buff*)* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %29
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %55

44:                                               ; preds = %38
  %45 = load i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i8*)** %8, align 8
  %46 = bitcast i32 (%struct.net_device*, i8*)* %45 to i32 (%struct.net_device.0*, i8*)*
  %47 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 (%struct.net_device.0*, i8*)* %46, i32 (%struct.net_device.0*, i8*)** %49, align 8
  %50 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %9, align 8
  %51 = bitcast i32 (%struct.sk_buff*)* %50 to i32 (%struct.sk_buff.1*)*
  %52 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 (%struct.sk_buff.1*)* %51, i32 (%struct.sk_buff.1*)** %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %44, %41, %26
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.qeth_card* @qeth_get_card_by_busid(i8*) #1

declare dso_local i32 @IS_OSN(%struct.qeth_card*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
