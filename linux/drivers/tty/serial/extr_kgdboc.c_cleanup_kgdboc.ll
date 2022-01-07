; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdboc.c_cleanup_kgdboc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_kgdboc.c_cleanup_kgdboc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@configured = common dso_local global i32 0, align 4
@kgdboc_io_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_kgdboc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_kgdboc() #0 {
  %1 = call i64 (...) @kgdb_unregister_nmi_console()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %10

4:                                                ; preds = %0
  %5 = call i32 (...) @kgdboc_unregister_kbd()
  %6 = load i32, i32* @configured, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 @kgdb_unregister_io_module(i32* @kgdboc_io_ops)
  br label %10

10:                                               ; preds = %3, %8, %4
  ret void
}

declare dso_local i64 @kgdb_unregister_nmi_console(...) #1

declare dso_local i32 @kgdboc_unregister_kbd(...) #1

declare dso_local i32 @kgdb_unregister_io_module(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
