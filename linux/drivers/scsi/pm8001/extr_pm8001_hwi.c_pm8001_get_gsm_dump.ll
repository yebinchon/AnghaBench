; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_get_gsm_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_get_gsm_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pm8001_hba_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@chip_8001 = common dso_local global i64 0, align 8
@SHIFT_REG_64K_MASK = common dso_local global i32 0, align 4
@SHIFT_REG_BIT_SHIFT = common dso_local global i32 0, align 4
@GSM_BASE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_get_gsm_dump(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.Scsi_Host*, align 8
  %20 = alloca %struct.sas_ha_struct*, align 8
  %21 = alloca %struct.pm8001_hba_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %22)
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %19, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %19, align 8
  %25 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %24)
  store %struct.sas_ha_struct* %25, %struct.sas_ha_struct** %20, align 8
  %26 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %20, align 8
  %27 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %26, i32 0, i32 0
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %27, align 8
  store %struct.pm8001_hba_info* %28, %struct.pm8001_hba_info** %21, align 8
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %18, align 8
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %31 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 1048576
  br i1 %34, label %44, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %17, align 4
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp sgt i32 %42, 16777216
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %35, %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %193

47:                                               ; preds = %39
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %49 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @chip_8001, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 2, i32* %11, align 4
  br label %55

54:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %17, align 4
  %57 = and i32 %56, -65536
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %17, align 4
  %59 = and i32 %58, 65535
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 3
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 2
  store i32 %64, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %147, %55
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %150

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = and i32 %72, -65536
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %69
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %77 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @chip_8001, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* @SHIFT_REG_64K_MASK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %15, align 4
  br label %95

87:                                               ; preds = %75
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* @SHIFT_REG_64K_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @SHIFT_REG_BIT_SHIFT, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %87, %81
  %96 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %97 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @chip_8001, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i32, i32* @GSM_BASE, align 4
  store i32 %102, i32* %16, align 4
  %103 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %103, i32 %106)
  %108 = icmp eq i32 -1, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %193

112:                                              ; preds = %101
  br label %124

113:                                              ; preds = %95
  store i32 0, i32* %16, align 4
  %114 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @pm80xx_bar4_shift(%struct.pm8001_hba_info* %114, i32 %117)
  %119 = icmp eq i32 -1, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %193

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %112
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %125, %126
  %128 = and i32 %127, -65536
  store i32 %128, i32* %17, align 4
  store i32 0, i32* %13, align 4
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, 65535
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %124, %69
  %132 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %134, %135
  %137 = and i32 %136, 65535
  %138 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %132, i32 %133, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i8*, i8** %18, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @sprintf(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %140)
  %142 = load i8*, i8** %18, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %18, align 8
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 4
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %131
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %65

150:                                              ; preds = %65
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %156, %157
  %159 = and i32 %158, 65535
  %160 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %154, i32 %155, i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i8*, i8** %18, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @sprintf(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %162)
  %164 = load i8*, i8** %18, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %18, align 8
  br label %167

167:                                              ; preds = %153, %150
  %168 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %169 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %168, i32 0)
  %170 = icmp eq i32 -1, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %193

174:                                              ; preds = %167
  %175 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %176 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1024
  store i32 %178, i32* %176, align 8
  %179 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %180 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp sge i32 %181, 1048576
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %21, align 8
  %185 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %174
  %187 = load i8*, i8** %18, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %186, %171, %120, %109, %44
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm80xx_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
