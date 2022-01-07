; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_dns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fc_rport_priv = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"Entered DNS state from %s state\0A\00", align 1
@LPORT_ST_DNS = common dso_local global i32 0, align 4
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@fc_lport_rport_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_lport_enter_dns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_enter_dns(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %4, i32 0, i32 1
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %9 = call i32 @fc_lport_state(%struct.fc_lport* %8)
  %10 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %12 = load i32, i32* @LPORT_ST_DNS, align 4
  %13 = call i32 @fc_lport_state_enter(%struct.fc_lport* %11, i32 %12)
  %14 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %15 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %19 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %20 = call %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport* %18, i32 %19)
  store %struct.fc_rport_priv* %20, %struct.fc_rport_priv** %3, align 8
  %21 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %22 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %26 = icmp ne %struct.fc_rport_priv* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %33

28:                                               ; preds = %1
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %30 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %29, i32 0, i32 0
  store i32* @fc_lport_rport_ops, i32** %30, align 8
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %32 = call i32 @fc_rport_login(%struct.fc_rport_priv* %31)
  br label %36

33:                                               ; preds = %27
  %34 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %35 = call i32 @fc_lport_error(%struct.fc_lport* %34, i32* null)
  br label %36

36:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_rport_login(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_lport_error(%struct.fc_lport*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
