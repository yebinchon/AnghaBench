; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_session_check_for_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_session_check_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_session = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [42 x i8] c"Waiting for reconnect from node: %016llx\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_session*)* @session_check_for_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @session_check_for_reset(%struct.sbp_session* %0) #0 {
  %2 = alloca %struct.sbp_session*, align 8
  %3 = alloca i32, align 4
  store %struct.sbp_session* %0, %struct.sbp_session** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %5 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %4, i32 0, i32 3
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %8 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %7, i32 0, i32 6
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %13 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %12, i32 0, i32 6
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %18 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %17, i32 0, i32 6
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %25 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %24, i32 0, i32 6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %11
  %32 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %33 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %32, i32 0, i32 6
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @fw_card_put(%struct.TYPE_2__* %34)
  %36 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %37 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %36, i32 0, i32 6
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %37, align 8
  br label %38

38:                                               ; preds = %31, %11
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %44 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %47 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %45, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %42, %39
  %53 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %54 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %58 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 8
  %59 = call i64 (...) @get_jiffies_64()
  %60 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %61 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @HZ, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %59, %66
  %68 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %69 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %52, %42
  %71 = load %struct.sbp_session*, %struct.sbp_session** %2, align 8
  %72 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %71, i32 0, i32 3
  %73 = call i32 @spin_unlock_bh(i32* %72)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @fw_card_put(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
