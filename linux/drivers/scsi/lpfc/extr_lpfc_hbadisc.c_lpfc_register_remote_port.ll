; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_register_remote_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_register_remote_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32, %struct.fc_rport*, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.fc_rport = type { i32, %struct.lpfc_rport_data*, i32, i32, i32 }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_rport_identifiers = type { i32, i32, i8*, i8* }

@LPFC_ENABLE_NVME = common dso_local global i64 0, align 8
@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_RPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rport add:       did:x%x flg:x%x type x%x\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Warning: fc_remote_port_add failed\0A\00", align 1
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@NLP_NVME_INITIATOR = common dso_local global i32 0, align 4
@FC_PORT_ROLE_NVME_INITIATOR = common dso_local global i32 0, align 4
@NLP_NVME_TARGET = common dso_local global i32 0, align 4
@FC_PORT_ROLE_NVME_TARGET = common dso_local global i32 0, align 4
@NLP_NVME_DISCOVERY = common dso_local global i32 0, align 4
@FC_PORT_ROLE_NVME_DISCOVERY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"3183 rport register x%06x, rport x%px role x%x\0A\00", align 1
@LPFC_MAX_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*)* @lpfc_register_remote_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_register_remote_port(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.fc_rport*, align 8
  %7 = alloca %struct.lpfc_rport_data*, align 8
  %8 = alloca %struct.fc_rport_identifiers, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %4, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %11 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %5, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 2
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  store %struct.lpfc_hba* %14, %struct.lpfc_hba** %9, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LPFC_ENABLE_NVME, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %227

21:                                               ; preds = %2
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @wwn_to_u64(i32 %26)
  %28 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @wwn_to_u64(i32 %33)
  %35 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %41 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %42, i32 0, i32 6
  %44 = load %struct.fc_rport*, %struct.fc_rport** %43, align 8
  store %struct.fc_rport* %44, %struct.fc_rport** %6, align 8
  %45 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %46 = icmp ne %struct.fc_rport* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %21
  %48 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %49 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %48, i32 0, i32 1
  %50 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %49, align 8
  store %struct.lpfc_rport_data* %50, %struct.lpfc_rport_data** %7, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %51, i32 0, i32 6
  store %struct.fc_rport* null, %struct.fc_rport** %52, align 8
  %53 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %7, align 8
  %54 = icmp ne %struct.lpfc_rport_data* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %7, align 8
  %57 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %56, i32 0, i32 0
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %57, align 8
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %60 = icmp eq %struct.lpfc_nodelist* %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %63 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %62)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %65, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %66, align 8
  br label %67

67:                                               ; preds = %64, %47
  %68 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %69 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %68, i32 0, i32 4
  %70 = call i32 @put_device(i32* %69)
  br label %71

71:                                               ; preds = %67, %21
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %73 = load i32, i32* @LPFC_DISC_TRC_RPORT, align 4
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %75 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %78 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %81 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %72, i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %82)
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %85 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FC_UNLOADING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  br label %227

91:                                               ; preds = %71
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %93 = call %struct.fc_rport* @fc_remote_port_add(%struct.Scsi_Host* %92, i32 0, %struct.fc_rport_identifiers* %8)
  store %struct.fc_rport* %93, %struct.fc_rport** %6, align 8
  %94 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %94, i32 0, i32 6
  store %struct.fc_rport* %93, %struct.fc_rport** %95, align 8
  %96 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %97 = icmp ne %struct.fc_rport* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %100 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %99, i32 0, i32 4
  %101 = call i32 @get_device(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %98, %91
  %104 = load i32, i32* @KERN_WARNING, align 4
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = call i32 @dev_printk(i32 %104, i32* %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %227

110:                                              ; preds = %98
  %111 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %112 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %115 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %117 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %120 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %122 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %121, i32 0, i32 1
  %123 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %122, align 8
  store %struct.lpfc_rport_data* %123, %struct.lpfc_rport_data** %7, align 8
  %124 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %125 = call %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist* %124)
  %126 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %7, align 8
  %127 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %126, i32 0, i32 0
  store %struct.lpfc_nodelist* %125, %struct.lpfc_nodelist** %127, align 8
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %129 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NLP_FCP_TARGET, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %110
  %135 = load i32, i32* @FC_PORT_ROLE_FCP_TARGET, align 4
  %136 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %134, %110
  %140 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %141 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %148 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %146, %139
  %152 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %153 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @NLP_NVME_INITIATOR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %151
  %159 = load i32, i32* @FC_PORT_ROLE_NVME_INITIATOR, align 4
  %160 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %158, %151
  %164 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %165 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @NLP_NVME_TARGET, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load i32, i32* @FC_PORT_ROLE_NVME_TARGET, align 4
  %172 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %170, %163
  %176 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %177 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @NLP_NVME_DISCOVERY, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %175
  %183 = load i32, i32* @FC_PORT_ROLE_NVME_DISCOVERY, align 4
  %184 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %183
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %182, %175
  %188 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %194 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @fc_remote_port_rolechg(%struct.fc_rport* %193, i32 %195)
  br label %197

197:                                              ; preds = %192, %187
  %198 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %199 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @KERN_INFO, align 4
  %202 = load i32, i32* @LOG_NODE, align 4
  %203 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %204 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %207 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %8, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @lpfc_printf_vlog(i32 %200, i32 %201, i32 %202, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %205, %struct.fc_rport* %206, i32 %208)
  %210 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %211 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, -1
  br i1 %213, label %214, label %226

214:                                              ; preds = %197
  %215 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %216 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @LPFC_MAX_TARGET, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %222 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %225 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %220, %214, %197
  br label %227

227:                                              ; preds = %226, %103, %90, %20
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i8* @wwn_to_u64(i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.fc_rport* @fc_remote_port_add(%struct.Scsi_Host*, i32, %struct.fc_rport_identifiers*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @fc_remote_port_rolechg(%struct.fc_rport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i32, %struct.fc_rport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
