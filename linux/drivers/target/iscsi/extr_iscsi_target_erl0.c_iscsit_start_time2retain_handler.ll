; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_start_time2retain_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_start_time2retain_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@TPG_STATE_ACTIVE = common dso_local global i64 0, align 8
@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Starting Time2Retain timer for %u seconds on SID: %u\0A\00", align 1
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_start_time2retain_handler(%struct.iscsi_session* %0) #0 {
  %2 = alloca %struct.iscsi_session*, align 8
  %3 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %2, align 8
  %4 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %4, i32 0, i32 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %10 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TPG_STATE_ACTIVE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %18 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %67

25:                                               ; preds = %1
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %67

33:                                               ; preds = %25
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @ISCSI_TF_STOP, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %46 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %55 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %54, i32 0, i32 2
  %56 = load i64, i64* @jiffies, align 8
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %58 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HZ, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %56, %64
  %66 = call i32 @mod_timer(i32* %55, i64 %65)
  br label %67

67:                                               ; preds = %33, %32, %24
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
