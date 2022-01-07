; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_set_cfg_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_most_set_cfg_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dir_rx\0A\00", align 1
@MOST_CH_RX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"rx\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dir_tx\0A\00", align 1
@MOST_CH_TX = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"tx\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid direction\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @most_set_cfg_direction(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.most_channel*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.most_channel* @get_channel(i8* %9, i8* %10)
  store %struct.most_channel* %11, %struct.most_channel** %8, align 8
  %12 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %13 = icmp ne %struct.most_channel* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** @MOST_CH_RX, align 8
  %23 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %24 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  br label %60

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** @MOST_CH_RX, align 8
  %32 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %33 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  br label %59

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** @MOST_CH_TX, align 8
  %41 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %42 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  br label %58

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** @MOST_CH_TX, align 8
  %50 = load %struct.most_channel*, %struct.most_channel** %8, align 8
  %51 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  br label %57

53:                                               ; preds = %44
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* @ENODATA, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %30
  br label %60

60:                                               ; preds = %59, %21
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %53, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.most_channel* @get_channel(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
