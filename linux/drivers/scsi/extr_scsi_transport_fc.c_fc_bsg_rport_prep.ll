; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_rport_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_rport_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i64, i32 }

@FC_PORTSTATE_BLOCKED = common dso_local global i64 0, align 8
@FC_RPORT_FAST_FAIL_TIMEDOUT = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@FC_PORTSTATE_ONLINE = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport*)* @fc_bsg_rport_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_bsg_rport_prep(%struct.fc_rport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_rport*, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %3, align 8
  %4 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %5 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FC_PORTSTATE_BLOCKED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %11 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FC_RPORT_FAST_FAIL_TIMEDOUT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %17, i32* %2, align 4
  br label %28

18:                                               ; preds = %9, %1
  %19 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %20 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FC_PORTSTATE_ONLINE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %24, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
