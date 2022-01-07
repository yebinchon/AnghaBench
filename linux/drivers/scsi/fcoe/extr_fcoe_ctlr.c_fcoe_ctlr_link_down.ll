; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"link down.\0A\00", align 1
@FIP_ST_LINK_WAIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcoe_ctlr_link_down(%struct.fcoe_ctlr* %0) #0 {
  %2 = alloca %struct.fcoe_ctlr*, align 8
  %3 = alloca i32, align 4
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %2, align 8
  %4 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %5 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %7 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %10 = call i32 @fcoe_ctlr_reset(%struct.fcoe_ctlr* %9)
  %11 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %12 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FIP_ST_LINK_WAIT, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %18 = load i64, i64* @FIP_ST_LINK_WAIT, align 8
  %19 = call i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr* %17, i64 %18)
  %20 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %21 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %20, i32 0, i32 2
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %27 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @fc_linkdown(i32 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fcoe_ctlr_reset(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_linkdown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
