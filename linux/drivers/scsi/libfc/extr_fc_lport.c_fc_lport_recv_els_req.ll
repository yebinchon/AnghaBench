; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv_els_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_recv_els_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_frame.1 = type { i32 }

@FC_FID_FLOGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.1*)* @fc_lport_recv_els_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_recv_els_req(%struct.fc_lport* %0, %struct.fc_frame.1* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame.1*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %4, align 8
  %5 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %6 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %9 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %14 = call i32 @fc_frame_free(%struct.fc_frame.1* %13)
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %17 = call i32 @fc_frame_payload_op(%struct.fc_frame.1* %16)
  switch i32 %17, label %68 [
    i32 132, label %18
    i32 131, label %32
    i32 128, label %46
    i32 133, label %56
    i32 130, label %60
    i32 129, label %64
  ]

18:                                               ; preds = %15
  %19 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %25 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %26 = call i32 @fc_lport_recv_flogi_req(%struct.fc_lport* %24, %struct.fc_frame.1* %25)
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %29 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %30 = call i32 @fc_rport_recv_req(%struct.fc_lport* %28, %struct.fc_frame.1* %29)
  br label %31

31:                                               ; preds = %27, %23
  br label %72

32:                                               ; preds = %15
  %33 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %34 = call i32 @fc_frame_sid(%struct.fc_frame.1* %33)
  %35 = load i32, i32* @FC_FID_FLOGI, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %39 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %40 = call i32 @fc_lport_recv_logo_req(%struct.fc_lport* %38, %struct.fc_frame.1* %39)
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %43 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %44 = call i32 @fc_rport_recv_req(%struct.fc_lport* %42, %struct.fc_frame.1* %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %72

46:                                               ; preds = %15
  %47 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %48 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*)** %49, align 8
  %51 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %52 = bitcast %struct.fc_lport* %51 to %struct.fc_lport.0*
  %53 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %54 = bitcast %struct.fc_frame.1* %53 to %struct.fc_frame*
  %55 = call i32 %50(%struct.fc_lport.0* %52, %struct.fc_frame* %54)
  br label %72

56:                                               ; preds = %15
  %57 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %58 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %59 = call i32 @fc_lport_recv_echo_req(%struct.fc_lport* %57, %struct.fc_frame.1* %58)
  br label %72

60:                                               ; preds = %15
  %61 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %62 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %63 = call i32 @fc_lport_recv_rlir_req(%struct.fc_lport* %61, %struct.fc_frame.1* %62)
  br label %72

64:                                               ; preds = %15
  %65 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %66 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %67 = call i32 @fc_lport_recv_rnid_req(%struct.fc_lport* %65, %struct.fc_frame.1* %66)
  br label %72

68:                                               ; preds = %15
  %69 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %70 = load %struct.fc_frame.1*, %struct.fc_frame.1** %4, align 8
  %71 = call i32 @fc_rport_recv_req(%struct.fc_lport* %69, %struct.fc_frame.1* %70)
  br label %72

72:                                               ; preds = %68, %64, %60, %56, %46, %45, %31
  br label %73

73:                                               ; preds = %72, %12
  %74 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %75 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_lport_recv_flogi_req(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_rport_recv_req(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_frame_sid(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_lport_recv_logo_req(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_lport_recv_echo_req(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_lport_recv_rlir_req(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_lport_recv_rnid_req(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
