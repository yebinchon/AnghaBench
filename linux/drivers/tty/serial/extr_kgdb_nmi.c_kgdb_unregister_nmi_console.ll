; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdb_nmi.c_kgdb_unregister_nmi_console.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdb_nmi.c_kgdb_unregister_nmi_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@arch_kgdb_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@kgdb_nmi_console = common dso_local global i32 0, align 4
@kgdb_nmi_tty_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_unregister_nmi_console() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 0), align 8
  %4 = icmp ne i32 (i32)* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

6:                                                ; preds = %0
  %7 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 0), align 8
  %8 = call i32 %7(i32 0)
  %9 = call i32 @unregister_console(i32* @kgdb_nmi_console)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  br label %24

14:                                               ; preds = %6
  %15 = load i32, i32* @kgdb_nmi_tty_driver, align 4
  %16 = call i32 @tty_unregister_driver(i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @kgdb_nmi_tty_driver, align 4
  %23 = call i32 @put_tty_driver(i32 %22)
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %21, %19, %12, %5
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @unregister_console(i32*) #1

declare dso_local i32 @tty_unregister_driver(i32) #1

declare dso_local i32 @put_tty_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
