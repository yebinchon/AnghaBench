; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, i32, i32 }

@FC_RP_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"port already started\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ADISC port\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Restart deleted port\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Login to port\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Login in progress, state %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_rport_login(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  %4 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %5 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %8 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FC_RP_STARTED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %15 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %17 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %16, i32 0, i32 2
  %18 = call i32 @mutex_unlock(i32* %17)
  store i32 0, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  %20 = load i32, i32* @FC_RP_STARTED, align 4
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %22 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %26 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %41 [
    i32 128, label %28
    i32 130, label %33
    i32 129, label %36
  ]

28:                                               ; preds = %19
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %30 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %32 = call i32 @fc_rport_enter_adisc(%struct.fc_rport_priv* %31)
  br label %46

33:                                               ; preds = %19
  %34 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %35 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %46

36:                                               ; preds = %19
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %38 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %40 = call i32 @fc_rport_enter_flogi(%struct.fc_rport_priv* %39)
  br label %46

41:                                               ; preds = %19
  %42 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %43 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %44 = call i32 @fc_rport_state(%struct.fc_rport_priv* %43)
  %45 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %36, %33, %28
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %48 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %47, i32 0, i32 2
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_rport_enter_adisc(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_flogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
