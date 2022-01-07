; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_session_chkready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_session_chkready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32, i32 }

@DID_IMM_RETRY = common dso_local global i32 0, align 4
@DID_TRANSPORT_FAILFAST = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_session_chkready(%struct.iscsi_cls_session* %0) #0 {
  %2 = alloca %struct.iscsi_cls_session*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %2, align 8
  %5 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %10 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %19 [
    i32 128, label %12
    i32 130, label %13
    i32 129, label %16
  ]

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @DID_IMM_RETRY, align 4
  %15 = shl i32 %14, 16
  store i32 %15, i32* %4, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @DID_TRANSPORT_FAILFAST, align 4
  %18 = shl i32 %17, 16
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @DID_NO_CONNECT, align 4
  %21 = shl i32 %20, 16
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %16, %13, %12
  %23 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %2, align 8
  %24 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %23, i32 0, i32 1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
