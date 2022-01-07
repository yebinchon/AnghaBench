; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_adisc_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_adisc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.fc_els_adisc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Received a ADISC response\0A\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@RPORT_ST_ADISC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Received a ADISC resp but in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"ADISC error or mismatch\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ADISC OK\0A\00", align 1
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_adisc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_adisc_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_els_adisc*, align 8
  %9 = alloca i64, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %11, %struct.fc_rport_priv** %7, align 8
  %12 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %13 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %15 = load i32, i32* @FC_EX_CLOSED, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.fc_frame* @ERR_PTR(i32 %16)
  %18 = icmp eq %struct.fc_frame* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %105

20:                                               ; preds = %3
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %22 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %25 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RPORT_ST_ADISC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %31 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %32 = call i32 @fc_rport_state(%struct.fc_rport_priv* %31)
  %33 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %35 = call i64 @IS_ERR(%struct.fc_frame* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %101

38:                                               ; preds = %29
  br label %98

39:                                               ; preds = %20
  %40 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %41 = call i64 @IS_ERR(%struct.fc_frame* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %45 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %46 = call i32 @PTR_ERR(%struct.fc_frame* %45)
  %47 = call i32 @fc_rport_error(%struct.fc_rport_priv* %44, i32 %46)
  br label %101

48:                                               ; preds = %39
  %49 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %50 = call i64 @fc_frame_payload_op(%struct.fc_frame* %49)
  store i64 %50, i64* %9, align 8
  %51 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %52 = call %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame* %51, i32 12)
  store %struct.fc_els_adisc* %52, %struct.fc_els_adisc** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @ELS_LS_ACC, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %87, label %56

56:                                               ; preds = %48
  %57 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %8, align 8
  %58 = icmp ne %struct.fc_els_adisc* %57, null
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %8, align 8
  %61 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ntoh24(i32 %62)
  %64 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %65 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %87, label %69

69:                                               ; preds = %59
  %70 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %8, align 8
  %71 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %70, i32 0, i32 1
  %72 = call i64 @get_unaligned_be64(i32* %71)
  %73 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %74 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %87, label %78

78:                                               ; preds = %69
  %79 = load %struct.fc_els_adisc*, %struct.fc_els_adisc** %8, align 8
  %80 = getelementptr inbounds %struct.fc_els_adisc, %struct.fc_els_adisc* %79, i32 0, i32 0
  %81 = call i64 @get_unaligned_be64(i32* %80)
  %82 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %83 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %78, %69, %59, %56, %48
  %88 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %89 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %91 = call i32 @fc_rport_enter_flogi(%struct.fc_rport_priv* %90)
  br label %97

92:                                               ; preds = %78
  %93 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %94 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %96 = call i32 @fc_rport_enter_ready(%struct.fc_rport_priv* %95)
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %38
  %99 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %100 = call i32 @fc_frame_free(%struct.fc_frame* %99)
  br label %101

101:                                              ; preds = %98, %43, %37
  %102 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %103 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %101, %19
  %106 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %107 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %106, i32 0, i32 1
  %108 = load i32, i32* @fc_rport_destroy, align 4
  %109 = call i32 @kref_put(i32* %107, i32 %108)
  ret void
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, ...) #1

declare dso_local %struct.fc_frame* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local %struct.fc_els_adisc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @get_unaligned_be64(i32*) #1

declare dso_local i32 @fc_rport_enter_flogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_enter_ready(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
