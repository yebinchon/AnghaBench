; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo = type { i32, i32, i32 }

@MLXBF_TMFIFO_VDEV_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo*)* @mlxbf_tmfifo_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_cleanup(%struct.mlxbf_tmfifo* %0) #0 {
  %2 = alloca %struct.mlxbf_tmfifo*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo** %2, align 8
  %4 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %5 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %7 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %6, i32 0, i32 2
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %10 = call i32 @mlxbf_tmfifo_disable_irqs(%struct.mlxbf_tmfifo* %9)
  %11 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %12 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %11, i32 0, i32 1
  %13 = call i32 @cancel_work_sync(i32* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %22, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MLXBF_TMFIFO_VDEV_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @mlxbf_tmfifo_delete_vdev(%struct.mlxbf_tmfifo* %19, i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %14

25:                                               ; preds = %14
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mlxbf_tmfifo_disable_irqs(%struct.mlxbf_tmfifo*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mlxbf_tmfifo_delete_vdev(%struct.mlxbf_tmfifo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
