; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_set_ch_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_set_ch_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_t = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ch_t*, i32, i32)* @set_ch_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ch_t(%struct.ch_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ch_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ch_t* %0, %struct.ch_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = load %struct.ch_t*, %struct.ch_t** %4, align 8
  %10 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 16
  %13 = load %struct.ch_t*, %struct.ch_t** %4, align 8
  %14 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ch_t*, %struct.ch_t** %4, align 8
  %16 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 4
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ch_t*, %struct.ch_t** %4, align 8
  %21 = getelementptr inbounds %struct.ch_t, %struct.ch_t* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
