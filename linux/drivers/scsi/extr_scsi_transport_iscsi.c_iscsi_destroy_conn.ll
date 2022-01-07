; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_destroy_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_destroy_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { i32, i32 }

@connlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Completing conn destruction\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_destroy_conn(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca i64, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @connlock, i64 %4)
  %6 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @connlock, i64 %9)
  %11 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %11, i32 0, i32 0
  %13 = call i32 @transport_unregister_device(i32* %12)
  %14 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %15 = call i32 @ISCSI_DBG_TRANS_CONN(%struct.iscsi_cls_conn* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %17 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %16, i32 0, i32 0
  %18 = call i32 @device_unregister(i32* %17)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @transport_unregister_device(i32*) #1

declare dso_local i32 @ISCSI_DBG_TRANS_CONN(%struct.iscsi_cls_conn*, i8*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
