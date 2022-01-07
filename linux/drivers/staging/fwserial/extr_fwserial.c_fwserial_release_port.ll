; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_release_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_release_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.TYPE_3__ = type { i64 }

@SCODE_100 = common dso_local global i32 0, align 4
@FWCON_NOTIFY_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwtty_port*, i32)* @fwserial_release_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_release_port(%struct.fwtty_port* %0, i32 %1) #0 {
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca i32, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %9 = call i32 @fwtty_update_port_status(%struct.fwtty_port* %8, i32 0)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %12 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load i32, i32* @SCODE_100, align 4
  %15 = call i32 @link_speed_to_max_payload(i32 %14)
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %17 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %19 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %18, i32 0, i32 6
  %20 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %21 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_fifo_change_tx_limit(i32* %19, i32 %22)
  %24 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %25 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RCU_INIT_POINTER(i32 %26, i32* null)
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %29 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %28, i32 0, i32 3
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %32 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %10
  %37 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %38 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = icmp ne i32 (i32, i32)* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %45 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load i32, i32* @FWCON_NOTIFY_DETACH, align 4
  %50 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %51 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %48(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %43, %36, %10
  ret void
}

declare dso_local i32 @fwtty_update_port_status(%struct.fwtty_port*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @link_speed_to_max_payload(i32) #1

declare dso_local i32 @dma_fifo_change_tx_limit(i32*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
