; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_logo_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_logo_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Received a LOGO %s\0A\00", align 1
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_logo_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_logo_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %10, %struct.fc_rport_priv** %7, align 8
  %11 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %12 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %11, i32 0, i32 1
  %13 = load %struct.fc_lport*, %struct.fc_lport** %12, align 8
  store %struct.fc_lport* %13, %struct.fc_lport** %8, align 8
  %14 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %15 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %16 = call %struct.TYPE_2__* @fc_seq_exch(%struct.fc_seq* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %20 = call i32 @fc_els_resp_type(%struct.fc_frame* %19)
  %21 = call i32 @FC_RPORT_ID_DBG(%struct.fc_lport* %14, i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %23 = call i32 @IS_ERR(%struct.fc_frame* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %27 = call i32 @fc_frame_free(%struct.fc_frame* %26)
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %30 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %29, i32 0, i32 0
  %31 = load i32, i32* @fc_rport_destroy, align 4
  %32 = call i32 @kref_put(i32* %30, i32 %31)
  ret void
}

declare dso_local i32 @FC_RPORT_ID_DBG(%struct.fc_lport*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i32 @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local i32 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
