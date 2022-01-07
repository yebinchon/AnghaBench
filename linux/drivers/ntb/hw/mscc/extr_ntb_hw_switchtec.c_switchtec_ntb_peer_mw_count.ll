; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_peer_mw_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_peer_mw_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.switchtec_ntb = type { i32, i32, i32 }

@use_lut_mws = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*)* @switchtec_ntb_peer_mw_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_peer_mw_count(%struct.ntb_dev* %0) #0 {
  %2 = alloca %struct.ntb_dev*, align 8
  %3 = alloca %struct.switchtec_ntb*, align 8
  %4 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %2, align 8
  %5 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %6 = call %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev* %5)
  store %struct.switchtec_ntb* %6, %struct.switchtec_ntb** %3, align 8
  %7 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %8 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %11 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %3, align 8
  %15 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @use_lut_mws, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = add nsw i32 %16, %23
  ret i32 %24
}

declare dso_local %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
