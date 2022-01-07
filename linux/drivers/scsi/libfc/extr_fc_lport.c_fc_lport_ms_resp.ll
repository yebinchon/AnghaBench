; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ms_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ms_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_lport = type { i32, i32 }
%struct.fc_frame_header = type { i64 }
%struct.fc_ct_hdr = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Received a ms %s\0A\00", align 1
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Received a management server response, but in state %s\0A\00", align 1
@FC_TYPE_CT = common dso_local global i64 0, align 8
@FC_FST_MGMT = common dso_local global i64 0, align 8
@FC_FDMI_SUBTYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Received a management server response, reason=%d explain=%d\0A\00", align 1
@FC_FS_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_lport_ms_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_ms_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.fc_frame_header*, align 8
  %9 = alloca %struct.fc_ct_hdr*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.fc_lport*
  store %struct.fc_lport* %11, %struct.fc_lport** %7, align 8
  %12 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %13 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %14 = call i32 @fc_els_resp_type(%struct.fc_frame* %13)
  %15 = call i32 (%struct.fc_lport*, i8*, i32, ...) @FC_LPORT_DBG(%struct.fc_lport* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %17 = load i32, i32* @FC_EX_CLOSED, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.fc_frame* @ERR_PTR(i32 %18)
  %20 = icmp eq %struct.fc_frame* %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %130

22:                                               ; preds = %3
  %23 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %24 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %27 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 129
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 130
  br i1 %34, label %35, label %45

35:                                               ; preds = %30, %22
  %36 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %37 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %38 = call i32 @fc_lport_state(%struct.fc_lport* %37)
  %39 = call i32 (%struct.fc_lport*, i8*, i32, ...) @FC_LPORT_DBG(%struct.fc_lport* %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %41 = call i64 @IS_ERR(%struct.fc_frame* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %126

44:                                               ; preds = %35
  br label %123

45:                                               ; preds = %30
  %46 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %47 = call i64 @IS_ERR(%struct.fc_frame* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %51 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %52 = call i32 @fc_lport_error(%struct.fc_lport* %50, %struct.fc_frame* %51)
  br label %126

53:                                               ; preds = %45
  %54 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %55 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %54)
  store %struct.fc_frame_header* %55, %struct.fc_frame_header** %8, align 8
  %56 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %57 = call %struct.fc_ct_hdr* @fc_frame_payload_get(%struct.fc_frame* %56, i32 32)
  store %struct.fc_ct_hdr* %57, %struct.fc_ct_hdr** %9, align 8
  %58 = load %struct.fc_frame_header*, %struct.fc_frame_header** %8, align 8
  %59 = icmp ne %struct.fc_frame_header* %58, null
  br i1 %59, label %60, label %118

60:                                               ; preds = %53
  %61 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %62 = icmp ne %struct.fc_ct_hdr* %61, null
  br i1 %62, label %63, label %118

63:                                               ; preds = %60
  %64 = load %struct.fc_frame_header*, %struct.fc_frame_header** %8, align 8
  %65 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FC_TYPE_CT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %63
  %70 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %71 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FC_FST_MGMT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %69
  %76 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %77 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FC_FDMI_SUBTYPE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %75
  %82 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %83 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %84 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %87 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.fc_lport*, i8*, i32, ...) @FC_LPORT_DBG(%struct.fc_lport* %82, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %91 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %116 [
    i32 129, label %93
    i32 128, label %107
    i32 130, label %110
    i32 131, label %113
  ]

93:                                               ; preds = %81
  %94 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %9, align 8
  %95 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ntohs(i32 %96)
  %98 = load i32, i32* @FC_FS_ACC, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %102 = call i32 @fc_lport_enter_ms(%struct.fc_lport* %101, i32 128)
  br label %106

103:                                              ; preds = %93
  %104 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %105 = call i32 @fc_lport_enter_scr(%struct.fc_lport* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %117

107:                                              ; preds = %81
  %108 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %109 = call i32 @fc_lport_enter_scr(%struct.fc_lport* %108)
  br label %117

110:                                              ; preds = %81
  %111 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %112 = call i32 @fc_lport_enter_ms(%struct.fc_lport* %111, i32 129)
  br label %117

113:                                              ; preds = %81
  %114 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %115 = call i32 @fc_lport_enter_ms(%struct.fc_lport* %114, i32 130)
  br label %117

116:                                              ; preds = %81
  br label %117

117:                                              ; preds = %116, %113, %110, %107, %106
  br label %122

118:                                              ; preds = %75, %69, %63, %60, %53
  %119 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %120 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %121 = call i32 @fc_lport_error(%struct.fc_lport* %119, %struct.fc_frame* %120)
  br label %122

122:                                              ; preds = %118, %117
  br label %123

123:                                              ; preds = %122, %44
  %124 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %125 = call i32 @fc_frame_free(%struct.fc_frame* %124)
  br label %126

126:                                              ; preds = %123, %49, %43
  %127 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %128 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  br label %130

130:                                              ; preds = %126, %21
  ret void
}

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i32, ...) #1

declare dso_local i32 @fc_els_resp_type(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_lport_state(%struct.fc_lport*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_lport_error(%struct.fc_lport*, %struct.fc_frame*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local %struct.fc_ct_hdr* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @fc_lport_enter_ms(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_lport_enter_scr(%struct.fc_lport*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
