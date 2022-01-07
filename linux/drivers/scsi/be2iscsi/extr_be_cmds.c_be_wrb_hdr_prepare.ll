; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_wrb_hdr_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_cmds.c_be_wrb_hdr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_mcc_wrb = type { i32, i32 }

@MCC_WRB_EMBEDDED_MASK = common dso_local global i32 0, align 4
@MCC_WRB_SGE_CNT_MASK = common dso_local global i32 0, align 4
@MCC_WRB_SGE_CNT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.be_mcc_wrb* %0, %struct.be_mcc_wrb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load i32, i32* @MCC_WRB_EMBEDDED_MASK, align 4
  %13 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %14 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %27

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MCC_WRB_SGE_CNT_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @MCC_WRB_SGE_CNT_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %24 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %17, %11
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %30 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %32 = call i32 @be_dws_cpu_to_le(%struct.be_mcc_wrb* %31, i32 8)
  ret void
}

declare dso_local i32 @be_dws_cpu_to_le(%struct.be_mcc_wrb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
