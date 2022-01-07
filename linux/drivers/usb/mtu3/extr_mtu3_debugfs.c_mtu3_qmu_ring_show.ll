; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_qmu_ring_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_qmu_ring_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mtu3_ep* }
%struct.mtu3_ep = type { %struct.mtu3_gpd_ring, %struct.mtu3* }
%struct.mtu3_gpd_ring = type { i32, i32, i32, i32, i32 }
%struct.mtu3 = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"qmu-ring - dma:%pad, start:%p, end:%p, enq:%p, dep:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mtu3_qmu_ring_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_qmu_ring_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtu3_ep*, align 8
  %6 = alloca %struct.mtu3*, align 8
  %7 = alloca %struct.mtu3_gpd_ring*, align 8
  %8 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.mtu3_ep*, %struct.mtu3_ep** %10, align 8
  store %struct.mtu3_ep* %11, %struct.mtu3_ep** %5, align 8
  %12 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %13 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %12, i32 0, i32 1
  %14 = load %struct.mtu3*, %struct.mtu3** %13, align 8
  store %struct.mtu3* %14, %struct.mtu3** %6, align 8
  %15 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %16 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %15, i32 0, i32 0
  store %struct.mtu3_gpd_ring* %16, %struct.mtu3_gpd_ring** %7, align 8
  %17 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %18 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %7, align 8
  %23 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %22, i32 0, i32 4
  %24 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %7, align 8
  %25 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %7, align 8
  %28 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %7, align 8
  %31 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %7, align 8
  %34 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32* %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %38 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %37, i32 0, i32 0
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
