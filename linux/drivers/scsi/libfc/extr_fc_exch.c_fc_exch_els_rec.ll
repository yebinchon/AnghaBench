; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_els_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_els_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_exch = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fc_els_rec = type { i32, i32, i32 }
%struct.fc_els_rec_acc = type { i8*, i8*, i32, i32, i32, i32, i32 }

@ELS_RJT_LOGIC = common dso_local global i32 0, align 4
@ELS_EXPL_INV_LEN = common dso_local global i32 0, align 4
@ELS_EXPL_OXID_RXID = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"REC request from %x: invalid rxid %x oxid %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"REC request from %x: rxid %x oxid %x not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"REC request from %x: rxid %x oxid %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Drop REC request, out of memory\0A\00", align 1
@ELS_LS_ACC = common dso_local global i32 0, align 4
@ESB_ST_RESP = common dso_local global i32 0, align 4
@ESB_ST_SEQ_INIT = common dso_local global i32 0, align 4
@ESB_ST_COMPLETE = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_frame*)* @fc_exch_els_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_els_rec(%struct.fc_frame* %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.fc_exch*, align 8
  %6 = alloca %struct.fc_els_rec*, align 8
  %7 = alloca %struct.fc_els_rec_acc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.fc_frame* %0, %struct.fc_frame** %2, align 8
  %14 = load i32, i32* @ELS_RJT_LOGIC, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %16 = call %struct.fc_lport* @fr_dev(%struct.fc_frame* %15)
  store %struct.fc_lport* %16, %struct.fc_lport** %3, align 8
  %17 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %18 = call i8* @fc_frame_payload_get(%struct.fc_frame* %17, i32 12)
  %19 = bitcast i8* %18 to %struct.fc_els_rec*
  store %struct.fc_els_rec* %19, %struct.fc_els_rec** %6, align 8
  %20 = load i32, i32* @ELS_EXPL_INV_LEN, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %22 = icmp ne %struct.fc_els_rec* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %196

24:                                               ; preds = %1
  %25 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %26 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ntoh24(i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %30 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohs(i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %34 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ntohs(i32 %35)
  store i64 %36, i64* %13, align 8
  %37 = load i32, i32* @ELS_EXPL_OXID_RXID, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @fc_host_port_id(i32 %41)
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %24
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %11, align 8
  br label %48

46:                                               ; preds = %24
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %55, i64 %56)
  br label %196

58:                                               ; preds = %48
  %59 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call %struct.fc_exch* @fc_exch_lookup(%struct.fc_lport* %59, i64 %60)
  store %struct.fc_exch* %61, %struct.fc_exch** %5, align 8
  %62 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %63 = icmp ne %struct.fc_exch* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @FC_LPORT_DBG(%struct.fc_lport* %65, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67, i64 %68)
  br label %196

70:                                               ; preds = %58
  %71 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %72, i64 %73, i64 %74)
  %76 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %77 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %70
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %84 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81, %70
  br label %193

88:                                               ; preds = %81
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %95 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %193

99:                                               ; preds = %92, %88
  %100 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %101 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %100, i32 40)
  store %struct.fc_frame* %101, %struct.fc_frame** %4, align 8
  %102 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %103 = icmp ne %struct.fc_frame* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %106 = call i32 (%struct.fc_exch*, i8*, ...) @FC_EXCH_DBG(%struct.fc_exch* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %190

107:                                              ; preds = %99
  %108 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %109 = call i8* @fc_frame_payload_get(%struct.fc_frame* %108, i32 40)
  %110 = bitcast i8* %109 to %struct.fc_els_rec_acc*
  store %struct.fc_els_rec_acc* %110, %struct.fc_els_rec_acc** %7, align 8
  %111 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %112 = call i32 @memset(%struct.fc_els_rec_acc* %111, i32 0, i32 40)
  %113 = load i32, i32* @ELS_LS_ACC, align 4
  %114 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %115 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %117 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %120 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %122 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.fc_els_rec*, %struct.fc_els_rec** %6, align 8
  %125 = getelementptr inbounds %struct.fc_els_rec, %struct.fc_els_rec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcpy(i32 %123, i32 %126, i32 3)
  %128 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %129 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @htons(i64 %130)
  %132 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %133 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %135 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %138 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %107
  %142 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %143 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %146 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @hton24(i32 %144, i64 %147)
  br label %157

149:                                              ; preds = %107
  %150 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %151 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %154 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @hton24(i32 %152, i64 %155)
  br label %157

157:                                              ; preds = %149, %141
  %158 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %159 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @htonl(i32 %161)
  %163 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %164 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %166 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ESB_ST_RESP, align 4
  %169 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @ESB_ST_COMPLETE, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %167, %172
  %174 = call i8* @htonl(i32 %173)
  %175 = load %struct.fc_els_rec_acc*, %struct.fc_els_rec_acc** %7, align 8
  %176 = getelementptr inbounds %struct.fc_els_rec_acc, %struct.fc_els_rec_acc* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %178 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %179 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %180 = call i32 @fc_fill_reply_hdr(%struct.fc_frame* %177, %struct.fc_frame* %178, i32 %179, i32 0)
  %181 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %182 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame.1*)** %183, align 8
  %185 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %186 = bitcast %struct.fc_lport* %185 to %struct.fc_lport.0*
  %187 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %188 = bitcast %struct.fc_frame* %187 to %struct.fc_frame.1*
  %189 = call i32 %184(%struct.fc_lport.0* %186, %struct.fc_frame.1* %188)
  br label %190

190:                                              ; preds = %157, %104
  %191 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %192 = call i32 @fc_exch_release(%struct.fc_exch* %191)
  br label %201

193:                                              ; preds = %98, %87
  %194 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %195 = call i32 @fc_exch_release(%struct.fc_exch* %194)
  br label %196

196:                                              ; preds = %193, %64, %52, %23
  %197 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @fc_seq_ls_rjt(%struct.fc_frame* %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %196, %190
  ret void
}

declare dso_local %struct.fc_lport* @fr_dev(%struct.fc_frame*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @fc_host_port_id(i32) #1

declare dso_local i32 @FC_LPORT_DBG(%struct.fc_lport*, i8*, i64, i64, i64) #1

declare dso_local %struct.fc_exch* @fc_exch_lookup(%struct.fc_lport*, i64) #1

declare dso_local i32 @FC_EXCH_DBG(%struct.fc_exch*, i8*, ...) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @memset(%struct.fc_els_rec_acc*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @hton24(i32, i64) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame*, %struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

declare dso_local i32 @fc_seq_ls_rjt(%struct.fc_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
