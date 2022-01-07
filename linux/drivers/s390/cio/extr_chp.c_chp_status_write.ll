; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_status_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_status_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.channel_path = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%5s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @chp_status_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chp_status_write(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.channel_path*, align 8
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.channel_path* @to_channelpath(%struct.device* %14)
  store %struct.channel_path* %15, %struct.channel_path** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %18 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %5, align 8
  br label %75

23:                                               ; preds = %4
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %25 = call i32 @strncasecmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.channel_path*, %struct.channel_path** %10, align 8
  %33 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.channel_path*, %struct.channel_path** %10, align 8
  %36 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @s390_vary_chpid(i32 %37, i32 1)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.channel_path*, %struct.channel_path** %10, align 8
  %40 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %65

42:                                               ; preds = %27
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %44 = call i32 @strncasecmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.channel_path*, %struct.channel_path** %10, align 8
  %52 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.channel_path*, %struct.channel_path** %10, align 8
  %55 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @s390_vary_chpid(i32 %56, i32 0)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.channel_path*, %struct.channel_path** %10, align 8
  %59 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %64

61:                                               ; preds = %46
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %50
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  br label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i64 [ %70, %68 ], [ %72, %71 ]
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %73, %21
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local %struct.channel_path* @to_channelpath(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s390_vary_chpid(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
