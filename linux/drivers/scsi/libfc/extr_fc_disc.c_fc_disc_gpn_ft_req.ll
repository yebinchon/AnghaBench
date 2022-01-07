; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_ft_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_ft_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_disc = type { i32, i64, i64, i64, i32 }
%struct.fc_frame = type { i32 }
%struct.fc_lport = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.fc_lport.0*, i32, %struct.fc_frame.1*, i32, i32, %struct.fc_disc.2*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_disc.2 = type opaque

@FC_NS_GPN_FT = common dso_local global i32 0, align 4
@fc_disc_gpn_ft_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_disc*)* @fc_disc_gpn_ft_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_gpn_ft_req(%struct.fc_disc* %0) #0 {
  %2 = alloca %struct.fc_disc*, align 8
  %3 = alloca %struct.fc_frame*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  store %struct.fc_disc* %0, %struct.fc_disc** %2, align 8
  %5 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %6 = call %struct.fc_lport* @fc_disc_lport(%struct.fc_disc* %5)
  store %struct.fc_lport* %6, %struct.fc_lport** %4, align 8
  %7 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %8 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %7, i32 0, i32 4
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %11 = call i32 @fc_lport_test_ready(%struct.fc_lport* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %17 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %19 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %21 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %23 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %25 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %24, i32 8)
  store %struct.fc_frame* %25, %struct.fc_frame** %3, align 8
  %26 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %27 = icmp ne %struct.fc_frame* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %50

29:                                               ; preds = %1
  %30 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64 (%struct.fc_lport.0*, i32, %struct.fc_frame.1*, i32, i32, %struct.fc_disc.2*, i32)*, i64 (%struct.fc_lport.0*, i32, %struct.fc_frame.1*, i32, i32, %struct.fc_disc.2*, i32)** %32, align 8
  %34 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %35 = bitcast %struct.fc_lport* %34 to %struct.fc_lport.0*
  %36 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %37 = bitcast %struct.fc_frame* %36 to %struct.fc_frame.1*
  %38 = load i32, i32* @FC_NS_GPN_FT, align 4
  %39 = load i32, i32* @fc_disc_gpn_ft_resp, align 4
  %40 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %41 = bitcast %struct.fc_disc* %40 to %struct.fc_disc.2*
  %42 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %43 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 3, %44
  %46 = call i64 %33(%struct.fc_lport.0* %35, i32 0, %struct.fc_frame.1* %37, i32 %38, i32 %39, %struct.fc_disc.2* %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %53

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %52 = call i32 @fc_disc_error(%struct.fc_disc* %51, i32* null)
  br label %53

53:                                               ; preds = %50, %48
  ret void
}

declare dso_local %struct.fc_lport* @fc_disc_lport(%struct.fc_disc*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fc_lport_test_ready(%struct.fc_lport*) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_disc_error(%struct.fc_disc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
