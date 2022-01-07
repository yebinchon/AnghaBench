; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_transport_dev_name_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_transport_dev_name_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_lun = type { i32, %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.se_portal_group*)* }
%struct.se_device = type { %struct.t10_wwn }
%struct.t10_wwn = type { i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s+%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_stat_transport_dev_name_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_stat_transport_dev_name_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca %struct.se_portal_group*, align 8
  %8 = alloca %struct.t10_wwn*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.config_item*, %struct.config_item** %3, align 8
  %11 = call %struct.se_lun* @to_transport_stat(%struct.config_item* %10)
  store %struct.se_lun* %11, %struct.se_lun** %5, align 8
  %12 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %13 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %12, i32 0, i32 1
  %14 = load %struct.se_portal_group*, %struct.se_portal_group** %13, align 8
  store %struct.se_portal_group* %14, %struct.se_portal_group** %7, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %19 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.se_device* @rcu_dereference(i32 %20)
  store %struct.se_device* %21, %struct.se_device** %6, align 8
  %22 = load %struct.se_device*, %struct.se_device** %6, align 8
  %23 = icmp ne %struct.se_device* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %2
  %25 = load %struct.se_device*, %struct.se_device** %6, align 8
  %26 = getelementptr inbounds %struct.se_device, %struct.se_device* %25, i32 0, i32 0
  store %struct.t10_wwn* %26, %struct.t10_wwn** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %30 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8* (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)** %32, align 8
  %34 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %35 = call i8* %33(%struct.se_portal_group* %34)
  %36 = load %struct.t10_wwn*, %struct.t10_wwn** %8, align 8
  %37 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.t10_wwn*, %struct.t10_wwn** %8, align 8
  %43 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %49

45:                                               ; preds = %24
  %46 = load %struct.t10_wwn*, %struct.t10_wwn** %8, align 8
  %47 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i8* [ %44, %41 ], [ %48, %45 ]
  %51 = call i32 @snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %2
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local %struct.se_lun* @to_transport_stat(%struct.config_item*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_device* @rcu_dereference(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
