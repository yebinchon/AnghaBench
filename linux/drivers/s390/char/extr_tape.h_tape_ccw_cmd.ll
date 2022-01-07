; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape.h_tape_ccw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape.h_tape_ccw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccw1* (%struct.ccw1*, i32)* @tape_ccw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccw1* @tape_ccw_cmd(%struct.ccw1* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw1*, align 8
  %4 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %7 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %9 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %11 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %13 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %12, i32 0, i32 0
  %14 = ptrtoint i32* %13 to i64
  %15 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %16 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %18 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %17, i64 1
  ret %struct.ccw1* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
