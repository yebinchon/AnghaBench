; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_flogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_enter_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32, i64, %struct.TYPE_2__, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)* }
%struct.fc_frame = type opaque
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Entered FLOGI state from %s state\0A\00", align 1
@LPORT_ST_FLOGI = common dso_local global i32 0, align 4
@FC_FID_FLOGI = common dso_local global i32 0, align 4
@ELS_FDISC = common dso_local global i32 0, align 4
@ELS_FLOGI = common dso_local global i32 0, align 4
@fc_lport_flogi_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_lport_enter_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_enter_flogi(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_frame.1*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %4 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %5 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %4, i32 0, i32 6
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %9 = call i32 @fc_lport_state(%struct.fc_lport* %8)
  %10 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %12 = load i32, i32* @LPORT_ST_FLOGI, align 4
  %13 = call i32 @fc_lport_state_enter(%struct.fc_lport* %11, i32 %12)
  %14 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %15 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %25 = call i32 @fc_lport_enter_ready(%struct.fc_lport* %24)
  br label %26

26:                                               ; preds = %23, %18
  br label %77

27:                                               ; preds = %1
  %28 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %29 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %28, i32 4)
  store %struct.fc_frame.1* %29, %struct.fc_frame.1** %3, align 8
  %30 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  %31 = icmp ne %struct.fc_frame.1* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %34 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  call void @fc_lport_error(%struct.fc_lport* %33, %struct.fc_frame.1* %34)
  br label %77

35:                                               ; preds = %27
  %36 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)*, i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_lport.0*, i32)** %38, align 8
  %40 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %41 = bitcast %struct.fc_lport* %40 to %struct.fc_lport.0*
  %42 = load i32, i32* @FC_FID_FLOGI, align 4
  %43 = load %struct.fc_frame.1*, %struct.fc_frame.1** %3, align 8
  %44 = bitcast %struct.fc_frame.1* %43 to %struct.fc_frame*
  %45 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %46 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @ELS_FDISC, align 4
  br label %53

51:                                               ; preds = %35
  %52 = load i32, i32* @ELS_FLOGI, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32, i32* @fc_lport_flogi_resp, align 4
  %56 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %57 = bitcast %struct.fc_lport* %56 to %struct.fc_lport.0*
  %58 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %59 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %64 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 2, %65
  br label %71

67:                                               ; preds = %53
  %68 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %69 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i32 [ %66, %62 ], [ %70, %67 ]
  %73 = call i32 %39(%struct.fc_lport.0* %41, i32 %42, %struct.fc_frame* %44, i32 %54, i32 %55, %struct.fc_lport.0* %57, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  call void @fc_lport_error(%struct.fc_lport* %76, %struct.fc_frame.1* null)
  br label %77

77:                                               ; preds = %26, %32, %75, %71
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_state_enter(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_lport_enter_ready(%struct.fc_lport*) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local void @fc_lport_error(%struct.fc_lport*, %struct.fc_frame.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
