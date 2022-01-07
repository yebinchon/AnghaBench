; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_lu_lu_name_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_lu_lu_name_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_stat_lu_lu_name_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_stat_lu_lu_name_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.config_item*, %struct.config_item** %3, align 8
  %7 = call %struct.se_device* @to_stat_lu_dev(%struct.config_item* %6)
  store %struct.se_device* %7, %struct.se_device** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = load %struct.se_device*, %struct.se_device** %5, align 8
  %11 = getelementptr inbounds %struct.se_device, %struct.se_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.se_device*, %struct.se_device** %5, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i8* [ %20, %16 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = call i32 @snprintf(i8* %8, i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  ret i32 %24
}

declare dso_local %struct.se_device* @to_stat_lu_dev(%struct.config_item*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
