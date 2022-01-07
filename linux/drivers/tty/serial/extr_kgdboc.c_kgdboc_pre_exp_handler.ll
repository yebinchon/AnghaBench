; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdboc.c_kgdboc_pre_exp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdboc.c_kgdboc_pre_exp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@dbg_restore_graphics = common dso_local global i32 0, align 4
@kgdboc_use_kms = common dso_local global i64 0, align 8
@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8
@fg_console = common dso_local global i64 0, align 8
@kgdb_connected = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ignore_console_lock_warning = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kgdboc_pre_exp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdboc_pre_exp_handler() #0 {
  %1 = load i32, i32* @dbg_restore_graphics, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @kgdboc_use_kms, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  store i32 1, i32* @dbg_restore_graphics, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %8 = load i64, i64* @fg_console, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @con_debug_enter(i32 %11)
  br label %13

13:                                               ; preds = %6, %3, %0
  %14 = load i32, i32* @kgdb_connected, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = call i32 @try_module_get(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = call i32 @atomic_inc(i32* @ignore_console_lock_warning)
  ret void
}

declare dso_local i32 @con_debug_enter(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
