; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_do_transition_tg_pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_do_transition_tg_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32, i64, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@ALUA_ACCESS_STATE_TRANSITION = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Successful %s ALUA transition TG PT Group: %s ID: %hu from primary access state %s to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"implicit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t10_alua_tg_pt_gp*, i32, i32)* @core_alua_do_transition_tg_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_alua_do_transition_tg_pt(%struct.t10_alua_tg_pt_gp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.t10_alua_tg_pt_gp* %0, %struct.t10_alua_tg_pt_gp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %10 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %13 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %19 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %18, i32 0, i32 2
  %20 = call i32 @mutex_unlock(i32* %19)
  store i32 0, i32* %4, align 4
  br label %103

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ALUA_ACCESS_STATE_TRANSITION, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %30 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %103

34:                                               ; preds = %24, %21
  %35 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %36 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @ALUA_ACCESS_STATE_TRANSITION, align 4
  %39 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %40 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG, align 4
  br label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %50 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %52 = call i32 @core_alua_queue_state_change_ua(%struct.t10_alua_tg_pt_gp* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ALUA_ACCESS_STATE_TRANSITION, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %58 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 0, i32* %4, align 4
  br label %103

60:                                               ; preds = %47
  %61 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %62 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %67 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @msleep_interruptible(i64 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %73 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %75 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %80 = call i32 @core_alua_update_tpg_primary_metadata(%struct.t10_alua_tg_pt_gp* %79)
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %86 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %87 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @config_item_name(i32* %88)
  %90 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %91 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @core_alua_dump_state(i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @core_alua_dump_state(i32 %95)
  %97 = call i32 @pr_debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i8* %85, i32 %89, i32 %92, i32 %94, i32 %96)
  %98 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %99 = call i32 @core_alua_queue_state_change_ua(%struct.t10_alua_tg_pt_gp* %98)
  %100 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %101 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %100, i32 0, i32 2
  %102 = call i32 @mutex_unlock(i32* %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %81, %56, %28, %17
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @core_alua_queue_state_change_ua(%struct.t10_alua_tg_pt_gp*) #1

declare dso_local i32 @msleep_interruptible(i64) #1

declare dso_local i32 @core_alua_update_tpg_primary_metadata(%struct.t10_alua_tg_pt_gp*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @config_item_name(i32*) #1

declare dso_local i32 @core_alua_dump_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
