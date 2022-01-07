; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_transport_proto_id_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_stat.c_target_stat_transport_proto_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_lun = type { i32, %struct.se_portal_group* }
%struct.se_portal_group = type { i32 }
%struct.se_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_stat_transport_proto_id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_stat_transport_proto_id_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca %struct.se_portal_group*, align 8
  %8 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.config_item*, %struct.config_item** %3, align 8
  %10 = call %struct.se_lun* @to_transport_stat(%struct.config_item* %9)
  store %struct.se_lun* %10, %struct.se_lun** %5, align 8
  %11 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %12 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %11, i32 0, i32 1
  %13 = load %struct.se_portal_group*, %struct.se_portal_group** %12, align 8
  store %struct.se_portal_group* %13, %struct.se_portal_group** %7, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %18 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.se_device* @rcu_dereference(i32 %19)
  store %struct.se_device* %20, %struct.se_device** %6, align 8
  %21 = load %struct.se_device*, %struct.se_device** %6, align 8
  %22 = icmp ne %struct.se_device* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %27 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %23, %2
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local %struct.se_lun* @to_transport_stat(%struct.config_item*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_device* @rcu_dereference(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
