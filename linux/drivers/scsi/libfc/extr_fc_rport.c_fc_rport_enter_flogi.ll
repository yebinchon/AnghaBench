; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_flogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.TYPE_4__, i32, %struct.fc_lport* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_lport = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Entered FLOGI state from %s state\0A\00", align 1
@RPORT_ST_FLOGI = common dso_local global i32 0, align 4
@FC_EX_ALLOC_ERR = common dso_local global i32 0, align 4
@ELS_FLOGI = common dso_local global i32 0, align 4
@fc_rport_flogi_resp = common dso_local global i32 0, align 4
@FC_EX_XMIT_ERR = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*)* @fc_rport_enter_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_enter_flogi(%struct.fc_rport_priv* %0) #0 {
  %2 = alloca %struct.fc_rport_priv*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.0*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %2, align 8
  %5 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %6 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %5, i32 0, i32 3
  %7 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  store %struct.fc_lport* %7, %struct.fc_lport** %3, align 8
  %8 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %9 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %8, i32 0, i32 2
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  call void @fc_rport_enter_plogi(%struct.fc_rport_priv* %16)
  br label %65

17:                                               ; preds = %1
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %19 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %20 = call i32 @fc_rport_state(%struct.fc_rport_priv* %19)
  %21 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %23 = load i32, i32* @RPORT_ST_FLOGI, align 4
  %24 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %22, i32 %23)
  %25 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %26 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %25, i32 4)
  store %struct.fc_frame.0* %26, %struct.fc_frame.0** %4, align 8
  %27 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %28 = icmp ne %struct.fc_frame.0* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %31 = load i32, i32* @FC_EX_ALLOC_ERR, align 4
  %32 = sub nsw i32 0, %31
  call void @fc_rport_error_retry(%struct.fc_rport_priv* %30, i32 %32)
  br label %65

33:                                               ; preds = %17
  %34 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %35 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %34, i32 0, i32 0
  %36 = call i32 @kref_get(i32* %35)
  %37 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %38 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)** %39, align 8
  %41 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %42 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %43 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %47 = bitcast %struct.fc_frame.0* %46 to %struct.fc_frame*
  %48 = load i32, i32* @ELS_FLOGI, align 4
  %49 = load i32, i32* @fc_rport_flogi_resp, align 4
  %50 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %51 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %52 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 2, %53
  %55 = call i32 %40(%struct.fc_lport* %41, i32 %45, %struct.fc_frame* %47, i32 %48, i32 %49, %struct.fc_rport_priv* %50, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %33
  %58 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %59 = load i32, i32* @FC_EX_XMIT_ERR, align 4
  %60 = sub nsw i32 0, %59
  call void @fc_rport_error_retry(%struct.fc_rport_priv* %58, i32 %60)
  %61 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %62 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %61, i32 0, i32 0
  %63 = load i32, i32* @fc_rport_destroy, align 4
  %64 = call i32 @kref_put(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %15, %29, %57, %33
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local void @fc_rport_enter_plogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local void @fc_rport_error_retry(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
