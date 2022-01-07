; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_port_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_port_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_TOTAL_PORTS = common dso_local global i32 0, align 4
@port_table_lock = common dso_local global i32 0, align 4
@port_table = common dso_local global %struct.fwtty_port** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwtty_port* (i32)* @fwtty_port_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwtty_port* @fwtty_port_get(i32 %0) #0 {
  %2 = alloca %struct.fwtty_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwtty_port*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_TOTAL_PORTS, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.fwtty_port* null, %struct.fwtty_port** %2, align 8
  br label %27

9:                                                ; preds = %1
  %10 = call i32 @mutex_lock(i32* @port_table_lock)
  %11 = load %struct.fwtty_port**, %struct.fwtty_port*** @port_table, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %11, i64 %13
  %15 = load %struct.fwtty_port*, %struct.fwtty_port** %14, align 8
  store %struct.fwtty_port* %15, %struct.fwtty_port** %4, align 8
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %17 = icmp ne %struct.fwtty_port* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %20 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @kref_get(i32* %22)
  br label %24

24:                                               ; preds = %18, %9
  %25 = call i32 @mutex_unlock(i32* @port_table_lock)
  %26 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  store %struct.fwtty_port* %26, %struct.fwtty_port** %2, align 8
  br label %27

27:                                               ; preds = %24, %8
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  ret %struct.fwtty_port* %28
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
