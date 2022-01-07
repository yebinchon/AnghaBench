; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_clean_xfer_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_clean_xfer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_spilib = type { i64, i64, i64, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_spilib*)* @clean_xfer_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_xfer_state(%struct.gb_spilib* %0) #0 {
  %2 = alloca %struct.gb_spilib*, align 8
  store %struct.gb_spilib* %0, %struct.gb_spilib** %2, align 8
  %3 = load %struct.gb_spilib*, %struct.gb_spilib** %2, align 8
  %4 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %3, i32 0, i32 5
  store i32* null, i32** %4, align 8
  %5 = load %struct.gb_spilib*, %struct.gb_spilib** %2, align 8
  %6 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %5, i32 0, i32 4
  store i32* null, i32** %6, align 8
  %7 = load %struct.gb_spilib*, %struct.gb_spilib** %2, align 8
  %8 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.gb_spilib*, %struct.gb_spilib** %2, align 8
  %10 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.gb_spilib*, %struct.gb_spilib** %2, align 8
  %12 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.gb_spilib*, %struct.gb_spilib** %2, align 8
  %14 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
