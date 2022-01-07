; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_add_padding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_add_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_dev = type { %struct.TYPE_2__*, %struct.most_channel_config* }
%struct.TYPE_2__ = type { i32 }
%struct.most_channel_config = type { i32 }
%struct.mbo = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Missed minimal transfer unit.\0A\00", align 1
@USB_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_dev*, i32, %struct.mbo*)* @hdm_add_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdm_add_padding(%struct.most_dev* %0, i32 %1, %struct.mbo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.most_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbo*, align 8
  %8 = alloca %struct.most_channel_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.most_dev* %0, %struct.most_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbo* %2, %struct.mbo** %7, align 8
  %12 = load %struct.most_dev*, %struct.most_dev** %5, align 8
  %13 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %12, i32 0, i32 1
  %14 = load %struct.most_channel_config*, %struct.most_channel_config** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %14, i64 %16
  store %struct.most_channel_config* %17, %struct.most_channel_config** %8, align 8
  %18 = load %struct.most_channel_config*, %struct.most_channel_config** %8, align 8
  %19 = call i32 @get_stream_frame_size(%struct.most_channel_config* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load %struct.mbo*, %struct.mbo** %7, align 8
  %27 = getelementptr inbounds %struct.mbo, %struct.mbo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = udiv i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.most_dev*, %struct.most_dev** %5, align 8
  %35 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %25
  %42 = load i32, i32* %11, align 4
  %43 = sub i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %66, %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp ugt i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load %struct.mbo*, %struct.mbo** %7, align 8
  %49 = getelementptr inbounds %struct.mbo, %struct.mbo* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @USB_MTU, align 4
  %53 = mul i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = load %struct.mbo*, %struct.mbo** %7, align 8
  %57 = getelementptr inbounds %struct.mbo, %struct.mbo* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @memmove(i64 %55, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %47
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %10, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @USB_MTU, align 4
  %72 = mul i32 %70, %71
  %73 = load %struct.mbo*, %struct.mbo** %7, align 8
  %74 = getelementptr inbounds %struct.mbo, %struct.mbo* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %33, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @get_stream_frame_size(%struct.most_channel_config*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
