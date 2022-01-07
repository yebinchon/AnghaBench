; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_virt_plug_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_virt_plug_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_peer = type { i64, i32, %struct.fwtty_port*, i32, i32, i8*, i8* }
%struct.fwtty_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.TYPE_3__ = type { i64 }
%struct.virt_plug_params = type { i32, i32, i32, i32, i32 }

@FWPS_ATTACHED = common dso_local global i32 0, align 4
@FWCON_NOTIFY_ATTACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"peer (guid:%016llx) connected on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwtty_peer*, %struct.virt_plug_params*)* @fwserial_virt_plug_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_virt_plug_complete(%struct.fwtty_peer* %0, %struct.virt_plug_params* %1) #0 {
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca %struct.virt_plug_params*, align 8
  %5 = alloca %struct.fwtty_port*, align 8
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %3, align 8
  store %struct.virt_plug_params* %1, %struct.virt_plug_params** %4, align 8
  %6 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %7 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %6, i32 0, i32 2
  %8 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  store %struct.fwtty_port* %8, %struct.fwtty_port** %5, align 8
  %9 = load %struct.virt_plug_params*, %struct.virt_plug_params** %4, align 8
  %10 = getelementptr inbounds %struct.virt_plug_params, %struct.virt_plug_params* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.virt_plug_params*, %struct.virt_plug_params** %4, align 8
  %13 = getelementptr inbounds %struct.virt_plug_params, %struct.virt_plug_params* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @be32_to_u64(i32 %11, i32 %14)
  %16 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %17 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load %struct.virt_plug_params*, %struct.virt_plug_params** %4, align 8
  %19 = getelementptr inbounds %struct.virt_plug_params, %struct.virt_plug_params* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.virt_plug_params*, %struct.virt_plug_params** %4, align 8
  %22 = getelementptr inbounds %struct.virt_plug_params, %struct.virt_plug_params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @be32_to_u64(i32 %20, i32 %23)
  %25 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %26 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.virt_plug_params*, %struct.virt_plug_params** %4, align 8
  %28 = getelementptr inbounds %struct.virt_plug_params, %struct.virt_plug_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  %31 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %32 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %34 = load i32, i32* @FWPS_ATTACHED, align 4
  %35 = call i32 @peer_set_state(%struct.fwtty_peer* %33, i32 %34)
  %36 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %37 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %36, i32 0, i32 4
  %38 = call i32 @spin_lock_bh(i32* %37)
  %39 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %40 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %43 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @min(i32 %41, i32 %44)
  %46 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %47 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %49 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %48, i32 0, i32 6
  %50 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %51 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dma_fifo_change_tx_limit(i32* %49, i32 %52)
  %54 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %55 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %54, i32 0, i32 2
  %56 = load %struct.fwtty_port*, %struct.fwtty_port** %55, align 8
  %57 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %56, i32 0, i32 4
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %60 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %2
  %65 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %66 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = icmp ne i32 (i32, i32)* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %73 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (i32, i32)*, i32 (i32, i32)** %75, align 8
  %77 = load i32, i32* @FWCON_NOTIFY_ATTACH, align 4
  %78 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %79 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %76(i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %71, %64, %2
  %83 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %84 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %83, i32 0, i32 1
  %85 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %86 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %89 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_name(i32 %90)
  %92 = call i32 @fwtty_info(i32* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %87, i32 %91)
  ret void
}

declare dso_local i8* @be32_to_u64(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @peer_set_state(%struct.fwtty_peer*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dma_fifo_change_tx_limit(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwtty_info(i32*, i8*, i64, i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
