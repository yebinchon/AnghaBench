; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_db_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_db_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.switchtec_ntb = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*)* @switchtec_ntb_db_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_db_read(%struct.ntb_dev* %0) #0 {
  %2 = alloca %struct.ntb_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.switchtec_ntb*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %2, align 8
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %6 = call %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev* %5)
  store %struct.switchtec_ntb* %6, %struct.switchtec_ntb** %4, align 8
  %7 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %4, align 8
  %8 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @ioread64(i32* %10)
  %12 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %4, align 8
  %13 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %11, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %4, align 8
  %18 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  ret i32 %20
}

declare dso_local %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev*) #1

declare dso_local i32 @ioread64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
