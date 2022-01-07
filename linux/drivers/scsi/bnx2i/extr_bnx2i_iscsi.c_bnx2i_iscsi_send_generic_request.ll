; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_iscsi_send_generic_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_iscsi_send_generic_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.TYPE_6__*, %struct.bnx2i_cmd* }
%struct.TYPE_6__ = type { i32 }
%struct.bnx2i_cmd = type { %struct.bnx2i_conn* }
%struct.bnx2i_conn = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"send_gen: unsupported op 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @bnx2i_iscsi_send_generic_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_iscsi_send_generic_request(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.bnx2i_cmd*, align 8
  %4 = alloca %struct.bnx2i_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 1
  %10 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %9, align 8
  store %struct.bnx2i_cmd* %10, %struct.bnx2i_cmd** %3, align 8
  %11 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %11, i32 0, i32 0
  %13 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %12, align 8
  store %struct.bnx2i_conn* %13, %struct.bnx2i_conn** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %15 = call i32 @bnx2i_iscsi_prep_generic_pdu_bd(%struct.bnx2i_conn* %14)
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %61 [
    i32 132, label %23
    i32 130, label %27
    i32 131, label %49
    i32 129, label %53
    i32 128, label %57
  ]

23:                                               ; preds = %1
  %24 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %26 = call i32 @bnx2i_send_iscsi_login(%struct.bnx2i_conn* %24, %struct.iscsi_task* %25)
  br label %74

27:                                               ; preds = %1
  %28 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %40 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @bnx2i_send_iscsi_nopout(%struct.bnx2i_conn* %39, %struct.iscsi_task* %40, i8* %41, i32 %42, i32 1)
  store i32 %43, i32* %5, align 4
  br label %48

44:                                               ; preds = %27
  %45 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %46 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %47 = call i32 @bnx2i_send_iscsi_nopout(%struct.bnx2i_conn* %45, %struct.iscsi_task* %46, i8* null, i32 0, i32 1)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %38
  br label %74

49:                                               ; preds = %1
  %50 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %51 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %52 = call i32 @bnx2i_send_iscsi_logout(%struct.bnx2i_conn* %50, %struct.iscsi_task* %51)
  store i32 %52, i32* %5, align 4
  br label %74

53:                                               ; preds = %1
  %54 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %55 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %56 = call i32 @bnx2i_send_iscsi_tmf(%struct.bnx2i_conn* %54, %struct.iscsi_task* %55)
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %1
  %58 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %59 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %60 = call i32 @bnx2i_send_iscsi_text(%struct.bnx2i_conn* %58, %struct.iscsi_task* %59)
  store i32 %60, i32* %5, align 4
  br label %74

61:                                               ; preds = %1
  %62 = load i32, i32* @KERN_ALERT, align 4
  %63 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %64 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %69 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iscsi_conn_printk(i32 %62, i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %61, %57, %53, %49, %48, %23
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @bnx2i_iscsi_prep_generic_pdu_bd(%struct.bnx2i_conn*) #1

declare dso_local i32 @bnx2i_send_iscsi_login(%struct.bnx2i_conn*, %struct.iscsi_task*) #1

declare dso_local i32 @bnx2i_send_iscsi_nopout(%struct.bnx2i_conn*, %struct.iscsi_task*, i8*, i32, i32) #1

declare dso_local i32 @bnx2i_send_iscsi_logout(%struct.bnx2i_conn*, %struct.iscsi_task*) #1

declare dso_local i32 @bnx2i_send_iscsi_tmf(%struct.bnx2i_conn*, %struct.iscsi_task*) #1

declare dso_local i32 @bnx2i_send_iscsi_text(%struct.bnx2i_conn*, %struct.iscsi_task*) #1

declare dso_local i32 @iscsi_conn_printk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
