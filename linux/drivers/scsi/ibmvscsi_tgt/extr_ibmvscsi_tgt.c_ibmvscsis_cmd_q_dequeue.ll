; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_cmd_q_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_cmd_q_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viosrp_crq = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.viosrp_crq* (i32, i32*, %struct.viosrp_crq*)* @ibmvscsis_cmd_q_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.viosrp_crq* @ibmvscsis_cmd_q_dequeue(i32 %0, i32* %1, %struct.viosrp_crq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.viosrp_crq*, align 8
  %7 = alloca %struct.viosrp_crq*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.viosrp_crq* %2, %struct.viosrp_crq** %6, align 8
  %8 = load %struct.viosrp_crq*, %struct.viosrp_crq** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %8, i64 %11
  store %struct.viosrp_crq* %12, %struct.viosrp_crq** %7, align 8
  %13 = load %struct.viosrp_crq*, %struct.viosrp_crq** %7, align 8
  %14 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %20, %21
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = call i32 (...) @dma_rmb()
  br label %26

25:                                               ; preds = %3
  store %struct.viosrp_crq* null, %struct.viosrp_crq** %7, align 8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.viosrp_crq*, %struct.viosrp_crq** %7, align 8
  ret %struct.viosrp_crq* %27
}

declare dso_local i32 @dma_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
