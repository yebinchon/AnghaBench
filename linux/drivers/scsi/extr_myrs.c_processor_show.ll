; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_processor_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_processor_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_cpu_type_tbl = type { i64, i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.myrs_hba = type { %struct.myrs_ctlr_info* }
%struct.myrs_ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i8* }

@myrs_cpu_type_names = common dso_local global %struct.myrs_cpu_type_tbl* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"1: %s (%s, %d cpus)\0A2: %s (%s, %d cpus)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"1: %s (%s, %d cpus)\0A2: absent\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"1: absent\0A2: %s (%s, %d cpus)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"1: absent\0A2: absent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @processor_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processor_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.myrs_hba*, align 8
  %9 = alloca %struct.myrs_cpu_type_tbl*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.myrs_ctlr_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %7, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %18 = call %struct.myrs_hba* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.myrs_hba* %18, %struct.myrs_hba** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %19 = load %struct.myrs_hba*, %struct.myrs_hba** %8, align 8
  %20 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %19, i32 0, i32 0
  %21 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %20, align 8
  store %struct.myrs_ctlr_info* %21, %struct.myrs_ctlr_info** %12, align 8
  %22 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %23 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %3
  %30 = load %struct.myrs_cpu_type_tbl*, %struct.myrs_cpu_type_tbl** @myrs_cpu_type_names, align 8
  store %struct.myrs_cpu_type_tbl* %30, %struct.myrs_cpu_type_tbl** %9, align 8
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %58, %29
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.myrs_cpu_type_tbl*, %struct.myrs_cpu_type_tbl** @myrs_cpu_type_names, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.myrs_cpu_type_tbl* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.myrs_cpu_type_tbl*, %struct.myrs_cpu_type_tbl** %9, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.myrs_cpu_type_tbl, %struct.myrs_cpu_type_tbl* %37, i64 %39
  %41 = getelementptr inbounds %struct.myrs_cpu_type_tbl, %struct.myrs_cpu_type_tbl* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %44 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.myrs_cpu_type_tbl*, %struct.myrs_cpu_type_tbl** %9, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.myrs_cpu_type_tbl, %struct.myrs_cpu_type_tbl* %51, i64 %53
  %55 = getelementptr inbounds %struct.myrs_cpu_type_tbl, %struct.myrs_cpu_type_tbl* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %10, align 8
  br label %61

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %31

61:                                               ; preds = %50, %31
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %64 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %62
  %71 = load %struct.myrs_cpu_type_tbl*, %struct.myrs_cpu_type_tbl** @myrs_cpu_type_names, align 8
  store %struct.myrs_cpu_type_tbl* %71, %struct.myrs_cpu_type_tbl** %9, align 8
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %99, %70
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.myrs_cpu_type_tbl*, %struct.myrs_cpu_type_tbl** @myrs_cpu_type_names, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.myrs_cpu_type_tbl* %74)
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load %struct.myrs_cpu_type_tbl*, %struct.myrs_cpu_type_tbl** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.myrs_cpu_type_tbl, %struct.myrs_cpu_type_tbl* %78, i64 %80
  %82 = getelementptr inbounds %struct.myrs_cpu_type_tbl, %struct.myrs_cpu_type_tbl* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %85 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %83, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %77
  %92 = load %struct.myrs_cpu_type_tbl*, %struct.myrs_cpu_type_tbl** %9, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.myrs_cpu_type_tbl, %struct.myrs_cpu_type_tbl* %92, i64 %94
  %96 = getelementptr inbounds %struct.myrs_cpu_type_tbl, %struct.myrs_cpu_type_tbl* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %11, align 8
  br label %102

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %72

102:                                              ; preds = %91, %72
  br label %103

103:                                              ; preds = %102, %62
  %104 = load i8*, i8** %10, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %138

106:                                              ; preds = %103
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %138

109:                                              ; preds = %106
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %112 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %119 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %125 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %132 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %110, i32 64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %116, i8* %117, i32 %123, i8* %129, i8* %130, i32 %136)
  store i32 %137, i32* %13, align 4
  br label %187

138:                                              ; preds = %106, %103
  %139 = load i8*, i8** %10, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load i8*, i8** %11, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %160, label %144

144:                                              ; preds = %141
  %145 = load i8*, i8** %6, align 8
  %146 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %147 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %154 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %145, i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %151, i8* %152, i32 %158)
  store i32 %159, i32* %13, align 4
  br label %186

160:                                              ; preds = %141, %138
  %161 = load i8*, i8** %10, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %182, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** %11, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %182

166:                                              ; preds = %163
  %167 = load i8*, i8** %6, align 8
  %168 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %169 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %168, i32 0, i32 0
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = load %struct.myrs_ctlr_info*, %struct.myrs_ctlr_info** %12, align 8
  %176 = getelementptr inbounds %struct.myrs_ctlr_info, %struct.myrs_ctlr_info* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %167, i32 64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %173, i8* %174, i32 %180)
  store i32 %181, i32* %13, align 4
  br label %185

182:                                              ; preds = %163, %160
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %183, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %182, %166
  br label %186

186:                                              ; preds = %185, %144
  br label %187

187:                                              ; preds = %186, %109
  %188 = load i32, i32* %13, align 4
  ret i32 %188
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.myrs_cpu_type_tbl*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
