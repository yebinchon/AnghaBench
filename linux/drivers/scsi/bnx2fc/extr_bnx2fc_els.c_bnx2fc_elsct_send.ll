; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_els.c_bnx2fc_elsct_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_els.c_bnx2fc_elsct_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { i32 }
%struct.fcoe_ctlr = type opaque
%struct.fc_frame_header = type { i32 }

@FC_FID_FLOGI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fc_seq* @bnx2fc_elsct_send(%struct.fc_lport* %0, i32 %1, %struct.fc_frame* %2, i32 %3, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.fc_seq*, align 8
  %9 = alloca %struct.fc_lport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fc_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fcoe_port*, align 8
  %17 = alloca %struct.bnx2fc_interface*, align 8
  %18 = alloca %struct.fcoe_ctlr*, align 8
  %19 = alloca %struct.fc_frame_header*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.fc_frame* %2, %struct.fc_frame** %11, align 8
  store i32 %3, i32* %12, align 4
  store void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %4, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %21 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %20)
  store %struct.fcoe_port* %21, %struct.fcoe_port** %16, align 8
  %22 = load %struct.fcoe_port*, %struct.fcoe_port** %16, align 8
  %23 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %22, i32 0, i32 0
  %24 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %23, align 8
  store %struct.bnx2fc_interface* %24, %struct.bnx2fc_interface** %17, align 8
  %25 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %17, align 8
  %26 = call i8* @bnx2fc_to_ctlr(%struct.bnx2fc_interface* %25)
  %27 = bitcast i8* %26 to %struct.fcoe_ctlr*
  store %struct.fcoe_ctlr* %27, %struct.fcoe_ctlr** %18, align 8
  %28 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %29 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %28)
  store %struct.fc_frame_header* %29, %struct.fc_frame_header** %19, align 8
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %57 [
    i32 129, label %31
    i32 130, label %31
    i32 128, label %40
  ]

31:                                               ; preds = %7, %7
  %32 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %18, align 8
  %37 = bitcast %struct.fcoe_ctlr* %36 to i8*
  %38 = load i32, i32* %15, align 4
  %39 = call %struct.fc_seq* @fc_elsct_send(%struct.fc_lport* %32, i32 %33, %struct.fc_frame* %34, i32 %35, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @bnx2fc_flogi_resp, i8* %37, i32 %38)
  store %struct.fc_seq* %39, %struct.fc_seq** %8, align 8
  br label %66

40:                                               ; preds = %7
  %41 = load %struct.fc_frame_header*, %struct.fc_frame_header** %19, align 8
  %42 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntoh24(i32 %43)
  %45 = load i32, i32* @FC_FID_FLOGI, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %57

48:                                               ; preds = %40
  %49 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %18, align 8
  %54 = bitcast %struct.fcoe_ctlr* %53 to i8*
  %55 = load i32, i32* %15, align 4
  %56 = call %struct.fc_seq* @fc_elsct_send(%struct.fc_lport* %49, i32 %50, %struct.fc_frame* %51, i32 %52, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @bnx2fc_logo_resp, i8* %54, i32 %55)
  store %struct.fc_seq* %56, %struct.fc_seq** %8, align 8
  br label %66

57:                                               ; preds = %7, %47
  %58 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.fc_frame*, %struct.fc_frame** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %13, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call %struct.fc_seq* @fc_elsct_send(%struct.fc_lport* %58, i32 %59, %struct.fc_frame* %60, i32 %61, void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %62, i8* %63, i32 %64)
  store %struct.fc_seq* %65, %struct.fc_seq** %8, align 8
  br label %66

66:                                               ; preds = %57, %48, %31
  %67 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  ret %struct.fc_seq* %67
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i8* @bnx2fc_to_ctlr(%struct.bnx2fc_interface*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.fc_seq* @fc_elsct_send(%struct.fc_lport*, i32, %struct.fc_frame*, i32, void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, i8*, i32) #1

declare dso_local void @bnx2fc_flogi_resp(%struct.fc_seq*, %struct.fc_frame*, i8*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local void @bnx2fc_logo_resp(%struct.fc_seq*, %struct.fc_frame*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
