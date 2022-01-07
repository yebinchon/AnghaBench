; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@xs_reboot_nb = common dso_local global i32 0, align 4
@xenwatch_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"xenwatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = call i32 @register_reboot_notifier(i32* @xs_reboot_nb)
  %5 = call i32 (...) @xb_init_comms()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %21

10:                                               ; preds = %0
  %11 = load i32, i32* @xenwatch_thread, align 4
  %12 = call %struct.task_struct* @kthread_run(i32 %11, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %12, %struct.task_struct** %3, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = call i64 @IS_ERR(%struct.task_struct* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call i32 @PTR_ERR(%struct.task_struct* %17)
  store i32 %18, i32* %1, align 4
  br label %21

19:                                               ; preds = %10
  %20 = call i32 (...) @xs_reset_watches()
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %16, %8
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @register_reboot_notifier(i32*) #1

declare dso_local i32 @xb_init_comms(...) #1

declare dso_local %struct.task_struct* @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @xs_reset_watches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
