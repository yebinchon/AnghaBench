; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_get_gb_by_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_get_gb_by_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_tty = type { i32, i32, i64 }

@table_lock = common dso_local global i32 0, align 4
@tty_minors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gb_tty* (i32)* @get_gb_by_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gb_tty* @get_gb_by_minor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_tty*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @table_lock)
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.gb_tty* @idr_find(i32* @tty_minors, i32 %5)
  store %struct.gb_tty* %6, %struct.gb_tty** %3, align 8
  %7 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %8 = icmp ne %struct.gb_tty* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %11 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %14 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %19 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  store %struct.gb_tty* null, %struct.gb_tty** %3, align 8
  br label %28

21:                                               ; preds = %9
  %22 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %23 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %22, i32 0, i32 1
  %24 = call i32 @tty_port_get(i32* %23)
  %25 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %26 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %28

28:                                               ; preds = %21, %17
  br label %29

29:                                               ; preds = %28, %1
  %30 = call i32 @mutex_unlock(i32* @table_lock)
  %31 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  ret %struct.gb_tty* %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gb_tty* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
