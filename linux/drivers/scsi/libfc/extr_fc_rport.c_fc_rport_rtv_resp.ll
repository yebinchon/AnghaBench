; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_rtv_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_rtv_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i64, i32, i32, i32, i32 }
%struct.fc_els_rtv_acc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Received a RTV %s\0A\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@RPORT_ST_RTV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Received a RTV response, but in state %s\0A\00", align 1
@ELS_LS_ACC = common dso_local global i64 0, align 8
@FC_ELS_RTV_EDRES = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_rport_rtv_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_rport_rtv_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fc_els_rtv_acc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %13, %struct.fc_rport_priv** %7, align 8
  %14 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %15 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %16 = call i32 @fc_els_resp_type(%struct.fc_frame* %15)
  %17 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %19 = load i32, i32* @FC_EX_CLOSED, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.fc_frame* @ERR_PTR(i32 %20)
  %22 = icmp eq %struct.fc_frame* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %123

24:                                               ; preds = %3
  %25 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %26 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %25, i32 0, i32 4
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %29 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RPORT_ST_RTV, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %35 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %36 = call i32 @fc_rport_state(%struct.fc_rport_priv* %35)
  %37 = call i32 @FC_RPORT_DBG(%struct.fc_rport_priv* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %39 = call i64 @IS_ERR(%struct.fc_frame* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %119

42:                                               ; preds = %33
  br label %116

43:                                               ; preds = %24
  %44 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %45 = call i64 @IS_ERR(%struct.fc_frame* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %49 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %50 = call i32 @PTR_ERR(%struct.fc_frame* %49)
  %51 = call i32 @fc_rport_error(%struct.fc_rport_priv* %48, i32 %50)
  br label %119

52:                                               ; preds = %43
  %53 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %54 = call i64 @fc_frame_payload_op(%struct.fc_frame* %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @ELS_LS_ACC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %113

58:                                               ; preds = %52
  %59 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %60 = call %struct.fc_els_rtv_acc* @fc_frame_payload_get(%struct.fc_frame* %59, i32 12)
  store %struct.fc_els_rtv_acc* %60, %struct.fc_els_rtv_acc** %9, align 8
  %61 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %9, align 8
  %62 = icmp ne %struct.fc_els_rtv_acc* %61, null
  br i1 %62, label %63, label %112

63:                                               ; preds = %58
  %64 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %9, align 8
  %65 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ntohl(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %9, align 8
  %69 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohl(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %78 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %84 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.fc_els_rtv_acc*, %struct.fc_els_rtv_acc** %9, align 8
  %87 = getelementptr inbounds %struct.fc_els_rtv_acc, %struct.fc_els_rtv_acc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ntohl(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @FC_ELS_RTV_EDRES, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  %96 = sdiv i32 %95, 1000000
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %85
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %104 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %110 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %101
  br label %112

112:                                              ; preds = %111, %58
  br label %113

113:                                              ; preds = %112, %52
  %114 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %115 = call i32 @fc_rport_enter_ready(%struct.fc_rport_priv* %114)
  br label %116

116:                                              ; preds = %113, %42
  %117 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %118 = call i32 @fc_frame_free(%struct.fc_frame* %117)
  br label %119

119:                                              ; preds = %116, %47, %41
  %120 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %121 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %120, i32 0, i32 4
  %122 = call i32 @mutex_unlock(i32* %121)
  br label %123

123:                                              ; preds = %119, %23
  %124 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %125 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %124, i32 0, i32 3
  %126 = load i32, i32* @fc_rport_destroy, align 4
  %127 = call i32 @kref_put(i32* %125, i32 %126)
  ret void
}

declare dso_local i32 @FC_RPORT_DBG(%struct.fc_rport_priv*, i8*, i32) #1

declare dso_local i32 @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_rport_state(%struct.fc_rport_priv*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_rport_error(%struct.fc_rport_priv*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local %struct.fc_els_rtv_acc* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @ntohl(i32) #1

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
