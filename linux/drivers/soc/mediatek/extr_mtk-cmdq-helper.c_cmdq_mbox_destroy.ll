; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_mbox_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-cmdq-helper.c_cmdq_mbox_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_client = type { i64, i32, i32, i32 }

@CMDQ_NO_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmdq_mbox_destroy(%struct.cmdq_client* %0) #0 {
  %2 = alloca %struct.cmdq_client*, align 8
  store %struct.cmdq_client* %0, %struct.cmdq_client** %2, align 8
  %3 = load %struct.cmdq_client*, %struct.cmdq_client** %2, align 8
  %4 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CMDQ_NO_TIMEOUT, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.cmdq_client*, %struct.cmdq_client** %2, align 8
  %10 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.cmdq_client*, %struct.cmdq_client** %2, align 8
  %13 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %12, i32 0, i32 3
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.cmdq_client*, %struct.cmdq_client** %2, align 8
  %16 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %15, i32 0, i32 2
  %17 = call i32 @spin_unlock(i32* %16)
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.cmdq_client*, %struct.cmdq_client** %2, align 8
  %20 = getelementptr inbounds %struct.cmdq_client, %struct.cmdq_client* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mbox_free_channel(i32 %21)
  %23 = load %struct.cmdq_client*, %struct.cmdq_client** %2, align 8
  %24 = call i32 @kfree(%struct.cmdq_client* %23)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mbox_free_channel(i32) #1

declare dso_local i32 @kfree(%struct.cmdq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
