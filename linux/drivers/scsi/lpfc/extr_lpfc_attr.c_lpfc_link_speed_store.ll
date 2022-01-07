; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_link_speed_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_link_speed_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@HBA_FORCED_LINK_SPEED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"nolip \00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"3055 lpfc_link_speed changed from %d to %d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(nolip)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"(lip)\00", align 1
@LMT_1Gb = common dso_local global i32 0, align 4
@LMT_2Gb = common dso_local global i32 0, align 4
@LMT_4Gb = common dso_local global i32 0, align 4
@LMT_8Gb = common dso_local global i32 0, align 4
@LPFC_USER_LINK_SPEED_10G = common dso_local global i32 0, align 4
@LMT_10Gb = common dso_local global i32 0, align 4
@LMT_16Gb = common dso_local global i32 0, align 4
@LMT_32Gb = common dso_local global i32 0, align 4
@LMT_64Gb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [90 x i8] c"2879 lpfc_link_speed attribute cannot be set to %d. Speed is not supported by this port.\0A\00", align 1
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [90 x i8] c"3112 lpfc_link_speed attribute cannot be set to %d. Speed is not supported in loop mode.\0A\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"0469 lpfc_link_speed attribute cannot be set to %d, allowed values are [%s]\0A\00", align 1
@LPFC_LINK_SPEED_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_link_speed_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpfc_link_speed_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %19)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %10, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %24, %struct.lpfc_vport** %11, align 8
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 0
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %26, align 8
  store %struct.lpfc_hba* %27, %struct.lpfc_hba** %12, align 8
  store i32 128, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %15, align 8
  %29 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i64 @bf_get(i32 %29, i32* %32)
  store i64 %33, i64* %18, align 8
  %34 = load i64, i64* %18, align 8
  %35 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HBA_FORCED_LINK_SPEED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i64, i64* @EPERM, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %230

47:                                               ; preds = %37, %4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  store i32 1, i32* %14, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  store i8* %53, i8** %15, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @isdigit(i8 signext %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @EINVAL, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %5, align 8
  br label %230

63:                                               ; preds = %54
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @sscanf(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* @EINVAL, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %230

70:                                               ; preds = %63
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %72 = load i32, i32* @KERN_ERR, align 4
  %73 = load i32, i32* @LOG_INIT, align 4
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %82 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %76, i32 %77, i8* %81)
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 134
  br i1 %84, label %85, label %92

85:                                               ; preds = %70
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @LMT_1Gb, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %163

92:                                               ; preds = %85, %70
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 133
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @LMT_2Gb, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %163

102:                                              ; preds = %95, %92
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, 131
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @LMT_4Gb, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %163

112:                                              ; preds = %105, %102
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %113, 129
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @LMT_8Gb, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %163

122:                                              ; preds = %115, %112
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @LPFC_USER_LINK_SPEED_10G, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @LMT_10Gb, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %163

133:                                              ; preds = %126, %122
  %134 = load i32, i32* %13, align 4
  %135 = icmp eq i32 %134, 135
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @LMT_16Gb, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %136, %133
  %144 = load i32, i32* %13, align 4
  %145 = icmp eq i32 %144, 132
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %148 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @LMT_32Gb, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %146, %143
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 130
  br i1 %155, label %156, label %171

156:                                              ; preds = %153
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %158 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @LMT_64Gb, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %156, %146, %136, %126, %115, %105, %95, %85
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %165 = load i32, i32* @KERN_ERR, align 4
  %166 = load i32, i32* @LOG_INIT, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  %169 = load i64, i64* @EINVAL, align 8
  %170 = sub i64 0, %169
  store i64 %170, i64* %5, align 8
  br label %230

171:                                              ; preds = %156, %153
  %172 = load i32, i32* %13, align 4
  %173 = icmp sge i32 %172, 135
  br i1 %173, label %174, label %188

174:                                              ; preds = %171
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %182 = load i32, i32* @KERN_ERR, align 4
  %183 = load i32, i32* @LOG_INIT, align 4
  %184 = load i32, i32* %13, align 4
  %185 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %181, i32 %182, i32 %183, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = load i64, i64* @EINVAL, align 8
  %187 = sub i64 0, %186
  store i64 %187, i64* %5, align 8
  br label %230

188:                                              ; preds = %174, %171
  %189 = load i32, i32* %13, align 4
  switch i32 %189, label %220 [
    i32 128, label %190
    i32 134, label %190
    i32 133, label %190
    i32 131, label %190
    i32 129, label %190
    i32 135, label %190
    i32 132, label %190
    i32 130, label %190
  ]

190:                                              ; preds = %188, %188, %188, %188, %188, %188, %188, %188
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %17, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %197 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load i32, i32* %14, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %190
  %201 = load i8*, i8** %8, align 8
  %202 = call i64 @strlen(i8* %201)
  store i64 %202, i64* %5, align 8
  br label %230

203:                                              ; preds = %190
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %205 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @lpfc_shost_from_vport(i32 %206)
  %208 = call i32 @lpfc_issue_lip(i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %203
  %212 = load i64, i64* %17, align 8
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  %215 = load i64, i64* @EINVAL, align 8
  %216 = sub i64 0, %215
  store i64 %216, i64* %5, align 8
  br label %230

217:                                              ; preds = %203
  %218 = load i8*, i8** %8, align 8
  %219 = call i64 @strlen(i8* %218)
  store i64 %219, i64* %5, align 8
  br label %230

220:                                              ; preds = %188
  br label %221

221:                                              ; preds = %220
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %223 = load i32, i32* @KERN_ERR, align 4
  %224 = load i32, i32* @LOG_INIT, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* @LPFC_LINK_SPEED_STRING, align 4
  %227 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %222, i32 %223, i32 %224, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i32 %225, i32 %226)
  %228 = load i64, i64* @EINVAL, align 8
  %229 = sub i64 0, %228
  store i64 %229, i64* %5, align 8
  br label %230

230:                                              ; preds = %221, %217, %211, %200, %180, %163, %67, %60, %44
  %231 = load i64, i64* %5, align 8
  ret i64 %231
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i8*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @lpfc_issue_lip(i32) #1

declare dso_local i32 @lpfc_shost_from_vport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
