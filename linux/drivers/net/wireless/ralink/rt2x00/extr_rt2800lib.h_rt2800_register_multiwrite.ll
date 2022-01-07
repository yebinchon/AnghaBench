; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.h_rt2800_register_multiwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.h_rt2800_register_multiwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rt2800_ops* }
%struct.rt2800_ops = type { i32 (%struct.rt2x00_dev*, i32, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32, i8*, i32)* @rt2800_register_multiwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_register_multiwrite(%struct.rt2x00_dev* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2800_ops*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.rt2800_ops*, %struct.rt2800_ops** %13, align 8
  store %struct.rt2800_ops* %14, %struct.rt2800_ops** %9, align 8
  %15 = load %struct.rt2800_ops*, %struct.rt2800_ops** %9, align 8
  %16 = getelementptr inbounds %struct.rt2800_ops, %struct.rt2800_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.rt2x00_dev*, i32, i8*, i32)*, i32 (%struct.rt2x00_dev*, i32, i8*, i32)** %16, align 8
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 %17(%struct.rt2x00_dev* %18, i32 %19, i8* %20, i32 %21)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
