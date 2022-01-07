; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_add_rx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_add_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i32, %struct.r3964_block_header*, i32, %struct.r3964_block_header* }
%struct.r3964_block_header = type { i32, %struct.r3964_block_header* }

@.str = private unnamed_addr constant [57 x i8] c"add_rx_queue: %p, length = %d, rx_first = %p, count = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*, %struct.r3964_block_header*)* @add_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rx_queue(%struct.r3964_info* %0, %struct.r3964_block_header* %1) #0 {
  %3 = alloca %struct.r3964_info*, align 8
  %4 = alloca %struct.r3964_block_header*, align 8
  %5 = alloca i64, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %3, align 8
  store %struct.r3964_block_header* %1, %struct.r3964_block_header** %4, align 8
  %6 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %7 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %6, i32 0, i32 2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %11 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %10, i32 0, i32 1
  store %struct.r3964_block_header* null, %struct.r3964_block_header** %11, align 8
  %12 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %13 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %12, i32 0, i32 3
  %14 = load %struct.r3964_block_header*, %struct.r3964_block_header** %13, align 8
  %15 = icmp eq %struct.r3964_block_header* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %18 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %19 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %18, i32 0, i32 3
  store %struct.r3964_block_header* %17, %struct.r3964_block_header** %19, align 8
  %20 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %21 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %20, i32 0, i32 1
  store %struct.r3964_block_header* %17, %struct.r3964_block_header** %21, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %24 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %25 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %24, i32 0, i32 3
  %26 = load %struct.r3964_block_header*, %struct.r3964_block_header** %25, align 8
  %27 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %26, i32 0, i32 1
  store %struct.r3964_block_header* %23, %struct.r3964_block_header** %27, align 8
  %28 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %29 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %30 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %29, i32 0, i32 3
  store %struct.r3964_block_header* %28, %struct.r3964_block_header** %30, align 8
  br label %31

31:                                               ; preds = %22, %16
  %32 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %33 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %37 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %36, i32 0, i32 2
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %41 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %42 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %45 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %44, i32 0, i32 1
  %46 = load %struct.r3964_block_header*, %struct.r3964_block_header** %45, align 8
  %47 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %48 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @TRACE_Q(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.r3964_block_header* %40, i32 %43, %struct.r3964_block_header* %46, i32 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @TRACE_Q(i8*, %struct.r3964_block_header*, i32, %struct.r3964_block_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
