; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_pr_res_holder_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_target_pr_res_holder_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"SPC_RESERVATIONS_DISABLED\0A\00", align 1
@TRANSPORT_FLAG_PASSTHROUGH_PGR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Passthrough\0A\00", align 1
@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @target_pr_res_holder_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_pr_res_holder_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.config_item*, %struct.config_item** %4, align 8
  %9 = call %struct.se_device* @pr_to_dev(%struct.config_item* %8)
  store %struct.se_device* %9, %struct.se_device** %6, align 8
  %10 = load %struct.se_device*, %struct.se_device** %6, align 8
  %11 = getelementptr inbounds %struct.se_device, %struct.se_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.se_device*, %struct.se_device** %6, align 8
  %20 = getelementptr inbounds %struct.se_device, %struct.se_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TRANSPORT_FLAG_PASSTHROUGH_PGR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %18
  %31 = load %struct.se_device*, %struct.se_device** %6, align 8
  %32 = getelementptr inbounds %struct.se_device, %struct.se_device* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.se_device*, %struct.se_device** %6, align 8
  %35 = getelementptr inbounds %struct.se_device, %struct.se_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.se_device*, %struct.se_device** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @target_core_dev_pr_show_spc2_res(%struct.se_device* %41, i8* %42)
  store i32 %43, i32* %7, align 4
  br label %48

44:                                               ; preds = %30
  %45 = load %struct.se_device*, %struct.se_device** %6, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @target_core_dev_pr_show_spc3_res(%struct.se_device* %45, i8* %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.se_device*, %struct.se_device** %6, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %27, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.se_device* @pr_to_dev(%struct.config_item*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @target_core_dev_pr_show_spc2_res(%struct.se_device*, i8*) #1

declare dso_local i32 @target_core_dev_pr_show_spc3_res(%struct.se_device*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
