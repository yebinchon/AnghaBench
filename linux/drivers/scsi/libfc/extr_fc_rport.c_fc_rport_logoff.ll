; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_logoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_logoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i64, i32, i32, %struct.TYPE_4__, %struct.fc_lport* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_lport = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport*, i32, i32)* }

@.str = private unnamed_addr constant [13 x i8] c"Remove port\0A\00", align 1
@FC_RP_STARTED = common dso_local global i32 0, align 4
@RPORT_ST_DELETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Port in Delete state, not removing\0A\00", align 1
@RPORT_EV_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_rport_logoff(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca %struct.fc_rport_priv*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %2, align 8
  %5 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %6 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %5, i32 0, i32 4
  %7 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  store %struct.fc_lport* %7, %struct.fc_lport** %3, align 8
  %8 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %9 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %13 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %16 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FC_RP_STARTED, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %20 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %24 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RPORT_ST_DELETE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %30 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %51

31:                                               ; preds = %1
  %32 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.fc_lport*, i32, i32)*, i32 (%struct.fc_lport*, i32, i32)** %34, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 %35(%struct.fc_lport* %36, i32 0, i32 %37)
  %39 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.fc_lport*, i32, i32)*, i32 (%struct.fc_lport*, i32, i32)** %41, align 8
  %43 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %42(%struct.fc_lport* %43, i32 %44, i32 0)
  %46 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %47 = call i32 @fc_rport_enter_logo(%struct.fc_rport_priv* %46)
  %48 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %49 = load i32, i32* @RPORT_EV_STOP, align 4
  %50 = call i32 @fc_rport_enter_delete(%struct.fc_rport_priv* %48, i32 %49)
  br label %51

51:                                               ; preds = %31, %28
  %52 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %53 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*) #1

declare dso_local i32 @fc_rport_enter_logo(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_delete(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
