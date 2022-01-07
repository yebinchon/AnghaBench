; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_xmit_l2_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_xmit_l2_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_rport = type { %struct.fc_rport_priv* }
%struct.fc_rport_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i64, i64, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Xmit L2 frame rport = 0x%x, oxid = 0x%x, r_ctl = 0x%x\0A\00", align 1
@FC_TYPE_ELS = common dso_local global i64 0, align 8
@FC_RCTL_ELS_REQ = common dso_local global i64 0, align 8
@FC_TYPE_BLS = common dso_local global i64 0, align 8
@FC_RCTL_BA_ABTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"ABTS frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Send L2 frame type 0x%x rctl 0x%x thru non-offload path\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2fc_rport*, %struct.fc_frame*)* @bnx2fc_xmit_l2_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_xmit_l2_frame(%struct.bnx2fc_rport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2fc_rport*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca %struct.fc_frame_header*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2fc_rport* %0, %struct.bnx2fc_rport** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  %9 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %9, i32 0, i32 0
  %11 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %10, align 8
  store %struct.fc_rport_priv* %11, %struct.fc_rport_priv** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %13 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %12)
  store %struct.fc_frame_header* %13, %struct.fc_frame_header** %7, align 8
  %14 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %16 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %20 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ntohs(i32 %21)
  %23 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %24 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i64 %25)
  %27 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %28 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FC_TYPE_ELS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %2
  %33 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %34 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FC_RCTL_ELS_REQ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %40 = call i32 @fc_frame_payload_op(%struct.fc_frame* %39)
  switch i32 %40, label %53 [
    i32 130, label %41
    i32 129, label %45
    i32 128, label %49
  ]

41:                                               ; preds = %38
  %42 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %43 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %44 = call i32 @bnx2fc_send_adisc(%struct.bnx2fc_rport* %42, %struct.fc_frame* %43)
  store i32 %44, i32* %8, align 4
  br label %54

45:                                               ; preds = %38
  %46 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %47 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %48 = call i32 @bnx2fc_send_logo(%struct.bnx2fc_rport* %46, %struct.fc_frame* %47)
  store i32 %48, i32* %8, align 4
  br label %54

49:                                               ; preds = %38
  %50 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %51 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %52 = call i32 @bnx2fc_send_rls(%struct.bnx2fc_rport* %50, %struct.fc_frame* %51)
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %49, %45, %41
  br label %82

55:                                               ; preds = %32, %2
  %56 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %57 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FC_TYPE_BLS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %63 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FC_RCTL_BA_ABTS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %69 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %81

70:                                               ; preds = %61, %55
  %71 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %4, align 8
  %72 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %73 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fc_frame_header*, %struct.fc_frame_header** %7, align 8
  %76 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (%struct.bnx2fc_rport*, i8*, ...) @BNX2FC_TGT_DBG(%struct.bnx2fc_rport* %71, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %74, i64 %77)
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %89

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %54
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %85, %70
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @BNX2FC_TGT_DBG(%struct.bnx2fc_rport*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @bnx2fc_send_adisc(%struct.bnx2fc_rport*, %struct.fc_frame*) #1

declare dso_local i32 @bnx2fc_send_logo(%struct.bnx2fc_rport*, %struct.fc_frame*) #1

declare dso_local i32 @bnx2fc_send_rls(%struct.bnx2fc_rport*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
