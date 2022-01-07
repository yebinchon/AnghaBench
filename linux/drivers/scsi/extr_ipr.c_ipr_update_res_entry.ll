; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_update_res_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_update_res_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_resource_entry = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_10__*, i64, %struct.TYPE_6__, i32, i8* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ipr_config_table_entry_wrapper = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Resource path: %s\0A\00", align 1
@IPR_IS_IOA_RESOURCE = common dso_local global i32 0, align 4
@IPR_RES_TYPE_IOAFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_resource_entry*, %struct.ipr_config_table_entry_wrapper*)* @ipr_update_res_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_update_res_entry(%struct.ipr_resource_entry* %0, %struct.ipr_config_table_entry_wrapper* %1) #0 {
  %3 = alloca %struct.ipr_resource_entry*, align 8
  %4 = alloca %struct.ipr_config_table_entry_wrapper*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipr_resource_entry* %0, %struct.ipr_resource_entry** %3, align 8
  store %struct.ipr_config_table_entry_wrapper* %1, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %9 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %13, i32 0, i32 6
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %133

19:                                               ; preds = %2
  %20 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %21 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @be16_to_cpu(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %29 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %31 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @be16_to_cpu(i32 %35)
  %37 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %38 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %37, i32 0, i32 10
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %40 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %46 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %48 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %47, i32 0, i32 4
  %49 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %50 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  %54 = call i32 @memcpy(i32* %48, i32* %53, i32 4)
  %55 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %56 = call i32 @IPR_QUEUEING_MODEL64(%struct.ipr_resource_entry* %55)
  %57 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %58 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %60 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %66 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %72 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %74 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %80 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %82 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %85 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = call i32 @memcpy(i32* %83, i32* %88, i32 4)
  %90 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %91 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %94 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = call i64 @memcmp(i32* %92, i32* %97, i32 8)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %19
  %101 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %102 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %105 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = call i32 @memcpy(i32* %103, i32* %108, i32 8)
  store i32 1, i32* %8, align 4
  br label %110

110:                                              ; preds = %100, %19
  %111 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %112 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load i32, i32* @KERN_INFO, align 4
  %120 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %121 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %124 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %123, i32 0, i32 6
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %127 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = trunc i64 %10 to i32
  %130 = call i32 @ipr_format_res_path(%struct.TYPE_10__* %125, i32* %128, i8* %12, i32 %129)
  %131 = call i32 @sdev_printk(i32 %119, i64 %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %118, %115, %110
  br label %189

133:                                              ; preds = %2
  %134 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %135 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %141 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %143 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IPR_IS_IOA_RESOURCE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %133
  %149 = load i32, i32* @IPR_RES_TYPE_IOAFP, align 4
  %150 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %151 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %162

152:                                              ; preds = %133
  %153 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %154 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 15
  %160 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %161 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %152, %148
  %163 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %164 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %163, i32 0, i32 4
  %165 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %166 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 4
  %170 = call i32 @memcpy(i32* %164, i32* %169, i32 4)
  %171 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %172 = call i32 @IPR_QUEUEING_MODEL(%struct.ipr_resource_entry* %171)
  %173 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %174 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %176 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %7, align 4
  %181 = load %struct.ipr_config_table_entry_wrapper*, %struct.ipr_config_table_entry_wrapper** %4, align 8
  %182 = getelementptr inbounds %struct.ipr_config_table_entry_wrapper, %struct.ipr_config_table_entry_wrapper* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %188 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %162, %132
  %190 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @ipr_update_ata_class(%struct.ipr_resource_entry* %190, i32 %191)
  %193 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %193)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @be16_to_cpu(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @IPR_QUEUEING_MODEL64(%struct.ipr_resource_entry*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @sdev_printk(i32, i64, i8*, i32) #2

declare dso_local i32 @ipr_format_res_path(%struct.TYPE_10__*, i32*, i8*, i32) #2

declare dso_local i32 @IPR_QUEUEING_MODEL(%struct.ipr_resource_entry*) #2

declare dso_local i32 @ipr_update_ata_class(%struct.ipr_resource_entry*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
