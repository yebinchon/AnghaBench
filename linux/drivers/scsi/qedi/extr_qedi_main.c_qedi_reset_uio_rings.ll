; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_reset_uio_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_reset_uio_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_uio_dev = type { i32, i32, i32, i32, %struct.qedi_uio_ctrl*, %struct.qedi_ctx* }
%struct.qedi_uio_ctrl = type { i64, i64, i64, i64 }
%struct.qedi_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_uio_dev*)* @qedi_reset_uio_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_reset_uio_rings(%struct.qedi_uio_dev* %0) #0 {
  %2 = alloca %struct.qedi_uio_dev*, align 8
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca %struct.qedi_uio_ctrl*, align 8
  store %struct.qedi_uio_dev* %0, %struct.qedi_uio_dev** %2, align 8
  store %struct.qedi_ctx* null, %struct.qedi_ctx** %3, align 8
  store %struct.qedi_uio_ctrl* null, %struct.qedi_uio_ctrl** %4, align 8
  %5 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %5, i32 0, i32 5
  %7 = load %struct.qedi_ctx*, %struct.qedi_ctx** %6, align 8
  store %struct.qedi_ctx* %7, %struct.qedi_ctx** %3, align 8
  %8 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %2, align 8
  %9 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %8, i32 0, i32 4
  %10 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %9, align 8
  store %struct.qedi_uio_ctrl* %10, %struct.qedi_uio_ctrl** %4, align 8
  %11 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.qedi_uio_ctrl, %struct.qedi_uio_ctrl* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %4, align 8
  %17 = getelementptr inbounds %struct.qedi_uio_ctrl, %struct.qedi_uio_ctrl* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %4, align 8
  %19 = getelementptr inbounds %struct.qedi_uio_ctrl, %struct.qedi_uio_ctrl* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.qedi_uio_ctrl*, %struct.qedi_uio_ctrl** %4, align 8
  %21 = getelementptr inbounds %struct.qedi_uio_ctrl, %struct.qedi_uio_ctrl* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %2, align 8
  %23 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %2, align 8
  %26 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(i32 %24, i32 0, i32 %27)
  %29 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %2, align 8
  %30 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %2, align 8
  %33 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memset(i32 %31, i32 0, i32 %34)
  %36 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
