; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wl1271_boot_upload_firmware_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wl1271_boot_upload_firmware_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.wlcore_partition_set* }
%struct.wlcore_partition_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"starting firmware upload\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"fw_data_len %zd chunk_size %d\00", align 1
@CHUNK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"firmware length not multiple of four\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"allocation for firmware upload chunk failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PART_DOWN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"uploading fw chunk 0x%p to 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"uploading fw last chunk (%zd B) 0x%p to 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i8*, i64, i32)* @wl1271_boot_upload_firmware_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_boot_upload_firmware_chunk(%struct.wl1271* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wlcore_partition_set, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wlcore_partition_set*, align 8
  %15 = alloca %struct.wlcore_partition_set*, align 8
  %16 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @DEBUG_BOOT, align 4
  %18 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @DEBUG_BOOT, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @CHUNK_SIZE, align 8
  %22 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %20, i64 %21)
  %23 = load i64, i64* %8, align 8
  %24 = urem i64 %23, 4
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = call i32 @wl1271_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %192

30:                                               ; preds = %4
  %31 = load i64, i64* @CHUNK_SIZE, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.wlcore_partition_set* @kmalloc(i64 %31, i32 %32)
  store %struct.wlcore_partition_set* %33, %struct.wlcore_partition_set** %15, align 8
  %34 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %15, align 8
  %35 = icmp ne %struct.wlcore_partition_set* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = call i32 @wl1271_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %192

40:                                               ; preds = %30
  %41 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 0
  %43 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %42, align 8
  %44 = load i64, i64* @PART_DOWN, align 8
  %45 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %43, i64 %44
  %46 = call i32 @memcpy(%struct.wlcore_partition_set* %10, %struct.wlcore_partition_set* %45, i64 8)
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %10, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %51 = call i32 @wlcore_set_partition(%struct.wl1271* %50, %struct.wlcore_partition_set* %10)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %188

55:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  %56 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 0
  %58 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %57, align 8
  %59 = load i64, i64* @PART_DOWN, align 8
  %60 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %58, i64 %59
  %61 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %149, %55
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @CHUNK_SIZE, align 8
  %69 = udiv i64 %67, %68
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %152

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @CHUNK_SIZE, align 8
  %78 = mul i64 %76, %77
  %79 = add i64 %73, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %117

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @CHUNK_SIZE, align 8
  %90 = mul i64 %88, %89
  %91 = add i64 %86, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @CHUNK_SIZE, align 8
  %96 = mul i64 %94, %95
  %97 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %98 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %97, i32 0, i32 0
  %99 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %98, align 8
  %100 = load i64, i64* @PART_DOWN, align 8
  %101 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %99, i64 %100
  %102 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %96, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  %109 = getelementptr inbounds %struct.wlcore_partition_set, %struct.wlcore_partition_set* %10, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %112 = call i32 @wlcore_set_partition(%struct.wl1271* %111, %struct.wlcore_partition_set* %10)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %84
  br label %188

116:                                              ; preds = %84
  br label %117

117:                                              ; preds = %116, %71
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @CHUNK_SIZE, align 8
  %123 = mul i64 %121, %122
  %124 = add i64 %119, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* @CHUNK_SIZE, align 8
  %130 = mul i64 %128, %129
  %131 = getelementptr i8, i8* %126, i64 %130
  %132 = bitcast i8* %131 to %struct.wlcore_partition_set*
  store %struct.wlcore_partition_set* %132, %struct.wlcore_partition_set** %14, align 8
  %133 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %15, align 8
  %134 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %14, align 8
  %135 = load i64, i64* @CHUNK_SIZE, align 8
  %136 = call i32 @memcpy(%struct.wlcore_partition_set* %133, %struct.wlcore_partition_set* %134, i64 %135)
  %137 = load i32, i32* @DEBUG_BOOT, align 4
  %138 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %14, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.wlcore_partition_set* %138, i32 %139)
  %141 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %15, align 8
  %144 = load i64, i64* @CHUNK_SIZE, align 8
  %145 = call i32 @wlcore_write(%struct.wl1271* %141, i32 %142, %struct.wlcore_partition_set* %143, i64 %144, i32 0)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %117
  br label %188

149:                                              ; preds = %117
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %64

152:                                              ; preds = %64
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* @CHUNK_SIZE, align 8
  %158 = mul i64 %156, %157
  %159 = add i64 %154, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %11, align 4
  %161 = load i8*, i8** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @CHUNK_SIZE, align 8
  %165 = mul i64 %163, %164
  %166 = getelementptr i8, i8* %161, i64 %165
  %167 = bitcast i8* %166 to %struct.wlcore_partition_set*
  store %struct.wlcore_partition_set* %167, %struct.wlcore_partition_set** %14, align 8
  %168 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %15, align 8
  %169 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %14, align 8
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* @CHUNK_SIZE, align 8
  %172 = urem i64 %170, %171
  %173 = call i32 @memcpy(%struct.wlcore_partition_set* %168, %struct.wlcore_partition_set* %169, i64 %172)
  %174 = load i32, i32* @DEBUG_BOOT, align 4
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* @CHUNK_SIZE, align 8
  %177 = urem i64 %175, %176
  %178 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %14, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %174, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %177, %struct.wlcore_partition_set* %178, i32 %179)
  %181 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %15, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @CHUNK_SIZE, align 8
  %186 = urem i64 %184, %185
  %187 = call i32 @wlcore_write(%struct.wl1271* %181, i32 %182, %struct.wlcore_partition_set* %183, i64 %186, i32 0)
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %152, %148, %115, %54
  %189 = load %struct.wlcore_partition_set*, %struct.wlcore_partition_set** %15, align 8
  %190 = call i32 @kfree(%struct.wlcore_partition_set* %189)
  %191 = load i32, i32* %16, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %188, %36, %26
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local %struct.wlcore_partition_set* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.wlcore_partition_set*, %struct.wlcore_partition_set*, i64) #1

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, %struct.wlcore_partition_set*) #1

declare dso_local i32 @wlcore_write(%struct.wl1271*, i32, %struct.wlcore_partition_set*, i64, i32) #1

declare dso_local i32 @kfree(%struct.wlcore_partition_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
