; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rpmsg_channel_info = type { i64, i64, i32 }
%struct.rpmsg_device = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RPMSG_ADDR_ANY = common dso_local global i64 0, align 8
@RPMSG_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @rpmsg_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_device_match(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rpmsg_channel_info*, align 8
  %7 = alloca %struct.rpmsg_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rpmsg_channel_info*
  store %struct.rpmsg_channel_info* %9, %struct.rpmsg_channel_info** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.rpmsg_device* @to_rpmsg_device(%struct.device* %10)
  store %struct.rpmsg_device* %11, %struct.rpmsg_device** %7, align 8
  %12 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %6, align 8
  %13 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RPMSG_ADDR_ANY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %6, align 8
  %19 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %22 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %54

26:                                               ; preds = %17, %2
  %27 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %6, align 8
  %28 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RPMSG_ADDR_ANY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %6, align 8
  %34 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %37 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %32, %26
  %42 = load %struct.rpmsg_channel_info*, %struct.rpmsg_channel_info** %6, align 8
  %43 = getelementptr inbounds %struct.rpmsg_channel_info, %struct.rpmsg_channel_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %46 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RPMSG_NAME_SIZE, align 4
  %50 = call i64 @strncmp(i32 %44, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %54

53:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %40, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.rpmsg_device* @to_rpmsg_device(%struct.device*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
