; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_id_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_id_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_rport_priv = type { i32, i32, i32, %struct.TYPE_2__, %struct.fc_lport* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fc_lport = type { %struct.fc_disc }
%struct.fc_disc = type { i32, i32 }
%struct.fc_ct_hdr = type { i32, i32, i32 }
%struct.fc_ns_gid_pn = type { i32 }

@FC_EX_CLOSED = common dso_local global i32 0, align 4
@FC_FS_ACC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"GPN_ID accepted.  WWPN changed. Port-id %6.6x wwpn %16.16llx\0A\00", align 1
@FC_FS_RJT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"GPN_ID rejected reason %x exp %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GPN_ID unexpected response code %x\0A\00", align 1
@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_disc_gpn_id_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_gpn_id_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.fc_rport_priv*, align 8
  %9 = alloca %struct.fc_lport*, align 8
  %10 = alloca %struct.fc_disc*, align 8
  %11 = alloca %struct.fc_ct_hdr*, align 8
  %12 = alloca %struct.fc_ns_gid_pn*, align 8
  %13 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.fc_rport_priv*
  store %struct.fc_rport_priv* %15, %struct.fc_rport_priv** %7, align 8
  %16 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %17 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %16, i32 0, i32 4
  %18 = load %struct.fc_lport*, %struct.fc_lport** %17, align 8
  store %struct.fc_lport* %18, %struct.fc_lport** %9, align 8
  %19 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %20 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %19, i32 0, i32 0
  store %struct.fc_disc* %20, %struct.fc_disc** %10, align 8
  %21 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.fc_frame* %21)
  %23 = load i32, i32* @FC_EX_CLOSED, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %166

27:                                               ; preds = %3
  %28 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %29 = call i64 @IS_ERR(%struct.fc_frame* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %155

32:                                               ; preds = %27
  %33 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %34 = call %struct.fc_ct_hdr* @fc_frame_payload_get(%struct.fc_frame* %33, i32 12)
  store %struct.fc_ct_hdr* %34, %struct.fc_ct_hdr** %11, align 8
  %35 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %36 = icmp ne %struct.fc_ct_hdr* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %155

38:                                               ; preds = %32
  %39 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ntohs(i32 %41)
  %43 = load i64, i64* @FC_FS_ACC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %129

45:                                               ; preds = %38
  %46 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %47 = call i32 @fr_len(%struct.fc_frame* %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 20
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %155

51:                                               ; preds = %45
  %52 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %53 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %52, i64 1
  %54 = bitcast %struct.fc_ct_hdr* %53 to %struct.fc_ns_gid_pn*
  store %struct.fc_ns_gid_pn* %54, %struct.fc_ns_gid_pn** %12, align 8
  %55 = load %struct.fc_ns_gid_pn*, %struct.fc_ns_gid_pn** %12, align 8
  %56 = getelementptr inbounds %struct.fc_ns_gid_pn, %struct.fc_ns_gid_pn* %55, i32 0, i32 0
  %57 = call i32 @get_unaligned_be64(i32* %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %59 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %62 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %69 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %118

71:                                               ; preds = %51
  %72 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %73 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %117

78:                                               ; preds = %71
  %79 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %80 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %81 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load i32, i32* %13, align 4
  %86 = call i32 (%struct.fc_disc*, i8*, i64, ...) @FC_DISC_DBG(%struct.fc_disc* %79, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %84, i32 %85)
  %87 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %88 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %91 = call i32 @fc_rport_logoff(%struct.fc_rport_priv* %90)
  %92 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %93 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %93, i32 0, i32 0
  %95 = call i32 @mutex_lock(i32* %94)
  %96 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %97 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %98 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport* %96, i32 %100)
  store %struct.fc_rport_priv* %101, %struct.fc_rport_priv** %8, align 8
  %102 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  %103 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %107 = icmp ne %struct.fc_rport_priv* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %78
  %109 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %110 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %113 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %115 = call i32 @fc_rport_login(%struct.fc_rport_priv* %114)
  br label %116

116:                                              ; preds = %108, %78
  br label %166

117:                                              ; preds = %71
  br label %118

118:                                              ; preds = %117, %66
  %119 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %120 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %123 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %125 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %128 = call i32 @fc_rport_login(%struct.fc_rport_priv* %127)
  br label %165

129:                                              ; preds = %38
  %130 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %131 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @ntohs(i32 %132)
  %134 = load i64, i64* @FC_FS_RJT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %129
  %137 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %138 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %139 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %143 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct.fc_disc*, i8*, i64, ...) @FC_DISC_DBG(%struct.fc_disc* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %141, i32 %144)
  %146 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %147 = call i32 @fc_rport_logoff(%struct.fc_rport_priv* %146)
  br label %164

148:                                              ; preds = %129
  %149 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %150 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %11, align 8
  %151 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ntohs(i32 %152)
  %154 = call i32 (%struct.fc_disc*, i8*, i64, ...) @FC_DISC_DBG(%struct.fc_disc* %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %153)
  br label %155

155:                                              ; preds = %148, %50, %37, %31
  %156 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %157 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %156, i32 0, i32 0
  %158 = call i32 @mutex_lock(i32* %157)
  %159 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %160 = call i32 @fc_disc_restart(%struct.fc_disc* %159)
  %161 = load %struct.fc_disc*, %struct.fc_disc** %10, align 8
  %162 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  br label %164

164:                                              ; preds = %155, %136
  br label %165

165:                                              ; preds = %164, %118
  br label %166

166:                                              ; preds = %165, %116, %26
  %167 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %168 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %167, i32 0, i32 0
  %169 = load i32, i32* @fc_rport_destroy, align 4
  %170 = call i32 @kref_put(i32* %168, i32 %169)
  ret void
}

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local %struct.fc_ct_hdr* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @fr_len(%struct.fc_frame*) #1

declare dso_local i32 @get_unaligned_be64(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FC_DISC_DBG(%struct.fc_disc*, i8*, i64, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_rport_logoff(%struct.fc_rport_priv*) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_rport_login(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_disc_restart(%struct.fc_disc*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
