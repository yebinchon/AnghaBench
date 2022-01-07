; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv_echo_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv_echo_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_frame.1 = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Received ECHO request while in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.1*)* @fc_lport_recv_echo_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_recv_echo_req(%struct.fc_lport* %0, %struct.fc_frame.1* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.1*, align 8
  %5 = alloca %struct.fc_frame.1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %4, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %14 = call i32 @fc_lport_state(%struct.fc_lport* %13)
  %15 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %17 = call i32 @fr_len(%struct.fc_frame.1* %16)
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @fc_frame_payload_get(%struct.fc_frame.1* %21, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %29, i32 %30)
  store %struct.fc_frame.1* %31, %struct.fc_frame.1** %5, align 8
  %32 = load %struct.fc_frame.1*, %struct.fc_frame.1** %5, align 8
  %33 = icmp ne %struct.fc_frame.1* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load %struct.fc_frame.1*, %struct.fc_frame.1** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @fc_frame_payload_get(%struct.fc_frame.1* %35, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @memcpy(i8* %38, i8* %39, i32 %40)
  %42 = load i32, i32* @ELS_LS_ACC, align 4
  %43 = shl i32 %42, 24
  %44 = call i32 @htonl(i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fc_frame.1*, %struct.fc_frame.1** %5, align 8
  %48 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %49 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %50 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.1* %47, %struct.fc_frame.1* %48, i32 %49, i32 0)
  %51 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %52 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*)** %53, align 8
  %55 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %56 = bitcast %struct.fc_lport* %55 to %struct.fc_lport.0*
  %57 = load %struct.fc_frame.1*, %struct.fc_frame.1** %5, align 8
  %58 = bitcast %struct.fc_frame.1* %57 to %struct.fc_frame*
  %59 = call i32 %54(%struct.fc_lport.0* %56, %struct.fc_frame* %58)
  br label %60

60:                                               ; preds = %34, %28
  %61 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %62 = call i32 @fc_frame_free(%struct.fc_frame.1* %61)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fr_len(%struct.fc_frame.1*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame.1*, i32) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.1*, %struct.fc_frame.1*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
