; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_fabric_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_fabric_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i32 }

@LPORT_ST_DISABLED = common dso_local global i64 0, align 8
@LPORT_ST_LOGO = common dso_local global i64 0, align 8
@LPORT_ST_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_fabric_login(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LPORT_ST_DISABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LPORT_ST_LOGO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12, %1
  %19 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %20 = load i32, i32* @LPORT_ST_RESET, align 4
  %21 = call i32 @fc_lport_state_enter(%struct.fc_lport* %19, i32 %20)
  %22 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %23 = call i32 @fc_lport_enter_reset(%struct.fc_lport* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_lport_enter_reset(%struct.fc_lport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
