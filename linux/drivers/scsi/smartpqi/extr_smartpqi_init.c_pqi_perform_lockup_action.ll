; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_perform_lockup_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_perform_lockup_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pqi_lockup_action = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"FATAL: Smart Family Controller lockup detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pqi_perform_lockup_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_perform_lockup_action() #0 {
  %1 = load i32, i32* @pqi_lockup_action, align 4
  switch i32 %1, label %7 [
    i32 129, label %2
    i32 128, label %4
    i32 130, label %6
  ]

2:                                                ; preds = %0
  %3 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %8

4:                                                ; preds = %0
  %5 = call i32 (...) @emergency_restart()
  br label %8

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %0, %6
  br label %8

8:                                                ; preds = %7, %4, %2
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @emergency_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
