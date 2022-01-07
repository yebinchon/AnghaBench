; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_of_display_timing.c_of_parse_display_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_of_display_timing.c_of_parse_display_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.display_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"hback-porch\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hfront-porch\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hactive\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hsync-len\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"vback-porch\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vfront-porch\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"vactive\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"vsync-len\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"vsync-active\00", align 1
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_LOW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"hsync-active\00", align 1
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_LOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"de-active\00", align 1
@DISPLAY_FLAGS_DE_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_LOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"pixelclk-active\00", align 1
@DISPLAY_FLAGS_PIXDATA_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_NEGEDGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"syncclk-active\00", align 1
@DISPLAY_FLAGS_SYNC_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_SYNC_NEGEDGE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"doublescan\00", align 1
@DISPLAY_FLAGS_DOUBLESCAN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"doubleclk\00", align 1
@DISPLAY_FLAGS_DOUBLECLK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"%pOF: error reading timing properties\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.display_timing*)* @of_parse_display_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_parse_display_timing(%struct.device_node* %0, %struct.display_timing* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.display_timing*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.display_timing* %1, %struct.display_timing** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %9 = call i32 @memset(%struct.display_timing* %8, i32 0, i32 40)
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %12 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %11, i32 0, i32 9
  %13 = call i32 @parse_timing_property(%struct.device_node* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %18 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %17, i32 0, i32 8
  %19 = call i32 @parse_timing_property(%struct.device_node* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %24 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %23, i32 0, i32 7
  %25 = call i32 @parse_timing_property(%struct.device_node* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %30 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %29, i32 0, i32 6
  %31 = call i32 @parse_timing_property(%struct.device_node* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %36 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %35, i32 0, i32 5
  %37 = call i32 @parse_timing_property(%struct.device_node* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %42 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %41, i32 0, i32 4
  %43 = call i32 @parse_timing_property(%struct.device_node* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  %47 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %48 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %47, i32 0, i32 3
  %49 = call i32 @parse_timing_property(%struct.device_node* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %54 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %53, i32 0, i32 2
  %55 = call i32 @parse_timing_property(%struct.device_node* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %54)
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %60 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %59, i32 0, i32 1
  %61 = call i32 @parse_timing_property(%struct.device_node* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %60)
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %65 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.device_node*, %struct.device_node** %4, align 8
  %67 = call i32 @of_property_read_u32(%struct.device_node* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64* %6)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %2
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @DISPLAY_FLAGS_VSYNC_LOW, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %79 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %2
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i32 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64* %6)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @DISPLAY_FLAGS_HSYNC_LOW, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %96 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %82
  %100 = load %struct.device_node*, %struct.device_node** %4, align 8
  %101 = call i32 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64* %6)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @DISPLAY_FLAGS_DE_HIGH, align 4
  br label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @DISPLAY_FLAGS_DE_LOW, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %113 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %99
  %117 = load %struct.device_node*, %struct.device_node** %4, align 8
  %118 = call i32 @of_property_read_u32(%struct.device_node* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i64* %6)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %116
  %121 = load i64, i64* %6, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  br label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_NEGEDGE, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %130 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %116
  %134 = load %struct.device_node*, %struct.device_node** %4, align 8
  %135 = call i32 @of_property_read_u32(%struct.device_node* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i64* %6)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %6, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @DISPLAY_FLAGS_SYNC_POSEDGE, align 4
  br label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @DISPLAY_FLAGS_SYNC_NEGEDGE, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %147 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %177

150:                                              ; preds = %133
  %151 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %152 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  %155 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_NEGEDGE, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %153, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %150
  %160 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %161 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @DISPLAY_FLAGS_SYNC_POSEDGE, align 4
  br label %170

168:                                              ; preds = %159
  %169 = load i32, i32* @DISPLAY_FLAGS_SYNC_NEGEDGE, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %173 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %150
  br label %177

177:                                              ; preds = %176, %144
  %178 = load %struct.device_node*, %struct.device_node** %4, align 8
  %179 = call i64 @of_property_read_bool(%struct.device_node* %178, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %183 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %184 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %177
  %188 = load %struct.device_node*, %struct.device_node** %4, align 8
  %189 = call i64 @of_property_read_bool(%struct.device_node* %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load i32, i32* @DISPLAY_FLAGS_DOUBLESCAN, align 4
  %193 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %194 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %191, %187
  %198 = load %struct.device_node*, %struct.device_node** %4, align 8
  %199 = call i64 @of_property_read_bool(%struct.device_node* %198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i32, i32* @DISPLAY_FLAGS_DOUBLECLK, align 4
  %203 = load %struct.display_timing*, %struct.display_timing** %5, align 8
  %204 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %201, %197
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load %struct.device_node*, %struct.device_node** %4, align 8
  %212 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), %struct.device_node* %211)
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %216

215:                                              ; preds = %207
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %210
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @memset(%struct.display_timing*, i32, i32) #1

declare dso_local i32 @parse_timing_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
