; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_wq_cmpl_handler_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_wq_cmpl_handler_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.cq_desc = type { i32 }
%struct.snic = type { i32*, i32* }

@snic_wq_cmpl_frame_send = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, %struct.cq_desc*, i32, i64, i64, i8*)* @snic_wq_cmpl_handler_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_wq_cmpl_handler_cont(%struct.vnic_dev* %0, %struct.cq_desc* %1, i32 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.vnic_dev*, align 8
  %8 = alloca %struct.cq_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.snic*, align 8
  %14 = alloca i64, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %7, align 8
  store %struct.cq_desc* %1, %struct.cq_desc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %16 = call %struct.snic* @svnic_dev_priv(%struct.vnic_dev* %15)
  store %struct.snic* %16, %struct.snic** %13, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @SNIC_BUG_ON(i32 %19)
  %21 = load %struct.snic*, %struct.snic** %13, align 8
  %22 = getelementptr inbounds %struct.snic, %struct.snic* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snic*, %struct.snic** %13, align 8
  %29 = getelementptr inbounds %struct.snic, %struct.snic* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load %struct.cq_desc*, %struct.cq_desc** %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* @snic_wq_cmpl_frame_send, align 4
  %36 = call i32 @svnic_wq_service(i32* %32, %struct.cq_desc* %33, i64 %34, i32 %35, i32* null)
  %37 = load %struct.snic*, %struct.snic** %13, align 8
  %38 = getelementptr inbounds %struct.snic, %struct.snic* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret i32 0
}

declare dso_local %struct.snic* @svnic_dev_priv(%struct.vnic_dev*) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @svnic_wq_service(i32*, %struct.cq_desc*, i64, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
