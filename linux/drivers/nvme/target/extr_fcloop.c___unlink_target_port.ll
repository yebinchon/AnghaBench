; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c___unlink_target_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c___unlink_target_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcloop_tport = type { i32 }
%struct.fcloop_nport = type { %struct.fcloop_tport*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fcloop_tport* (%struct.fcloop_nport*)* @__unlink_target_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fcloop_tport* @__unlink_target_port(%struct.fcloop_nport* %0) #0 {
  %2 = alloca %struct.fcloop_nport*, align 8
  %3 = alloca %struct.fcloop_tport*, align 8
  store %struct.fcloop_nport* %0, %struct.fcloop_nport** %2, align 8
  %4 = load %struct.fcloop_nport*, %struct.fcloop_nport** %2, align 8
  %5 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %4, i32 0, i32 0
  %6 = load %struct.fcloop_tport*, %struct.fcloop_tport** %5, align 8
  store %struct.fcloop_tport* %6, %struct.fcloop_tport** %3, align 8
  %7 = load %struct.fcloop_tport*, %struct.fcloop_tport** %3, align 8
  %8 = icmp ne %struct.fcloop_tport* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.fcloop_nport*, %struct.fcloop_nport** %2, align 8
  %11 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.fcloop_nport*, %struct.fcloop_nport** %2, align 8
  %16 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %14, %9, %1
  %20 = load %struct.fcloop_nport*, %struct.fcloop_nport** %2, align 8
  %21 = getelementptr inbounds %struct.fcloop_nport, %struct.fcloop_nport* %20, i32 0, i32 0
  store %struct.fcloop_tport* null, %struct.fcloop_tport** %21, align 8
  %22 = load %struct.fcloop_tport*, %struct.fcloop_tport** %3, align 8
  ret %struct.fcloop_tport* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
