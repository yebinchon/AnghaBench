; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.tx_ring = type { i32, i32, %struct.tx_ring_desc*, %struct.ob_mac_iocb_req* }
%struct.tx_ring_desc = type { i32, %struct.ob_mac_iocb_req*, i32* }
%struct.ob_mac_iocb_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.tx_ring*)* @ql_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_init_tx_ring(%struct.ql_adapter* %0, %struct.tx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.tx_ring*, align 8
  %5 = alloca %struct.tx_ring_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ob_mac_iocb_req*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.tx_ring* %1, %struct.tx_ring** %4, align 8
  %8 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %8, i32 0, i32 3
  %10 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %9, align 8
  store %struct.ob_mac_iocb_req* %10, %struct.ob_mac_iocb_req** %7, align 8
  %11 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %11, i32 0, i32 2
  %13 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %12, align 8
  store %struct.tx_ring_desc* %13, %struct.tx_ring_desc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %5, align 8
  %23 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %5, align 8
  %25 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %7, align 8
  %27 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %5, align 8
  %28 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %27, i32 0, i32 1
  store %struct.ob_mac_iocb_req* %26, %struct.ob_mac_iocb_req** %28, align 8
  %29 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %7, align 8
  %30 = getelementptr inbounds %struct.ob_mac_iocb_req, %struct.ob_mac_iocb_req* %29, i32 1
  store %struct.ob_mac_iocb_req* %30, %struct.ob_mac_iocb_req** %7, align 8
  %31 = load %struct.tx_ring_desc*, %struct.tx_ring_desc** %5, align 8
  %32 = getelementptr inbounds %struct.tx_ring_desc, %struct.tx_ring_desc* %31, i32 1
  store %struct.tx_ring_desc* %32, %struct.tx_ring_desc** %5, align 8
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %38 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %37, i32 0, i32 1
  %39 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @atomic_set(i32* %38, i32 %41)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
