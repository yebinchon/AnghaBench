; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_setup_alua.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_setup_alua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.t10_alua_lu_gp_member = type { i32 }

@TRANSPORT_FLAG_PASSTHROUGH_ALUA = common dso_local global i32 0, align 4
@HBA_FLAGS_INTERNAL_USE = common dso_local global i32 0, align 4
@default_lu_gp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"%s: Adding to default ALUA LU Group: core/alua/lu_gps/default_lu_gp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_setup_alua(%struct.se_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.t10_alua_lu_gp_member*, align 8
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %5 = load %struct.se_device*, %struct.se_device** %3, align 8
  %6 = getelementptr inbounds %struct.se_device, %struct.se_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TRANSPORT_FLAG_PASSTHROUGH_ALUA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %1
  %14 = load %struct.se_device*, %struct.se_device** %3, align 8
  %15 = getelementptr inbounds %struct.se_device, %struct.se_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %13
  %23 = load %struct.se_device*, %struct.se_device** %3, align 8
  %24 = call %struct.t10_alua_lu_gp_member* @core_alua_allocate_lu_gp_mem(%struct.se_device* %23)
  store %struct.t10_alua_lu_gp_member* %24, %struct.t10_alua_lu_gp_member** %4, align 8
  %25 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %26 = call i64 @IS_ERR(%struct.t10_alua_lu_gp_member* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %30 = call i32 @PTR_ERR(%struct.t10_alua_lu_gp_member* %29)
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %22
  %32 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %33 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %36 = load i32, i32* @default_lu_gp, align 4
  %37 = call i32 @__core_alua_attach_lu_gp_mem(%struct.t10_alua_lu_gp_member* %35, i32 %36)
  %38 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %4, align 8
  %39 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.se_device*, %struct.se_device** %3, align 8
  %42 = getelementptr inbounds %struct.se_device, %struct.se_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %31, %13, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.t10_alua_lu_gp_member* @core_alua_allocate_lu_gp_mem(%struct.se_device*) #1

declare dso_local i64 @IS_ERR(%struct.t10_alua_lu_gp_member*) #1

declare dso_local i32 @PTR_ERR(%struct.t10_alua_lu_gp_member*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__core_alua_attach_lu_gp_mem(%struct.t10_alua_lu_gp_member*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
