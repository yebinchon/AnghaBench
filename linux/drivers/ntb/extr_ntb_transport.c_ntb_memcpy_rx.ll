; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_memcpy_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_memcpy_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_queue_entry = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_queue_entry*, i8*)* @ntb_memcpy_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_memcpy_rx(%struct.ntb_queue_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.ntb_queue_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ntb_queue_entry* %0, %struct.ntb_queue_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %8 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @memcpy(i8* %13, i8* %14, i64 %15)
  %17 = call i32 (...) @wmb()
  %18 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %19 = call i32 @ntb_rx_copy_callback(%struct.ntb_queue_entry* %18, i32* null)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ntb_rx_copy_callback(%struct.ntb_queue_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
