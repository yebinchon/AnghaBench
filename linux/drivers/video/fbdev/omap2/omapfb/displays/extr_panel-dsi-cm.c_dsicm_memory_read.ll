; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_memory_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_memory_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_10__, i32*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32, i8*, i64)*, i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.panel_drv_data = type { i32, i32, %struct.TYPE_8__*, i32, %struct.omap_dss_device* }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"short read\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"signal pending, aborting memory read\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i8*, i64, i32, i32, i32, i32)* @dsicm_memory_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_memory_read(%struct.omap_dss_device* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_dss_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.panel_drv_data*, align 8
  %17 = alloca %struct.omap_dss_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %24 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %23)
  store %struct.panel_drv_data* %24, %struct.panel_drv_data** %16, align 8
  %25 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %26 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %25, i32 0, i32 4
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %26, align 8
  store %struct.omap_dss_device* %27, %struct.omap_dss_device** %17, align 8
  store i32 1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = mul nsw i32 %29, %30
  %32 = mul nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %200

38:                                               ; preds = %7
  %39 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %40 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %43 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %18, align 4
  br label %195

49:                                               ; preds = %38
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = mul nsw i32 %50, %51
  %53 = mul nsw i32 %52, 3
  %54 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %55 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %60 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = mul nsw i32 %64, 3
  %66 = call i64 @min(i32 %53, i32 %65)
  store i64 %66, i64* %11, align 8
  %67 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %68 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %71, align 8
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %74 = call i32 %72(%struct.omap_dss_device* %73)
  %75 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %76 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %49
  br label %186

80:                                               ; preds = %49
  %81 = load i64, i64* %11, align 8
  %82 = urem i64 %81, 2
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %20, align 4
  br label %86

85:                                               ; preds = %80
  store i32 2, i32* %20, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @dsicm_set_update_window(%struct.panel_drv_data* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %94 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %97, align 8
  %99 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %100 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %101 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %20, align 4
  %104 = call i32 %98(%struct.omap_dss_device* %99, i32 %102, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %86
  br label %186

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %171, %108
  %110 = load i32, i32* %21, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %11, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %172

114:                                              ; preds = %109
  %115 = load i32, i32* %19, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 46, i32 62
  store i32 %118, i32* %22, align 4
  store i32 0, i32* %19, align 4
  %119 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %120 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32 (%struct.omap_dss_device*, i32, i32, i8*, i64)*, i32 (%struct.omap_dss_device*, i32, i32, i8*, i64)** %123, align 8
  %125 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %126 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %127 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* %21, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr i8, i8* %130, i64 %132
  %134 = load i64, i64* %11, align 8
  %135 = load i32, i32* %21, align 4
  %136 = zext i32 %135 to i64
  %137 = sub i64 %134, %136
  %138 = call i32 %124(%struct.omap_dss_device* %125, i32 %128, i32 %129, i8* %133, i64 %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %114
  %142 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %143 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @dev_err(i32* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %174

146:                                              ; preds = %114
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %21, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %155 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %154, i32 0, i32 2
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %172

159:                                              ; preds = %146
  %160 = load i32, i32* @current, align 4
  %161 = call i64 @signal_pending(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %165 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %164, i32 0, i32 2
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = call i32 @dev_err(i32* %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %169 = load i32, i32* @ERESTARTSYS, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %18, align 4
  br label %174

171:                                              ; preds = %159
  br label %109

172:                                              ; preds = %153, %109
  %173 = load i32, i32* %21, align 4
  store i32 %173, i32* %18, align 4
  br label %174

174:                                              ; preds = %172, %163, %141
  %175 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %176 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %179, align 8
  %181 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %182 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %183 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 %180(%struct.omap_dss_device* %181, i32 %184, i32 1)
  br label %186

186:                                              ; preds = %174, %107, %79
  %187 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %188 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %191, align 8
  %193 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %194 = call i32 %192(%struct.omap_dss_device* %193)
  br label %195

195:                                              ; preds = %186, %46
  %196 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %197 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %196, i32 0, i32 0
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load i32, i32* %18, align 4
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %195, %35
  %201 = load i32, i32* %8, align 4
  ret i32 %201
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_set_update_window(%struct.panel_drv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
