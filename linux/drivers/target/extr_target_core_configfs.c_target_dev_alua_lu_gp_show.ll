; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_dev_alua_lu_gp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_dev_alua_lu_gp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_device = type { %struct.t10_alua_lu_gp_member* }
%struct.t10_alua_lu_gp_member = type { i32, %struct.t10_alua_lu_gp* }
%struct.t10_alua_lu_gp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.config_item }

@.str = private unnamed_addr constant [37 x i8] c"LU Group Alias: %s\0ALU Group ID: %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_dev_alua_lu_gp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_dev_alua_lu_gp_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.t10_alua_lu_gp*, align 8
  %9 = alloca %struct.t10_alua_lu_gp_member*, align 8
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.config_item*, %struct.config_item** %4, align 8
  %12 = call %struct.se_device* @to_device(%struct.config_item* %11)
  store %struct.se_device* %12, %struct.se_device** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.se_device*, %struct.se_device** %6, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 0
  %15 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %14, align 8
  store %struct.t10_alua_lu_gp_member* %15, %struct.t10_alua_lu_gp_member** %9, align 8
  %16 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %17 = icmp ne %struct.t10_alua_lu_gp_member* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %21 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %24 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %23, i32 0, i32 1
  %25 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %24, align 8
  store %struct.t10_alua_lu_gp* %25, %struct.t10_alua_lu_gp** %8, align 8
  %26 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %8, align 8
  %27 = icmp ne %struct.t10_alua_lu_gp* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %8, align 8
  %30 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.config_item* %31, %struct.config_item** %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.config_item*, %struct.config_item** %7, align 8
  %34 = call i8* @config_item_name(%struct.config_item* %33)
  %35 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %8, align 8
  %36 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @sprintf(i8* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %28, %19
  %44 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %45 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.se_device* @to_device(%struct.config_item*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @config_item_name(%struct.config_item*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
