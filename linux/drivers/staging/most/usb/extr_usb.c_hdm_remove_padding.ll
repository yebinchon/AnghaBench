; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_remove_padding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_remove_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_dev = type { %struct.most_channel_config* }
%struct.most_channel_config = type { i32 }
%struct.mbo = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@USB_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_dev*, i32, %struct.mbo*)* @hdm_remove_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdm_remove_padding(%struct.most_dev* %0, i32 %1, %struct.mbo* %2) #0 {
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
  %13 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %12, i32 0, i32 0
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
  br label %63

25:                                               ; preds = %3
  %26 = load %struct.mbo*, %struct.mbo** %7, align 8
  %27 = getelementptr inbounds %struct.mbo, %struct.mbo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USB_MTU, align 4
  %30 = udiv i32 %28, %29
  store i32 %30, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %54, %25
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.mbo*, %struct.mbo** %7, align 8
  %37 = getelementptr inbounds %struct.mbo, %struct.mbo* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = mul i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = load %struct.mbo*, %struct.mbo** %7, align 8
  %45 = getelementptr inbounds %struct.mbo, %struct.mbo* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @USB_MTU, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @memmove(i64 %43, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = mul i32 %58, %59
  %61 = load %struct.mbo*, %struct.mbo** %7, align 8
  %62 = getelementptr inbounds %struct.mbo, %struct.mbo* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @get_stream_frame_size(%struct.most_channel_config*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
