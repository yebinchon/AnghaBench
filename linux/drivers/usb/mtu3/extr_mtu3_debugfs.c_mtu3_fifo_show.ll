; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_fifo_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_fifo_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mtu3_ep* }
%struct.mtu3_ep = type { i32, i32, i32, %struct.mtu3* }
%struct.mtu3 = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"fifo - seg_size:%d, addr:%d, size:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mtu3_fifo_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_fifo_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtu3_ep*, align 8
  %6 = alloca %struct.mtu3*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.mtu3_ep*, %struct.mtu3_ep** %9, align 8
  store %struct.mtu3_ep* %10, %struct.mtu3_ep** %5, align 8
  %11 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %12 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %11, i32 0, i32 3
  %13 = load %struct.mtu3*, %struct.mtu3** %12, align 8
  store %struct.mtu3* %13, %struct.mtu3** %6, align 8
  %14 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %15 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %20 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %23 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %26 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  %29 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %30 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
