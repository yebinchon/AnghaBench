; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_ipc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_ipc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wkup_m3_ipc = type { i32 }

@m3_ipc_state = common dso_local global %struct.wkup_m3_ipc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wkup_m3_ipc* @wkup_m3_ipc_get() #0 {
  %1 = alloca %struct.wkup_m3_ipc*, align 8
  %2 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** @m3_ipc_state, align 8
  %3 = icmp ne %struct.wkup_m3_ipc* %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** @m3_ipc_state, align 8
  %6 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @get_device(i32 %7)
  br label %10

9:                                                ; preds = %0
  store %struct.wkup_m3_ipc* null, %struct.wkup_m3_ipc** %1, align 8
  br label %12

10:                                               ; preds = %4
  %11 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** @m3_ipc_state, align 8
  store %struct.wkup_m3_ipc* %11, %struct.wkup_m3_ipc** %1, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %1, align 8
  ret %struct.wkup_m3_ipc* %13
}

declare dso_local i32 @get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
