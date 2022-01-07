; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_probe_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_probe_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i32 }
%struct.fcoe_rport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"vn_probe_reply: restart state %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"vn_probe_reply: send claim notify\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fcoe_rport*)* @fcoe_ctlr_vn_probe_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_probe_reply(%struct.fcoe_ctlr* %0, %struct.fcoe_rport* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_rport*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fcoe_rport* %1, %struct.fcoe_rport** %4, align 8
  %5 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %6 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %11 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %17 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %32 [
    i32 129, label %19
    i32 131, label %19
    i32 130, label %19
    i32 132, label %19
    i32 128, label %27
  ]

19:                                               ; preds = %15, %15, %15, %15
  %20 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %21 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %22 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %26 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %25)
  br label %33

27:                                               ; preds = %15
  %28 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %29 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %31 = call i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr* %30)
  br label %33

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %14, %32, %27, %19
  ret void
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, ...) #1

declare dso_local i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
