; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, i32, i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Error %d in state %s, retries %d\0A\00", align 1
@FC_RP_STARTED = common dso_local global i32 0, align 4
@RPORT_EV_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*, i32)* @fc_rport_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_error(%struct.fc_rport_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_lport*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %7 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %6, i32 0, i32 4
  %8 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  store %struct.fc_lport* %8, %struct.fc_lport** %5, align 8
  %9 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %10 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %9, i32 0, i32 3
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 0, %13
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %16 = call i32 @fc_rport_state(%struct.fc_rport_priv* %15)
  %17 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %18 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %19)
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %22 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %60 [
    i32 134, label %24
    i32 132, label %34
    i32 128, label %53
    i32 130, label %56
    i32 136, label %56
    i32 131, label %59
    i32 135, label %59
    i32 129, label %59
    i32 133, label %59
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @FC_RP_STARTED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %28 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %32 = load i32, i32* @RPORT_EV_FAILED, align 4
  %33 = call i32 @fc_rport_enter_delete(%struct.fc_rport_priv* %31, i32 %32)
  br label %60

34:                                               ; preds = %2
  %35 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %36 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* @FC_RP_STARTED, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %43 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %47 = load i32, i32* @RPORT_EV_FAILED, align 4
  %48 = call i32 @fc_rport_enter_delete(%struct.fc_rport_priv* %46, i32 %47)
  br label %52

49:                                               ; preds = %34
  %50 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %51 = call i32 @fc_rport_enter_logo(%struct.fc_rport_priv* %50)
  br label %52

52:                                               ; preds = %49, %39
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %55 = call i32 @fc_rport_enter_ready(%struct.fc_rport_priv* %54)
  br label %60

56:                                               ; preds = %2, %2
  %57 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  %58 = call i32 @fc_rport_enter_logo(%struct.fc_rport_priv* %57)
  br label %60

59:                                               ; preds = %2, %2, %2, %2
  br label %60

60:                                               ; preds = %2, %59, %56, %53, %52, %24
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_delete(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @fc_rport_enter_logo(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_ready(%struct.fc_rport_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
