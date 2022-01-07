; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_get_physaddr_fm_api.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_get_physaddr_fm_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_sg_context = type { i32, i64 }
%struct.esas2r_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.esas2r_sg_context*, i64*)* @get_physaddr_fm_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_physaddr_fm_api(%struct.esas2r_sg_context* %0, i64* %1) #0 {
  %3 = alloca %struct.esas2r_sg_context*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.esas2r_sg_context* %0, %struct.esas2r_sg_context** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.esas2r_adapter*
  store %struct.esas2r_adapter* %10, %struct.esas2r_adapter** %5, align 8
  %11 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %3, align 8
  %12 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
