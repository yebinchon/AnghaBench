; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_show_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_show_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.virtual_consumer_data = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"fast\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"normal\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"idle\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"standby\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.virtual_consumer_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.virtual_consumer_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.virtual_consumer_data* %10, %struct.virtual_consumer_data** %8, align 8
  %11 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %8, align 8
  %12 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 131, label %14
    i32 129, label %17
    i32 130, label %20
    i32 128, label %23
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %23, %20, %17, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.virtual_consumer_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
