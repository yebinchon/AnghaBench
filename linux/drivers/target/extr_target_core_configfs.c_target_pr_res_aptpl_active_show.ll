; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_pr_res_aptpl_active_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_pr_res_aptpl_active_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_device = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TRANSPORT_FLAG_PASSTHROUGH_PGR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"APTPL Bit Status: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Activated\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_pr_res_aptpl_active_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_pr_res_aptpl_active_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_device*, align 8
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.config_item*, %struct.config_item** %4, align 8
  %8 = call %struct.se_device* @pr_to_dev(%struct.config_item* %7)
  store %struct.se_device* %8, %struct.se_device** %6, align 8
  %9 = load %struct.se_device*, %struct.se_device** %6, align 8
  %10 = getelementptr inbounds %struct.se_device, %struct.se_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.se_device*, %struct.se_device** %6, align 8
  %16 = getelementptr inbounds %struct.se_device, %struct.se_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TRANSPORT_FLAG_PASSTHROUGH_PGR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %34

24:                                               ; preds = %14
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.se_device*, %struct.se_device** %6, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %24, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.se_device* @pr_to_dev(%struct.config_item*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
