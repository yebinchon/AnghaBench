; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_set_tg_pt_secondary_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_set_tg_pt_secondary_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i64, i32, i32, i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Unable to complete secondary state transition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Successful %s ALUA transition TG PT Group: %s ID: %hu to secondary access state: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"implicit\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_lun*, i32, i32)* @core_alua_set_tg_pt_secondary_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_alua_set_tg_pt_secondary_state(%struct.se_lun* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %9 = alloca i32, align 4
  store %struct.se_lun* %0, %struct.se_lun** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %11 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %14 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %13, i32 0, i32 4
  %15 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %14, align 8
  store %struct.t10_alua_tg_pt_gp* %15, %struct.t10_alua_tg_pt_gp** %8, align 8
  %16 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %17 = icmp ne %struct.t10_alua_tg_pt_gp* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %20 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %83

25:                                               ; preds = %3
  %26 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %27 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %33 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %32, i32 0, i32 3
  %34 = call i32 @atomic_set(i32* %33, i32 1)
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %37 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %36, i32 0, i32 3
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %49 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %54 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %55 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @config_item_name(i32* %56)
  %58 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  %59 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 %57, i32 %60, i8* %64)
  %66 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %67 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %46
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @msleep_interruptible(i32 %72)
  br label %74

74:                                               ; preds = %71, %46
  %75 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %76 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %81 = call i32 @core_alua_update_tpg_secondary_metadata(%struct.se_lun* %80)
  br label %82

82:                                               ; preds = %79, %74
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @config_item_name(i32*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @core_alua_update_tpg_secondary_metadata(%struct.se_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
