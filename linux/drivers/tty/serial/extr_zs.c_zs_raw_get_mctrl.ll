; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_raw_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_raw_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.zs_port* }

@ZS_CHAN_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zs_port*)* @zs_raw_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zs_raw_get_mctrl(%struct.zs_port* %0) #0 {
  %2 = alloca %struct.zs_port*, align 8
  %3 = alloca %struct.zs_port*, align 8
  store %struct.zs_port* %0, %struct.zs_port** %2, align 8
  %4 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %5 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %9 = load i64, i64* @ZS_CHAN_A, align 8
  %10 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %8, i64 %9
  store %struct.zs_port* %10, %struct.zs_port** %3, align 8
  %11 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %12 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %13 = icmp ne %struct.zs_port* %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %16 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %17 = call i32 @zs_raw_get_ab_mctrl(%struct.zs_port* %15, %struct.zs_port* %16)
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ %17, %14 ], [ 0, %18 ]
  ret i32 %20
}

declare dso_local i32 @zs_raw_get_ab_mctrl(%struct.zs_port*, %struct.zs_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
