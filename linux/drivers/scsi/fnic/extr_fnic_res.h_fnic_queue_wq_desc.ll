; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_wq_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { i32 }
%struct.wq_enet_desc = type { i32 }

@VNIC_PADDR_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq*, i8*, i64, i32, i32, i32, i32, i32, i32, i32)* @fnic_queue_wq_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_queue_wq_desc(%struct.vnic_wq* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.vnic_wq*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.wq_enet_desc*, align 8
  store %struct.vnic_wq* %0, %struct.vnic_wq** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load %struct.vnic_wq*, %struct.vnic_wq** %11, align 8
  %23 = call %struct.wq_enet_desc* @vnic_wq_next_desc(%struct.vnic_wq* %22)
  store %struct.wq_enet_desc* %23, %struct.wq_enet_desc** %21, align 8
  %24 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %21, align 8
  %25 = load i64, i64* %13, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @VNIC_PADDR_TARGET, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @wq_enet_desc_enc(%struct.wq_enet_desc* %24, i32 %28, i32 %29, i32 0, i32 %30, i32 0, i32 %31, i32 %32, i32 1, i32 %33, i32 %34, i32 0)
  %36 = load %struct.vnic_wq*, %struct.vnic_wq** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %20, align 4
  %42 = call i32 @vnic_wq_post(%struct.vnic_wq* %36, i8* %37, i64 %38, i32 %39, i32 %40, i32 %41)
  ret void
}

declare dso_local %struct.wq_enet_desc* @vnic_wq_next_desc(%struct.vnic_wq*) #1

declare dso_local i32 @wq_enet_desc_enc(%struct.wq_enet_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnic_wq_post(%struct.vnic_wq*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
