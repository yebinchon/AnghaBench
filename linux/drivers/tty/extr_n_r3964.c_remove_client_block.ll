; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_remove_client_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_remove_client_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i32 }
%struct.r3964_client_info = type { %struct.r3964_block_header*, i32 }
%struct.r3964_block_header = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"remove_client_block PID %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*, %struct.r3964_client_info*)* @remove_client_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_client_block(%struct.r3964_info* %0, %struct.r3964_client_info* %1) #0 {
  %3 = alloca %struct.r3964_info*, align 8
  %4 = alloca %struct.r3964_client_info*, align 8
  %5 = alloca %struct.r3964_block_header*, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %3, align 8
  store %struct.r3964_client_info* %1, %struct.r3964_client_info** %4, align 8
  %6 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %7 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pid_nr(i32 %8)
  %10 = call i32 @TRACE_PS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %12 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %11, i32 0, i32 0
  %13 = load %struct.r3964_block_header*, %struct.r3964_block_header** %12, align 8
  store %struct.r3964_block_header* %13, %struct.r3964_block_header** %5, align 8
  %14 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %15 = icmp ne %struct.r3964_block_header* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %18 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %22 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %27 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %28 = call i32 @remove_from_rx_queue(%struct.r3964_info* %26, %struct.r3964_block_header* %27)
  br label %29

29:                                               ; preds = %25, %16
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %32 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %31, i32 0, i32 0
  store %struct.r3964_block_header* null, %struct.r3964_block_header** %32, align 8
  ret void
}

declare dso_local i32 @TRACE_PS(i8*, i32) #1

declare dso_local i32 @pid_nr(i32) #1

declare dso_local i32 @remove_from_rx_queue(%struct.r3964_info*, %struct.r3964_block_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
