; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32*, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__* }
%struct.tb_drom_header = type { i32, i64, i64, i32, i32, i32, i64 }

@TB_DROM_DATA_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"reading drom (length: %#x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"drom too small, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"drom size mismatch, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"drom uid crc8 mismatch (expected: %#x, got: %#x), aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"drom data crc32 mismatch (expected: %#x, got: %#x), continuing\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"drom device_rom_revision %#x unknown\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_drom_read(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.tb_drom_header*, align 8
  %8 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %9 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

14:                                               ; preds = %1
  %15 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %16 = call i64 @tb_route(%struct.tb_switch* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %89

18:                                               ; preds = %14
  %19 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %20 = call i64 @tb_drom_copy_efi(%struct.tb_switch* %19, i32* %5)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %147

23:                                               ; preds = %18
  %24 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %25 = call i64 @tb_drom_copy_nvm(%struct.tb_switch* %24, i32* %5)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %147

28:                                               ; preds = %23
  %29 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %30 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %31 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %30, i32 0, i32 3
  %32 = call i32 @tb_drom_read_uid_only(%struct.tb_switch* %29, i64* %31)
  %33 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %34 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %39 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %44 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 2
  %47 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %48 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %51, align 8
  %52 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %53 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 1
  %56 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %57 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store %struct.TYPE_2__* %55, %struct.TYPE_2__** %60, align 8
  %61 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %62 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %67 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %72 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 4
  %75 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %76 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %79, align 8
  %80 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %81 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 3
  %84 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %85 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store %struct.TYPE_2__* %83, %struct.TYPE_2__** %88, align 8
  store i32 0, i32* %2, align 4
  br label %247

89:                                               ; preds = %14
  %90 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %91 = call i32 @tb_eeprom_get_drom_offset(%struct.tb_switch* %90, i32* %4)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %247

96:                                               ; preds = %89
  %97 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 14
  %100 = call i32 @tb_eeprom_read_n(%struct.tb_switch* %97, i32 %99, i32* %5, i32 2)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %247

105:                                              ; preds = %96
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, 1023
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @TB_DROM_DATA_START, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @tb_sw_dbg(%struct.tb_switch* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %115, 48
  br i1 %116, label %117, label %122

117:                                              ; preds = %105
  %118 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %119 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_warn(%struct.tb_switch* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %247

122:                                              ; preds = %105
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i32* @kzalloc(i32 %123, i32 %124)
  %126 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %127 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  %128 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %129 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %122
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %247

135:                                              ; preds = %122
  %136 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %139 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @tb_eeprom_read_n(%struct.tb_switch* %136, i32 %137, i32* %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %238

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %27, %22
  %148 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %149 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = bitcast i32* %150 to i8*
  %152 = bitcast i8* %151 to %struct.tb_drom_header*
  store %struct.tb_drom_header* %152, %struct.tb_drom_header** %7, align 8
  %153 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %154 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @TB_DROM_DATA_START, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %147
  %161 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %162 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_warn(%struct.tb_switch* %161, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %238

163:                                              ; preds = %147
  %164 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %165 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %164, i32 0, i32 6
  %166 = bitcast i64* %165 to i32*
  %167 = call i64 @tb_crc8(i32* %166, i32 8)
  store i64 %167, i64* %6, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %170 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %168, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %163
  %174 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %175 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %176 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %6, align 8
  %179 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_warn(%struct.tb_switch* %174, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %177, i64 %178)
  br label %238

180:                                              ; preds = %163
  %181 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %182 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %180
  %186 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %187 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %190 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %189, i32 0, i32 3
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %193 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %196 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %198 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %201 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %203 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* @TB_DROM_DATA_START, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %209 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @tb_crc32(i32* %207, i32 %210)
  store i64 %211, i64* %6, align 8
  %212 = load i64, i64* %6, align 8
  %213 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %214 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %212, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %191
  %218 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %219 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %220 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %6, align 8
  %223 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_warn(%struct.tb_switch* %218, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 %221, i64 %222)
  br label %224

224:                                              ; preds = %217, %191
  %225 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %226 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = icmp sgt i32 %227, 2
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %231 = load %struct.tb_drom_header*, %struct.tb_drom_header** %7, align 8
  %232 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i32 (%struct.tb_switch*, i8*, ...) @tb_sw_warn(%struct.tb_switch* %230, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %229, %224
  %236 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %237 = call i32 @tb_drom_parse_entries(%struct.tb_switch* %236)
  store i32 %237, i32* %2, align 4
  br label %247

238:                                              ; preds = %173, %160, %145
  %239 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %240 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @kfree(i32* %241)
  %243 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %244 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %243, i32 0, i32 0
  store i32* null, i32** %244, align 8
  %245 = load i32, i32* @EIO, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %238, %235, %132, %117, %103, %94, %28, %13
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i64 @tb_route(%struct.tb_switch*) #1

declare dso_local i64 @tb_drom_copy_efi(%struct.tb_switch*, i32*) #1

declare dso_local i64 @tb_drom_copy_nvm(%struct.tb_switch*, i32*) #1

declare dso_local i32 @tb_drom_read_uid_only(%struct.tb_switch*, i64*) #1

declare dso_local i32 @tb_eeprom_get_drom_offset(%struct.tb_switch*, i32*) #1

declare dso_local i32 @tb_eeprom_read_n(%struct.tb_switch*, i32, i32*, i32) #1

declare dso_local i32 @tb_sw_dbg(%struct.tb_switch*, i8*, i32) #1

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @tb_crc8(i32*, i32) #1

declare dso_local i64 @tb_crc32(i32*, i32) #1

declare dso_local i32 @tb_drom_parse_entries(%struct.tb_switch*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
