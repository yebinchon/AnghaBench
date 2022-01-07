; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_is_new_iqwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_is_new_iqwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_q = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.csio_iqwr_footer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IQWRF_GEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_q*, %struct.csio_iqwr_footer*)* @csio_is_new_iqwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_is_new_iqwr(%struct.csio_q* %0, %struct.csio_iqwr_footer* %1) #0 {
  %3 = alloca %struct.csio_q*, align 8
  %4 = alloca %struct.csio_iqwr_footer*, align 8
  store %struct.csio_q* %0, %struct.csio_q** %3, align 8
  store %struct.csio_iqwr_footer* %1, %struct.csio_iqwr_footer** %4, align 8
  %5 = load %struct.csio_q*, %struct.csio_q** %3, align 8
  %6 = getelementptr inbounds %struct.csio_q, %struct.csio_q* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.csio_iqwr_footer*, %struct.csio_iqwr_footer** %4, align 8
  %11 = getelementptr inbounds %struct.csio_iqwr_footer, %struct.csio_iqwr_footer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IQWRF_GEN_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = icmp eq i32 %9, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
