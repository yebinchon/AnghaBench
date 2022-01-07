; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.TYPE_4__, i32, %struct.fc_lport* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_lport = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"sending ADISC from %s state\0A\00", align 1
@RPORT_ST_ADISC = common dso_local global i32 0, align 4
@FC_EX_ALLOC_ERR = common dso_local global i32 0, align 4
@ELS_ADISC = common dso_local global i32 0, align 4
@fc_rport_adisc_resp = common dso_local global i32 0, align 4
@FC_EX_XMIT_ERR = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*)* @fc_rport_enter_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_enter_adisc(%struct.fc_rport_priv* %0) #0 {
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
  %11 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %13 = call i32 @fc_rport_state(%struct.fc_rport_priv* %12)
  %14 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %16 = load i32, i32* @RPORT_ST_ADISC, align 4
  %17 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %15, i32 %16)
  %18 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %19 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %18, i32 4)
  store %struct.fc_frame.0* %19, %struct.fc_frame.0** %4, align 8
  %20 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %21 = icmp ne %struct.fc_frame.0* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %24 = load i32, i32* @FC_EX_ALLOC_ERR, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %23, i32 %25)
  br label %60

27:                                               ; preds = %1
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %29 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %28, i32 0, i32 0
  %30 = call i32 @kref_get(i32* %29)
  %31 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)** %33, align 8
  %35 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %36 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %37 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %41 = bitcast %struct.fc_frame.0* %40 to %struct.fc_frame*
  %42 = load i32, i32* @ELS_ADISC, align 4
  %43 = load i32, i32* @fc_rport_adisc_resp, align 4
  %44 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %45 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %46 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 2, %47
  %49 = call i32 %34(%struct.fc_lport* %35, i32 %39, %struct.fc_frame* %41, i32 %42, i32 %43, %struct.fc_rport_priv* %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %27
  %52 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %53 = load i32, i32* @FC_EX_XMIT_ERR, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %52, i32 %54)
  %56 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %57 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %56, i32 0, i32 0
  %58 = load i32, i32* @fc_rport_destroy, align 4
  %59 = call i32 @kref_put(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %22, %51, %27
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_rport_error_retry(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
