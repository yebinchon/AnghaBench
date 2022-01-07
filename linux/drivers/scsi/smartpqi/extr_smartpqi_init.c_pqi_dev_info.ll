; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32, i8, i8*, i8*, i64, i8, i64, i32, i64, i64, i32*, i64 }

@PQI_DEV_INFO_BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d:%d:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-:-\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" %08x%08x\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" %016llx\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" %s %.8s %.16s \00", align 1
@TYPE_DISK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"SSDSmartPathCap%c En%c %-12s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"AIO%c\00", align 1
@TYPE_ZBC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c" qd=%-6d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, i8*, %struct.pqi_scsi_dev*)* @pqi_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_dev_info(%struct.pqi_ctrl_info* %0, i8* %1, %struct.pqi_scsi_dev* %2) #0 {
  %4 = alloca %struct.pqi_ctrl_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pqi_scsi_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.pqi_scsi_dev* %2, %struct.pqi_scsi_dev** %6, align 8
  %10 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %21 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %25 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %24, i32 0, i32 13
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %13, i64 %30
  %32 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %36 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %39 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %54

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %13, i64 %46
  %48 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %44, %28
  %55 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %56 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %13, i64 %60
  %62 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %66 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %65, i32 0, i32 12
  %67 = bitcast i32** %66 to i32*
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %70 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %69, i32 0, i32 12
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %61, i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %91

77:                                               ; preds = %54
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %13, i64 %79
  %81 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %85 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %84, i32 0, i32 3
  %86 = load i8, i8* %85, align 4
  %87 = sext i8 %86 to i32
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %77, %58
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %13, i64 %93
  %95 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %99 = call i8* @pqi_device_type(%struct.pqi_scsi_dev* %98)
  %100 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %101 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %104 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %99, i8* %102, i8* %105)
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %110 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %91
  %113 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %114 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TYPE_DISK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %144

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %13, i64 %120
  %122 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %126 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %125, i32 0, i32 11
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 43, i32 45
  %131 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %132 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 43, i32 45
  %137 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %138 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @pqi_raid_level_to_string(i32 %139)
  %141 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %121, i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %130, i32 %136, i8* %140)
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %118, %112
  br label %187

145:                                              ; preds = %91
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %13, i64 %147
  %149 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %153 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 43, i32 45
  %158 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %148, i32 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %7, align 4
  %161 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %162 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @TYPE_DISK, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %145
  %167 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %168 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @TYPE_ZBC, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %166, %145
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %13, i64 %174
  %176 = load i32, i32* @PQI_DEV_INFO_BUFFER_LENGTH, align 4
  %177 = load i32, i32* %7, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %180 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %179, i32 0, i32 7
  %181 = load i8, i8* %180, align 8
  %182 = sext i8 %181 to i32
  %183 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %175, i32 %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %172, %166
  br label %187

187:                                              ; preds = %186, %144
  %188 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %4, align 8
  %189 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i8*, i8** %5, align 8
  %193 = call i32 @dev_info(i32* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %192, i8* %13)
  %194 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %194)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #2

declare dso_local i8* @pqi_device_type(%struct.pqi_scsi_dev*) #2

declare dso_local i8* @pqi_raid_level_to_string(i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
