; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_path_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_path_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pqi_ctrl_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_device = type { %struct.pqi_scsi_dev*, i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32, i64, i32*, i32*, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MAX_PATHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Inactive\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"[%d:%d:%d:%d] %20.20s \00", align 1
@TYPE_RAID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"PORT: %.2s \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"BOX: %hhu \00", align 1
@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"BAY: %hhu \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pqi_path_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_path_info_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pqi_ctrl_info*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.pqi_scsi_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [2 x i8], align 1
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.scsi_device* @to_scsi_device(%struct.device* %19)
  store %struct.scsi_device* %20, %struct.scsi_device** %9, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.pqi_ctrl_info* @shost_to_hba(i32 %23)
  store %struct.pqi_ctrl_info* %24, %struct.pqi_ctrl_info** %8, align 8
  %25 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %26 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %25, i32 0, i32 0
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 0
  %31 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %30, align 8
  store %struct.pqi_scsi_dev* %31, %struct.pqi_scsi_dev** %10, align 8
  %32 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %33 = icmp ne %struct.pqi_scsi_dev* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %3
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %36 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %35, i32 0, i32 0
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %230

41:                                               ; preds = %3
  %42 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %43 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %221, %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @MAX_PATHS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %224

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %54 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %68

58:                                               ; preds = %49
  %59 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %60 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %67

66:                                               ; preds = %58
  br label %221

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %57
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %73, %75
  %77 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %78 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %83 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %86 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %89 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %92 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @scsi_device_type(i64 %93)
  %95 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %72, i64 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84, i32 %87, i32 %90, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %101 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TYPE_RAID, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %68
  %106 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %107 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %68
  br label %206

110:                                              ; preds = %105
  %111 = bitcast [2 x i8]* %18 to i8**
  %112 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %113 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @memcpy(i8** %111, i32* %117, i32 2)
  %119 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp slt i32 %121, 48
  br i1 %122, label %123, label %125

123:                                              ; preds = %110
  %124 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  store i8 48, i8* %124, align 1
  br label %125

125:                                              ; preds = %123, %110
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp slt i32 %128, 48
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 1
  store i8 48, i8* %131, align 1
  br label %132

132:                                              ; preds = %130, %125
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i64, i64* @PAGE_SIZE, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %137, %139
  %141 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %142 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %136, i64 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %13, align 4
  %147 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %148 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %132
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 255
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i64, i64* @PAGE_SIZE, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = sub nsw i64 %164, %166
  %168 = load i32, i32* %14, align 4
  %169 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %163, i64 %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %159, %156, %132
  %175 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %176 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TYPE_DISK, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %182 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TYPE_ZBC, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %180, %174
  %187 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %188 = call i64 @pqi_expose_device(%struct.pqi_scsi_dev* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %186
  %191 = load i8*, i8** %7, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = load i64, i64* @PAGE_SIZE, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 %195, %197
  %199 = load i32, i32* %15, align 4
  %200 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %194, i64 %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %202, %200
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %190, %186, %180
  br label %206

206:                                              ; preds = %205, %109
  %207 = load i8*, i8** %7, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i64, i64* @PAGE_SIZE, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = sub nsw i64 %211, %213
  %215 = load i8*, i8** %17, align 8
  %216 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %210, i64 %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %215)
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %206, %66
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %45

224:                                              ; preds = %45
  %225 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %226 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %225, i32 0, i32 0
  %227 = load i64, i64* %11, align 8
  %228 = call i32 @spin_unlock_irqrestore(i32* %226, i64 %227)
  %229 = load i32, i32* %13, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %224, %34
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @scsi_device_type(i64) #1

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

declare dso_local i64 @pqi_expose_device(%struct.pqi_scsi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
