; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Entered RESET state from %s state\0A\00", align 1
@LPORT_ST_DISABLED = common dso_local global i64 0, align 8
@LPORT_ST_LOGO = common dso_local global i64 0, align 8
@FC_VPORT_INITIALIZING = common dso_local global i32 0, align 4
@FC_VPORT_LINKDOWN = common dso_local global i32 0, align 4
@LPORT_ST_RESET = common dso_local global i32 0, align 4
@FCH_EVT_LIPRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_lport_enter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_enter_reset(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %3, i32 0, i32 4
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = call i32 @fc_lport_state(%struct.fc_lport* %7)
  %9 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %11 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPORT_ST_DISABLED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %17 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LPORT_ST_LOGO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  br label %66

22:                                               ; preds = %15
  %23 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %24 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %34 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @FC_VPORT_INITIALIZING, align 4
  %37 = call i32 @fc_vport_set_state(i64 %35, i32 %36)
  br label %44

38:                                               ; preds = %27
  %39 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %43 = call i32 @fc_vport_set_state(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %47 = load i32, i32* @LPORT_ST_RESET, align 4
  %48 = call i32 @fc_lport_state_enter(%struct.fc_lport* %46, i32 %47)
  %49 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %50 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (...) @fc_get_event_number()
  %53 = load i32, i32* @FCH_EVT_LIPRESET, align 4
  %54 = call i32 @fc_host_post_event(i32 %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %56 = call i32 @fc_vports_linkchange(%struct.fc_lport* %55)
  %57 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %58 = call i32 @fc_lport_reset_locked(%struct.fc_lport* %57)
  %59 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %60 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %65 = call i32 @fc_lport_enter_flogi(%struct.fc_lport* %64)
  br label %66

66:                                               ; preds = %21, %63, %45
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fc_vport_set_state(i64, i32) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_host_post_event(i32, i32, i32, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @fc_vports_linkchange(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_reset_locked(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_enter_flogi(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
