; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_console_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_console_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo_vdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlxbf_tmfifo_vring = type { i32 }
%struct.vring_desc = type { i32 }

@MLXBF_TMFIFO_CON_TX_BUF_SIZE = common dso_local global i32 0, align 4
@MLXBF_TMFIFO_CON_TX_BUF_RSV_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vring*)* @mlxbf_tmfifo_console_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_console_output(%struct.mlxbf_tmfifo_vdev* %0, %struct.mlxbf_tmfifo_vring* %1) #0 {
  %3 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %4 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %5 = alloca %struct.vring_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mlxbf_tmfifo_vdev* %0, %struct.mlxbf_tmfifo_vdev** %3, align 8
  store %struct.mlxbf_tmfifo_vring* %1, %struct.mlxbf_tmfifo_vring** %4, align 8
  %8 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %9 = call %struct.vring_desc* @mlxbf_tmfifo_get_next_desc(%struct.mlxbf_tmfifo_vring* %8)
  store %struct.vring_desc* %9, %struct.vring_desc** %5, align 8
  br label %10

10:                                               ; preds = %37, %2
  %11 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %12 = icmp ne %struct.vring_desc* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %15 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %16 = call i64 @mlxbf_tmfifo_get_pkt_len(%struct.mlxbf_tmfifo_vring* %14, %struct.vring_desc* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %3, align 8
  %18 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %3, align 8
  %22 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MLXBF_TMFIFO_CON_TX_BUF_SIZE, align 4
  %26 = call i64 @CIRC_SPACE(i32 %20, i32 %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @MLXBF_TMFIFO_CON_TX_BUF_RSV_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %13
  %33 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %34 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @mlxbf_tmfifo_release_desc(%struct.mlxbf_tmfifo_vring* %33, %struct.vring_desc* %34, i64 %35)
  br label %48

37:                                               ; preds = %13
  %38 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %3, align 8
  %39 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %40 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %41 = call i32 @mlxbf_tmfifo_console_output_one(%struct.mlxbf_tmfifo_vdev* %38, %struct.mlxbf_tmfifo_vring* %39, %struct.vring_desc* %40)
  %42 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %43 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @mlxbf_tmfifo_release_desc(%struct.mlxbf_tmfifo_vring* %42, %struct.vring_desc* %43, i64 %44)
  %46 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %47 = call %struct.vring_desc* @mlxbf_tmfifo_get_next_desc(%struct.mlxbf_tmfifo_vring* %46)
  store %struct.vring_desc* %47, %struct.vring_desc** %5, align 8
  br label %10

48:                                               ; preds = %32, %10
  ret void
}

declare dso_local %struct.vring_desc* @mlxbf_tmfifo_get_next_desc(%struct.mlxbf_tmfifo_vring*) #1

declare dso_local i64 @mlxbf_tmfifo_get_pkt_len(%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*) #1

declare dso_local i64 @CIRC_SPACE(i32, i32, i32) #1

declare dso_local i32 @mlxbf_tmfifo_release_desc(%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*, i64) #1

declare dso_local i32 @mlxbf_tmfifo_console_output_one(%struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vring*, %struct.vring_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
