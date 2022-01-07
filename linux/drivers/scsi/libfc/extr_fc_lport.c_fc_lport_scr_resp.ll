; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_scr_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_scr_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_lport = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Received a SCR %s\0A\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@LPORT_ST_SCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Received a SCR response, but in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_lport_scr_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_scr_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca i64, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.fc_lport*
  store %struct.fc_lport* %10, %struct.fc_lport** %7, align 8
  %11 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %12 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %13 = call i32 @fc_els_resp_type(%struct.fc_frame* %12)
  %14 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %16 = load i32, i32* @FC_EX_CLOSED, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.fc_frame* @ERR_PTR(i32 %17)
  %19 = icmp eq %struct.fc_frame* %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %69

21:                                               ; preds = %3
  %22 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %23 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LPORT_ST_SCR, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %32 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %33 = call i32 @fc_lport_state(%struct.fc_lport* %32)
  %34 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %36 = call i64 @IS_ERR(%struct.fc_frame* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %65

39:                                               ; preds = %30
  br label %62

40:                                               ; preds = %21
  %41 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %42 = call i64 @IS_ERR(%struct.fc_frame* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %46 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %47 = call i32 @fc_lport_error(%struct.fc_lport* %45, %struct.fc_frame* %46)
  br label %65

48:                                               ; preds = %40
  %49 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %50 = call i64 @fc_frame_payload_op(%struct.fc_frame* %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @ELS_LS_ACC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %56 = call i32 @fc_lport_enter_ready(%struct.fc_lport* %55)
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %59 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %60 = call i32 @fc_lport_error(%struct.fc_lport* %58, %struct.fc_frame* %59)
  br label %61

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %64 = call i32 @fc_frame_free(%struct.fc_frame* %63)
  br label %65

65:                                               ; preds = %62, %44, %38
  %66 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %67 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %65, %20
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_lport_error(%struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i32 @fc_lport_enter_ready(%struct.fc_lport*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
