; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_logo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_enter_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, %struct.TYPE_4__, i32, %struct.fc_lport* }
%struct.TYPE_4__ = type { i32 }
%struct.fc_lport = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_frame.0 = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Port sending LOGO from %s state\0A\00", align 1
@ELS_LOGO = common dso_local global i32 0, align 4
@fc_rport_logo_resp = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport_priv*)* @fc_rport_enter_logo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_enter_logo(%struct.fc_rport_priv* %0) #0 {
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
  %14 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %16 = call %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport* %15, i32 4)
  store %struct.fc_frame.0* %16, %struct.fc_frame.0** %4, align 8
  %17 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %18 = icmp ne %struct.fc_frame.0* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %22 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %21, i32 0, i32 0
  %23 = call i32 @kref_get(i32* %22)
  %24 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)*, i32 (%struct.fc_lport*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)** %26, align 8
  %28 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %30 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fc_frame.0*, %struct.fc_frame.0** %4, align 8
  %34 = bitcast %struct.fc_frame.0* %33 to %struct.fc_frame*
  %35 = load i32, i32* @ELS_LOGO, align 4
  %36 = load i32, i32* @fc_rport_logo_resp, align 4
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %38 = call i32 %27(%struct.fc_lport* %28, i32 %32, %struct.fc_frame* %34, i32 %35, i32 %36, %struct.fc_rport_priv* %37, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %20
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %2, align 8
  %42 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %41, i32 0, i32 0
  %43 = load i32, i32* @fc_rport_destroy, align 4
  %44 = call i32 @kref_put(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %19, %40, %20
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local %struct.fc_frame.0* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
