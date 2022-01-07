; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_free_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_free_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DeviceCtlBlk = type { i32 }
%struct.ScsiReqBlk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.DeviceCtlBlk*, %struct.ScsiReqBlk*)* @free_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tag(%struct.DeviceCtlBlk* %0, %struct.ScsiReqBlk* %1) #0 {
  %3 = alloca %struct.DeviceCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  store %struct.DeviceCtlBlk* %0, %struct.DeviceCtlBlk** %3, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %4, align 8
  %5 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %6 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 255
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %11 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %16 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %20 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %19, i32 0, i32 0
  store i32 255, i32* %20, align 4
  br label %21

21:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
