; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_set_direction_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_set_direction_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.most_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MOST_CH_TX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tx\0A\00", align 1
@MOST_CH_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"rx\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unconfigured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @set_direction_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_direction_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.most_channel*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.most_channel* @to_channel(%struct.device* %9)
  store %struct.most_channel* %10, %struct.most_channel** %8, align 8
  %11 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %12 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MOST_CH_TX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %39

22:                                               ; preds = %3
  %23 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %24 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MOST_CH_RX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %30, %18
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.most_channel* @to_channel(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
