; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_mdev_link_direction_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_configfs.c_mdev_link_direction_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.mdev_link = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"dir_rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dir_tx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @mdev_link_direction_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mdev_link_direction_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mdev_link*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.config_item*, %struct.config_item** %5, align 8
  %10 = call %struct.mdev_link* @to_mdev_link(%struct.config_item* %9)
  store %struct.mdev_link* %10, %struct.mdev_link** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @sysfs_streq(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @sysfs_streq(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @sysfs_streq(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @sysfs_streq(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %4, align 8
  br label %36

29:                                               ; preds = %22, %18, %14, %3
  %30 = load %struct.mdev_link*, %struct.mdev_link** %8, align 8
  %31 = getelementptr inbounds %struct.mdev_link, %struct.mdev_link* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcpy(i32 %32, i8* %33)
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local %struct.mdev_link* @to_mdev_link(%struct.config_item*) #1

declare dso_local i32 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
