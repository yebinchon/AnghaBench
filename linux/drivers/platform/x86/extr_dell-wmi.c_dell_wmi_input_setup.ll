; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_input_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi.c_dell_wmi_input_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i32, i32 }
%struct.wmi_device = type { i32 }
%struct.dell_wmi_priv = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.dell_dmi_results = type { i32, i32, %struct.key_entry* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Dell WMI hotkeys\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@handle_dmi_entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"no DMI; using the old-style hotkey interface\0A\00", align 1
@dell_wmi_keymap_type_0000 = common dso_local global %struct.key_entry* null, align 8
@dell_wmi_keymap_type_0010 = common dso_local global %struct.key_entry* null, align 8
@dell_wmi_keymap_type_0011 = common dso_local global %struct.key_entry* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@KE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi_device*)* @dell_wmi_input_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_wmi_input_setup(%struct.wmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wmi_device*, align 8
  %4 = alloca %struct.dell_wmi_priv*, align 8
  %5 = alloca %struct.dell_dmi_results, align 8
  %6 = alloca %struct.key_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.key_entry*, align 8
  store %struct.wmi_device* %0, %struct.wmi_device** %3, align 8
  %11 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %12 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %11, i32 0, i32 0
  %13 = call %struct.dell_wmi_priv* @dev_get_drvdata(i32* %12)
  store %struct.dell_wmi_priv* %13, %struct.dell_wmi_priv** %4, align 8
  %14 = bitcast %struct.dell_dmi_results* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %15 = call %struct.TYPE_9__* (...) @input_allocate_device()
  %16 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %4, align 8
  %17 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %16, i32 0, i32 0
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %17, align 8
  %18 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %4, align 8
  %19 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %239

25:                                               ; preds = %1
  %26 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %4, align 8
  %27 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @BUS_HOST, align 4
  %31 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %4, align 8
  %32 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 8
  %36 = load %struct.wmi_device*, %struct.wmi_device** %3, align 8
  %37 = getelementptr inbounds %struct.wmi_device, %struct.wmi_device* %36, i32 0, i32 0
  %38 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %4, align 8
  %39 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32* %37, i32** %42, align 8
  %43 = load i32, i32* @handle_dmi_entry, align 4
  %44 = call i64 @dmi_walk(i32 %43, %struct.dell_dmi_results* %5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %25
  %49 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  br label %233

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0000, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.key_entry* %58)
  %60 = add nsw i32 %57, %59
  %61 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0010, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.key_entry* %61)
  %63 = add nsw i32 %60, %62
  %64 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0011, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.key_entry* %64)
  %66 = add nsw i32 %63, %65
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.key_entry* @kcalloc(i32 %67, i32 8, i32 %68)
  store %struct.key_entry* %69, %struct.key_entry** %6, align 8
  %70 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %71 = icmp ne %struct.key_entry* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 2
  %74 = load %struct.key_entry*, %struct.key_entry** %73, align 8
  %75 = call i32 @kfree(%struct.key_entry* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %233

78:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %105, %78
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %79
  %85 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %85, i64 %87
  %89 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 2
  %90 = load %struct.key_entry*, %struct.key_entry** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %90, i64 %92
  %94 = bitcast %struct.key_entry* %88 to i8*
  %95 = bitcast %struct.key_entry* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 8, i1 false)
  %96 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %96, i64 %98
  %100 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, 1048576
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %84
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %79

108:                                              ; preds = %79
  %109 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 2
  %110 = load %struct.key_entry*, %struct.key_entry** %109, align 8
  %111 = call i32 @kfree(%struct.key_entry* %110)
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %153, %108
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0010, align 8
  %115 = call i32 @ARRAY_SIZE(%struct.key_entry* %114)
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %156

117:                                              ; preds = %112
  %118 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0010, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %118, i64 %120
  store %struct.key_entry* %121, %struct.key_entry** %10, align 8
  %122 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %127 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, 1048576
  %130 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %131 = getelementptr inbounds %struct.dell_dmi_results, %struct.dell_dmi_results* %5, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @have_scancode(i32 %129, %struct.key_entry* %130, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %153

136:                                              ; preds = %125, %117
  %137 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %137, i64 %139
  %141 = load %struct.key_entry*, %struct.key_entry** %10, align 8
  %142 = bitcast %struct.key_entry* %140 to i8*
  %143 = bitcast %struct.key_entry* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 8, i1 false)
  %144 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %144, i64 %146
  %148 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, 1048576
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %136, %135
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %112

156:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %182, %156
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0011, align 8
  %160 = call i32 @ARRAY_SIZE(%struct.key_entry* %159)
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %157
  %163 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %163, i64 %165
  %167 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0011, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %167, i64 %169
  %171 = bitcast %struct.key_entry* %166 to i8*
  %172 = bitcast %struct.key_entry* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 4 %172, i64 8, i1 false)
  %173 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %173, i64 %175
  %177 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, 1114112
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %162
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %157

185:                                              ; preds = %157
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %204, %185
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0000, align 8
  %189 = call i32 @ARRAY_SIZE(%struct.key_entry* %188)
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %207

191:                                              ; preds = %186
  %192 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %192, i64 %194
  %196 = load %struct.key_entry*, %struct.key_entry** @dell_wmi_keymap_type_0000, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %196, i64 %198
  %200 = bitcast %struct.key_entry* %195 to i8*
  %201 = bitcast %struct.key_entry* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 4 %201, i64 8, i1 false)
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %186

207:                                              ; preds = %186
  %208 = load i32, i32* @KE_END, align 4
  %209 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %209, i64 %211
  %213 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %212, i32 0, i32 1
  store i32 %208, i32* %213, align 4
  %214 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %4, align 8
  %215 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %214, i32 0, i32 0
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %218 = call i32 @sparse_keymap_setup(%struct.TYPE_9__* %216, %struct.key_entry* %217, i32* null)
  store i32 %218, i32* %7, align 4
  %219 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %220 = call i32 @kfree(%struct.key_entry* %219)
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %207
  br label %233

224:                                              ; preds = %207
  %225 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %4, align 8
  %226 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %225, i32 0, i32 0
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = call i32 @input_register_device(%struct.TYPE_9__* %227)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %233

232:                                              ; preds = %224
  store i32 0, i32* %2, align 4
  br label %239

233:                                              ; preds = %231, %223, %72, %52
  %234 = load %struct.dell_wmi_priv*, %struct.dell_wmi_priv** %4, align 8
  %235 = getelementptr inbounds %struct.dell_wmi_priv, %struct.dell_wmi_priv* %234, i32 0, i32 0
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = call i32 @input_free_device(%struct.TYPE_9__* %236)
  %238 = load i32, i32* %7, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %233, %232, %22
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local %struct.dell_wmi_priv* @dev_get_drvdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_9__* @input_allocate_device(...) #1

declare dso_local i64 @dmi_walk(i32, %struct.dell_dmi_results*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.key_entry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.key_entry*) #1

declare dso_local i32 @kfree(%struct.key_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @have_scancode(i32, %struct.key_entry*, i32) #1

declare dso_local i32 @sparse_keymap_setup(%struct.TYPE_9__*, %struct.key_entry*, i32*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
