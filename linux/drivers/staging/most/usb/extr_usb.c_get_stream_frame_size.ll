; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_get_stream_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_get_stream_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_channel_config = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Misconfig: Subbuffer size zero.\0A\00", align 1
@AV_PACKETS_PER_XACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Misconfig: Packets per XACT zero\0A\00", align 1
@USB_MTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Query frame size of non-streaming channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_channel_config*)* @get_stream_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stream_frame_size(%struct.most_channel_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.most_channel_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.most_channel_config* %0, %struct.most_channel_config** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.most_channel_config*, %struct.most_channel_config** %3, align 8
  %7 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.most_channel_config*, %struct.most_channel_config** %3, align 8
  %16 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %48 [
    i32 129, label %18
    i32 128, label %22
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @AV_PACKETS_PER_XACT, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %14
  %23 = load %struct.most_channel_config*, %struct.most_channel_config** %3, align 8
  %24 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %47

29:                                               ; preds = %22
  %30 = load %struct.most_channel_config*, %struct.most_channel_config** %3, align 8
  %31 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @USB_MTU, align 4
  %36 = load i32, i32* %5, align 4
  %37 = udiv i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = mul i32 %37, %38
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.most_channel_config*, %struct.most_channel_config** %3, align 8
  %42 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul i32 %43, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %27
  br label %50

48:                                               ; preds = %14
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %47, %18
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
