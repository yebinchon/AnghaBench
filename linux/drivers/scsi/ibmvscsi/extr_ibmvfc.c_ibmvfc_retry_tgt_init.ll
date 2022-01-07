; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_retry_tgt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_retry_tgt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_target = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IBMVFC_MAX_TGT_INIT_RETRIES = common dso_local global i64 0, align 8
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_target*, void (%struct.ibmvfc_target*)*)* @ibmvfc_retry_tgt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %0, void (%struct.ibmvfc_target*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvfc_target*, align 8
  %5 = alloca void (%struct.ibmvfc_target*)*, align 8
  store %struct.ibmvfc_target* %0, %struct.ibmvfc_target** %4, align 8
  store void (%struct.ibmvfc_target*)* %1, void (%struct.ibmvfc_target*)** %5, align 8
  %6 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %4, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @IBMVFC_MAX_TGT_INIT_RETRIES, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %4, align 8
  %14 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %15 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %13, i32 %14)
  %16 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %4, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @wake_up(i32* %19)
  store i32 0, i32* %3, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %4, align 8
  %23 = load void (%struct.ibmvfc_target*)*, void (%struct.ibmvfc_target*)** %5, align 8
  %24 = call i32 @ibmvfc_init_tgt(%struct.ibmvfc_target* %22, void (%struct.ibmvfc_target*)* %23)
  br label %25

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ibmvfc_init_tgt(%struct.ibmvfc_target*, void (%struct.ibmvfc_target*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
