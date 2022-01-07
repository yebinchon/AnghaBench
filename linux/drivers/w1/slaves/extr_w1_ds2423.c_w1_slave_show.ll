; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2423.c_w1_slave_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2423.c_w1_slave_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_slave = type { %struct.w1_master* }
%struct.w1_master = type { i32 }

@COUNTER_COUNT = common dso_local global i32 0, align 4
@READ_BYTE_COUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"w1_counter_read() returned %u bytes instead of %d bytes wanted.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"crc=NO\0A\00", align 1
@CRC16_INIT = common dso_local global i32 0, align 4
@CRC16_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"crc=YES c=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Connection error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @w1_slave_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_slave_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.w1_slave*, align 8
  %8 = alloca %struct.w1_master*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %19)
  store %struct.w1_slave* %20, %struct.w1_slave** %7, align 8
  %21 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %22 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %21, i32 0, i32 0
  %23 = load %struct.w1_master*, %struct.w1_master** %22, align 8
  store %struct.w1_master* %23, %struct.w1_master** %8, align 8
  %24 = load i32, i32* @COUNTER_COUNT, align 4
  %25 = load i32, i32* @READ_BYTE_COUNT, align 4
  %26 = mul nsw i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %9, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %30, i32* %15, align 4
  store i32 415, i32* %12, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 165, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %12, align 4
  %36 = ashr i32 %35, 8
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %39 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %42 = call i32 @w1_reset_select_slave(%struct.w1_slave* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %193, label %44

44:                                               ; preds = %3
  %45 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %47 = call i32 @w1_write_block(%struct.w1_master* %45, i32* %46, i32 3)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %189, %44
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %192

51:                                               ; preds = %48
  %52 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @READ_BYTE_COUNT, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %29, i64 %56
  %58 = load i32, i32* @READ_BYTE_COUNT, align 4
  %59 = call i64 @w1_read_block(%struct.w1_master* %52, i32* %57, i32 %58)
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %89, %51
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* @READ_BYTE_COUNT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @READ_BYTE_COUNT, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %29, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %76, i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %64

92:                                               ; preds = %64
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* @READ_BYTE_COUNT, align 4
  %97 = mul nsw i32 %95, %96
  %98 = icmp ne i32 %93, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @READ_BYTE_COUNT, align 4
  %103 = call i32 @dev_warn(%struct.device* %100, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i32, i32* %15, align 4
  %113 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* %15, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %15, align 4
  br label %188

116:                                              ; preds = %92
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* @CRC16_INIT, align 4
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %122 = call i32 @crc16(i32 %120, i32* %121, i32 3)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @crc16(i32 %123, i32* %29, i32 11)
  store i32 %124, i32* %18, align 4
  br label %136

125:                                              ; preds = %116
  %126 = load i32, i32* @CRC16_INIT, align 4
  %127 = getelementptr inbounds i32, i32* %29, i64 11
  %128 = load i32, i32* %17, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* @READ_BYTE_COUNT, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = load i32, i32* @READ_BYTE_COUNT, align 4
  %135 = call i32 @crc16(i32 %126, i32* %133, i32 %134)
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %125, %119
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @CRC16_VALID, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %174

140:                                              ; preds = %136
  store i32 0, i32* %14, align 4
  store i32 4, i32* %16, align 4
  br label %141

141:                                              ; preds = %157, %140
  %142 = load i32, i32* %16, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load i32, i32* %14, align 4
  %146 = shl i32 %145, 8
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @READ_BYTE_COUNT, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %29, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %14, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %144
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %16, align 4
  br label %141

160:                                              ; preds = %141
  %161 = load i8*, i8** %6, align 8
  %162 = load i32, i32* @PAGE_SIZE, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = sub i64 0, %166
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %168, i32 %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %15, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %15, align 4
  br label %187

174:                                              ; preds = %136
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* @PAGE_SIZE, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = sub i64 0, %180
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  %183 = load i32, i32* %15, align 4
  %184 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %182, i32 %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %185 = load i32, i32* %15, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %174, %160
  br label %188

188:                                              ; preds = %187, %99
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %17, align 4
  br label %48

192:                                              ; preds = %48
  br label %206

193:                                              ; preds = %3
  %194 = load i8*, i8** %6, align 8
  %195 = load i32, i32* @PAGE_SIZE, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = sub i64 0, %199
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  %202 = load i32, i32* %15, align 4
  %203 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %201, i32 %202, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %204 = load i32, i32* %15, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %15, align 4
  br label %206

206:                                              ; preds = %193, %192
  %207 = load %struct.w1_master*, %struct.w1_master** %8, align 8
  %208 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %207, i32 0, i32 0
  %209 = call i32 @mutex_unlock(i32* %208)
  %210 = load i32, i32* @PAGE_SIZE, align 4
  %211 = load i32, i32* %15, align 4
  %212 = sub nsw i32 %210, %211
  %213 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %213)
  ret i32 %212
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(%struct.w1_master*, i32*, i32) #1

declare dso_local i64 @w1_read_block(%struct.w1_master*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @crc16(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
