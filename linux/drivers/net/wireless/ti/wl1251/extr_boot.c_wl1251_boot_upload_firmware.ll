; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_boot.c_wl1251_boot_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32* }

@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"chip id before fw upload: 0x%x\00", align 1
@CHIP_ID_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"fw_data_len %zu chunk_size %d\00", align 1
@CHUNK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"firmware length not multiple of four\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"allocation for firmware upload chunk failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WL1251_PART_DOWN_MEM_START = common dso_local global i32 0, align 4
@WL1251_PART_DOWN_MEM_SIZE = common dso_local global i32 0, align 4
@WL1251_PART_DOWN_REG_START = common dso_local global i32 0, align 4
@WL1251_PART_DOWN_REG_SIZE = common dso_local global i32 0, align 4
@FW_HDR_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"uploading fw chunk 0x%p to 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"uploading fw last chunk (%zu B) 0x%p to 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*)* @wl1251_boot_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_boot_upload_firmware(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %11 = load i32, i32* @DEBUG_BOOT, align 4
  %12 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %13 = load i32, i32* @CHIP_ID_B, align 4
  %14 = call i32 @wl1251_reg_read32(%struct.wl1251* %12, i32 %13)
  %15 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %17 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 24
  %22 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %23 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 %21, %27
  %29 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %30 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %28, %34
  %36 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %37 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %35, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i32, i32* @DEBUG_BOOT, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @CHUNK_SIZE, align 8
  %46 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = urem i64 %47, 4
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = call i32 @wl1251_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %190

54:                                               ; preds = %1
  %55 = load i64, i64* @CHUNK_SIZE, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kmalloc(i64 %55, i32 %56)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = call i32 @wl1251_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %190

64:                                               ; preds = %54
  %65 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %66 = load i32, i32* @WL1251_PART_DOWN_MEM_START, align 4
  %67 = load i32, i32* @WL1251_PART_DOWN_MEM_SIZE, align 4
  %68 = load i32, i32* @WL1251_PART_DOWN_REG_START, align 4
  %69 = load i32, i32* @WL1251_PART_DOWN_REG_SIZE, align 4
  %70 = call i32 @wl1251_set_partition(%struct.wl1251* %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 0, i32* %5, align 4
  %71 = load i32, i32* @WL1251_PART_DOWN_MEM_SIZE, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %115, %64
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @CHUNK_SIZE, align 8
  %77 = udiv i64 %75, %76
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %151

79:                                               ; preds = %72
  %80 = load i32, i32* @WL1251_PART_DOWN_MEM_START, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @CHUNK_SIZE, align 8
  %86 = mul i64 %84, %85
  %87 = add i64 %81, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %79
  %93 = load i32, i32* @WL1251_PART_DOWN_MEM_START, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @CHUNK_SIZE, align 8
  %98 = mul i64 %96, %97
  %99 = add i64 %94, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @CHUNK_SIZE, align 8
  %104 = mul i64 %102, %103
  %105 = load i32, i32* @WL1251_PART_DOWN_MEM_SIZE, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %104, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %6, align 4
  %109 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @WL1251_PART_DOWN_MEM_SIZE, align 4
  %112 = load i32, i32* @WL1251_PART_DOWN_REG_START, align 4
  %113 = load i32, i32* @WL1251_PART_DOWN_REG_SIZE, align 4
  %114 = call i32 @wl1251_set_partition(%struct.wl1251* %109, i32 %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %92, %79
  %116 = load i32, i32* @WL1251_PART_DOWN_MEM_START, align 4
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @CHUNK_SIZE, align 8
  %121 = mul i64 %119, %120
  %122 = add i64 %117, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %4, align 4
  %124 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %125 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @FW_HDR_SIZE, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* @CHUNK_SIZE, align 8
  %133 = mul i64 %131, %132
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32* %134, i32** %9, align 8
  %135 = load i32, i32* @DEBUG_BOOT, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32* %136, i32 %137)
  %139 = load i64, i64* @CHUNK_SIZE, align 8
  store i64 %139, i64* %8, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @memcpy(i32* %140, i32* %141, i64 %142)
  %144 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32*, i32** %10, align 8
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @wl1251_mem_write(%struct.wl1251* %144, i32 %145, i32* %146, i64 %147)
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %72

151:                                              ; preds = %72
  %152 = load i32, i32* @WL1251_PART_DOWN_MEM_START, align 4
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* @CHUNK_SIZE, align 8
  %157 = mul i64 %155, %156
  %158 = add i64 %153, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %4, align 4
  %160 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %161 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @FW_HDR_SIZE, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* @CHUNK_SIZE, align 8
  %169 = mul i64 %167, %168
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  store i32* %170, i32** %9, align 8
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* @CHUNK_SIZE, align 8
  %173 = urem i64 %171, %172
  store i64 %173, i64* %8, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load i64, i64* %8, align 8
  %177 = call i32 @memcpy(i32* %174, i32* %175, i64 %176)
  %178 = load i32, i32* @DEBUG_BOOT, align 4
  %179 = load i64, i64* %8, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %4, align 4
  %182 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %178, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %179, i32* %180, i32 %181)
  %183 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load i32*, i32** %10, align 8
  %186 = load i64, i64* %8, align 8
  %187 = call i32 @wl1251_mem_write(%struct.wl1251* %183, i32 %184, i32* %185, i64 %186)
  %188 = load i32*, i32** %10, align 8
  %189 = call i32 @kfree(i32* %188)
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %151, %60, %50
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local i32 @wl1251_reg_read32(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @wl1251_set_partition(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @wl1251_mem_write(%struct.wl1251*, i32, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
