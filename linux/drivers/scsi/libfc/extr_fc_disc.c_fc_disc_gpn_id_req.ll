; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_id_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_id_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.fc_rport_priv = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.fc_frame.1 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FC_NS_GPN_ID = common dso_local global i32 0, align 4
@fc_disc_gpn_id_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_rport_priv*)* @fc_disc_gpn_id_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_disc_gpn_id_req(%struct.fc_lport* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca %struct.fc_frame.1*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %5, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %12 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %11, i32 8)
  store %struct.fc_frame.1* %12, %struct.fc_frame.1** %6, align 8
  %13 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %14 = icmp ne %struct.fc_frame.1* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)*, i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)** %21, align 8
  %23 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %24 = bitcast %struct.fc_lport* %23 to %struct.fc_lport.0*
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %26 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %30 = bitcast %struct.fc_frame.1* %29 to %struct.fc_frame*
  %31 = load i32, i32* @FC_NS_GPN_ID, align 4
  %32 = load i32, i32* @fc_disc_gpn_id_resp, align 4
  %33 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %34 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %35 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 3, %36
  %38 = call i32 %22(%struct.fc_lport.0* %24, i32 %28, %struct.fc_frame* %30, i32 %31, i32 %32, %struct.fc_rport_priv* %33, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %18
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %18
  %44 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %45 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %44, i32 0, i32 0
  %46 = call i32 @kref_get(i32* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
