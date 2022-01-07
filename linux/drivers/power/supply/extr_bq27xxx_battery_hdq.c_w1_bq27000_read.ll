; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_hdq.c_w1_bq27000_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_hdq.c_w1_bq27000_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HDQ_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32)* @w1_bq27000_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_bq27000_read(%struct.w1_slave* %0, i32 %1) #0 {
  %3 = alloca %struct.w1_slave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %7 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %12 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* @HDQ_CMD_READ, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @w1_write_8(%struct.TYPE_3__* %13, i32 %16)
  %18 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %19 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @w1_read_8(%struct.TYPE_3__* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %23 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w1_write_8(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @w1_read_8(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
