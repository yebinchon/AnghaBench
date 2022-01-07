; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.iblock_req* }
%struct.iblock_req = type { i32, i32 }

@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @iblock_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iblock_complete_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.iblock_req*, align 8
  %4 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 0
  %7 = load %struct.iblock_req*, %struct.iblock_req** %6, align 8
  store %struct.iblock_req* %7, %struct.iblock_req** %3, align 8
  %8 = load %struct.iblock_req*, %struct.iblock_req** %3, align 8
  %9 = getelementptr inbounds %struct.iblock_req, %struct.iblock_req* %8, i32 0, i32 1
  %10 = call i32 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.iblock_req*, %struct.iblock_req** %3, align 8
  %15 = getelementptr inbounds %struct.iblock_req, %struct.iblock_req* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %19, i32* %4, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @SAM_STAT_GOOD, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @target_complete_cmd(%struct.se_cmd* %23, i32 %24)
  %26 = load %struct.iblock_req*, %struct.iblock_req** %3, align 8
  %27 = call i32 @kfree(%struct.iblock_req* %26)
  br label %28

28:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @kfree(%struct.iblock_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
