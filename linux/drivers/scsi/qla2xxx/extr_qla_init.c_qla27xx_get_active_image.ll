; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla27xx_get_active_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla27xx_get_active_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32 }
%struct.active_regions = type { i64 }
%struct.qla27xx_image_status = type { i32, i32 }

@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Primary image not addressed\0A\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Primary image\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Primary image signature (%#x) not valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Primary image checksum failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Primary image is active\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Secondary image not addressed\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Secondary image\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Secondary image signature (%#x) not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Secondary image checksum failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Secondary image is active\0A\00", align 1
@QLA27XX_PRIMARY_IMAGE = common dso_local global i64 0, align 8
@QLA27XX_SECONDARY_IMAGE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"active image %s (%u)\0A\00", align 1
@QLA27XX_DEFAULT_IMAGE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"default (boot/fw)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla27xx_get_active_image(%struct.scsi_qla_host* %0, %struct.active_regions* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.active_regions*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.qla27xx_image_status, align 4
  %7 = alloca %struct.qla27xx_image_status, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.active_regions* %1, %struct.active_regions** %4, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 0
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ql_dbg_init, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %22 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %20, %struct.scsi_qla_host* %21, i32 394, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %25 = bitcast %struct.qla27xx_image_status* %6 to i8*
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @qla24xx_read_flash_data(%struct.scsi_qla_host* %24, i8* %25, i32 %28, i32 2)
  %30 = load i64, i64* @QLA_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @WARN_ON_ONCE(i32 1)
  br label %63

34:                                               ; preds = %23
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %36 = call i32 @qla27xx_print_image(%struct.scsi_qla_host* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.qla27xx_image_status* %6)
  %37 = call i64 @qla27xx_check_image_status_signature(%struct.qla27xx_image_status* %6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* @ql_dbg_init, align 4
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %42 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %40, %struct.scsi_qla_host* %41, i32 395, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %63

46:                                               ; preds = %34
  %47 = call i64 @qla27xx_image_status_checksum(%struct.qla27xx_image_status* %6)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @ql_dbg_init, align 4
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %52 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %50, %struct.scsi_qla_host* %51, i32 396, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %63

53:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  %54 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @ql_dbg_init, align 4
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %61 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %59, %struct.scsi_qla_host* %60, i32 397, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %49, %39, %32, %19
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ql_dbg_init, align 4
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %71 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %69, %struct.scsi_qla_host* %70, i32 394, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %107

72:                                               ; preds = %63
  %73 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %74 = bitcast %struct.qla27xx_image_status* %7 to i8*
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @qla24xx_read_flash_data(%struct.scsi_qla_host* %73, i8* %74, i32 %77, i32 2)
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %80 = call i32 @qla27xx_print_image(%struct.scsi_qla_host* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.qla27xx_image_status* %7)
  %81 = call i64 @qla27xx_check_image_status_signature(%struct.qla27xx_image_status* %7)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load i32, i32* @ql_dbg_init, align 4
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %86 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %7, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %84, %struct.scsi_qla_host* %85, i32 395, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  br label %107

90:                                               ; preds = %72
  %91 = call i64 @qla27xx_image_status_checksum(%struct.qla27xx_image_status* %7)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* @ql_dbg_init, align 4
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %96 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %94, %struct.scsi_qla_host* %95, i32 396, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %107

97:                                               ; preds = %90
  store i32 1, i32* %9, align 4
  %98 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %7, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @ql_dbg_init, align 4
  %104 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %105 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %103, %struct.scsi_qla_host* %104, i32 397, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %106

106:                                              ; preds = %102, %97
  br label %107

107:                                              ; preds = %106, %93, %83, %68
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i64, i64* @QLA27XX_PRIMARY_IMAGE, align 8
  %115 = load %struct.active_regions*, %struct.active_regions** %4, align 8
  %116 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %113, %110, %107
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load %struct.active_regions*, %struct.active_regions** %4, align 8
  %125 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = call i64 @qla27xx_compare_image_generation(%struct.qla27xx_image_status* %6, %struct.qla27xx_image_status* %7)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128, %123
  %132 = load i64, i64* @QLA27XX_SECONDARY_IMAGE, align 8
  %133 = load %struct.active_regions*, %struct.active_regions** %4, align 8
  %134 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %120, %117
  %137 = load i32, i32* @ql_dbg_init, align 4
  %138 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %139 = load %struct.active_regions*, %struct.active_regions** %4, align 8
  %140 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @QLA27XX_DEFAULT_IMAGE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %162

145:                                              ; preds = %136
  %146 = load %struct.active_regions*, %struct.active_regions** %4, align 8
  %147 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @QLA27XX_PRIMARY_IMAGE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %160

152:                                              ; preds = %145
  %153 = load %struct.active_regions*, %struct.active_regions** %4, align 8
  %154 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @QLA27XX_SECONDARY_IMAGE, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)
  br label %160

160:                                              ; preds = %152, %151
  %161 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %151 ], [ %159, %152 ]
  br label %162

162:                                              ; preds = %160, %144
  %163 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), %144 ], [ %161, %160 ]
  %164 = load %struct.active_regions*, %struct.active_regions** %4, align 8
  %165 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %137, %struct.scsi_qla_host* %138, i32 399, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %163, i64 %166)
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i64 @qla24xx_read_flash_data(%struct.scsi_qla_host*, i8*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @qla27xx_print_image(%struct.scsi_qla_host*, i8*, %struct.qla27xx_image_status*) #1

declare dso_local i64 @qla27xx_check_image_status_signature(%struct.qla27xx_image_status*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @qla27xx_image_status_checksum(%struct.qla27xx_image_status*) #1

declare dso_local i64 @qla27xx_compare_image_generation(%struct.qla27xx_image_status*, %struct.qla27xx_image_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
