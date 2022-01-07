; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_flogi_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_flogi_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.fc_lport* }
%struct.TYPE_4__ = type { i64 }
%struct.fc_lport = type { i64 }
%struct.fc_els_flogi = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fc_els_ls_rjt = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Received a FLOGI %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@RPORT_ST_FLOGI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Received a FLOGI response, but in state %s\0A\00", align 1
@ELS_LS_RJT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"FLOGI ELS rejected, reason %x expl %x\0A\00", align 1
@FC_EX_ELS_RJT = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"FLOGI ELS invalid opcode %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"FLOGI failed, no login\0A\00", align 1
@FC_EX_INV_LOGIN = common dso_local global i32 0, align 4
@FC_EX_ALLOC_ERR = common dso_local global i32 0, align 4
@RPORT_ST_PLOGI_WAIT = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Bad FLOGI response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_flogi_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_flogi_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.fc_els_flogi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fc_els_ls_rjt*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %15, %struct.fc_rport_priv** %7, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %17 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %16, i32 0, i32 5
  %18 = load %struct.fc_lport*, %struct.fc_lport** %17, align 8
  store %struct.fc_lport* %18, %struct.fc_lport** %8, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %20 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %21 = call i64 @IS_ERR(%struct.fc_frame* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %26 = call i8* @fc_els_resp_type(%struct.fc_frame* %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %23 ], [ %26, %24 ]
  %29 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %31 = load i32, i32* @FC_EX_CLOSED, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.fc_frame* @ERR_PTR(i32 %32)
  %34 = icmp eq %struct.fc_frame* %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %153

36:                                               ; preds = %27
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %38 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %37, i32 0, i32 3
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %41 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RPORT_ST_FLOGI, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %48 = call i32 @fc_rport_state(%struct.fc_rport_priv* %47)
  %49 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %51 = call i64 @IS_ERR(%struct.fc_frame* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %149

54:                                               ; preds = %45
  br label %146

55:                                               ; preds = %36
  %56 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %57 = call i64 @IS_ERR(%struct.fc_frame* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %61 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %62 = call i32 @PTR_ERR(%struct.fc_frame* %61)
  %63 = call i32 @fc_rport_error(%struct.fc_rport_priv* %60, i32 %62)
  br label %149

64:                                               ; preds = %55
  %65 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %66 = call i64 @fc_frame_payload_op(%struct.fc_frame* %65)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @ELS_LS_RJT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %64
  %71 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %72 = call i8* @fc_frame_payload_get(%struct.fc_frame* %71, i32 8)
  %73 = bitcast i8* %72 to %struct.fc_els_ls_rjt*
  store %struct.fc_els_ls_rjt* %73, %struct.fc_els_ls_rjt** %13, align 8
  %74 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %75 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %13, align 8
  %76 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fc_els_ls_rjt*, %struct.fc_els_ls_rjt** %13, align 8
  %79 = getelementptr inbounds %struct.fc_els_ls_rjt, %struct.fc_els_ls_rjt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* @FC_EX_ELS_RJT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  br label %158

84:                                               ; preds = %64
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @ELS_LS_ACC, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* @FC_EX_ELS_RJT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %158

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %97 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %98 = call i64 @fc_rport_login_complete(%struct.fc_rport_priv* %96, %struct.fc_frame* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %102 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @FC_EX_INV_LOGIN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  br label %158

105:                                              ; preds = %95
  %106 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %107 = call i8* @fc_frame_payload_get(%struct.fc_frame* %106, i32 4)
  %108 = bitcast i8* %107 to %struct.fc_els_flogi*
  store %struct.fc_els_flogi* %108, %struct.fc_els_flogi** %9, align 8
  %109 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %110 = icmp ne %struct.fc_els_flogi* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @FC_EX_ALLOC_ERR, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %12, align 4
  br label %158

114:                                              ; preds = %105
  %115 = load %struct.fc_els_flogi*, %struct.fc_els_flogi** %9, align 8
  %116 = getelementptr inbounds %struct.fc_els_flogi, %struct.fc_els_flogi* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ntohl(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %122 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ugt i32 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %128 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %114
  %130 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %131 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %135 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %140 = call i32 @fc_rport_enter_plogi(%struct.fc_rport_priv* %139)
  br label %145

141:                                              ; preds = %129
  %142 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %143 = load i32, i32* @RPORT_ST_PLOGI_WAIT, align 4
  %144 = call i32 @fc_rport_state_enter(%struct.fc_rport_priv* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %138
  br label %146

146:                                              ; preds = %158, %145, %54
  %147 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %148 = call i32 @fc_frame_free(%struct.fc_frame* %147)
  br label %149

149:                                              ; preds = %146, %59, %53
  %150 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %151 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %150, i32 0, i32 3
  %152 = call i32 @mutex_unlock(i32* %151)
  br label %153

153:                                              ; preds = %149, %35
  %154 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %155 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %154, i32 0, i32 2
  %156 = load i32, i32* @fc_rport_destroy, align 4
  %157 = call i32 @kref_put(i32* %155, i32 %156)
  ret void

158:                                              ; preds = %111, %100, %88, %70
  %159 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %160 = call i32 (%struct.fc_rport_priv*, i8*, ...) @FC_RPORT_DBG(%struct.fc_rport_priv* %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %161 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @fc_rport_error_retry(%struct.fc_rport_priv* %161, i32 %162)
  br label %146
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, ...) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i8* @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @fc_rport_login_complete(%struct.fc_rport_priv*, %struct.fc_frame*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @fc_rport_enter_plogi(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_state_enter(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @fc_rport_error_retry(%struct.fc_rport_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
