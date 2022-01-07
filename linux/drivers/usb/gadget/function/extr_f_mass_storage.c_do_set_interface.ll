; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_set_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32, i32, %struct.TYPE_11__**, %struct.fsg_buffhd*, i32, i32, %struct.fsg_dev*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.fsg_buffhd = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.fsg_buffhd*, i32 }
%struct.fsg_dev = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.fsg_common* }

@.str = private unnamed_addr constant [17 x i8] c"reset interface\0A\00", align 1
@IGNORE_BULK_OUT = common dso_local global i32 0, align 4
@bulk_in_complete = common dso_local global i32 0, align 4
@bulk_out_complete = common dso_local global i32 0, align 4
@SS_RESET_OCCURRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*, %struct.fsg_dev*)* @do_set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_interface(%struct.fsg_common* %0, %struct.fsg_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca %struct.fsg_dev*, align 8
  %6 = alloca %struct.fsg_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsg_buffhd*, align 8
  %10 = alloca %struct.fsg_buffhd*, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %4, align 8
  store %struct.fsg_dev* %1, %struct.fsg_dev** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %12 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %17 = call i32 @DBG(%struct.fsg_common* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %2
  br label %19

19:                                               ; preds = %222, %211, %168, %160, %140, %132, %18
  %20 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %21 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %20, i32 0, i32 6
  %22 = load %struct.fsg_dev*, %struct.fsg_dev** %21, align 8
  %23 = icmp ne %struct.fsg_dev* %22, null
  br i1 %23, label %24, label %104

24:                                               ; preds = %19
  %25 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %26 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %25, i32 0, i32 6
  %27 = load %struct.fsg_dev*, %struct.fsg_dev** %26, align 8
  store %struct.fsg_dev* %27, %struct.fsg_dev** %6, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %71, %24
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %31 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %36 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %35, i32 0, i32 3
  %37 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %37, i64 %39
  store %struct.fsg_buffhd* %40, %struct.fsg_buffhd** %9, align 8
  %41 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %42 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %47 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %50 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @usb_ep_free_request(%struct.TYPE_9__* %48, %struct.TYPE_10__* %51)
  %53 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %54 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %53, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %54, align 8
  br label %55

55:                                               ; preds = %45, %34
  %56 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %57 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %62 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %65 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = call i32 @usb_ep_free_request(%struct.TYPE_9__* %63, %struct.TYPE_10__* %66)
  %68 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %9, align 8
  %69 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %68, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %69, align 8
  br label %70

70:                                               ; preds = %60, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %28

74:                                               ; preds = %28
  %75 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %76 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %81 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %80, i32 0, i32 3
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = call i32 @usb_ep_disable(%struct.TYPE_9__* %82)
  %84 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %85 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %88 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %93 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = call i32 @usb_ep_disable(%struct.TYPE_9__* %94)
  %96 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %97 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %100 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %99, i32 0, i32 6
  store %struct.fsg_dev* null, %struct.fsg_dev** %100, align 8
  %101 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %102 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %101, i32 0, i32 7
  %103 = call i32 @wake_up(i32* %102)
  br label %104

104:                                              ; preds = %98, %19
  %105 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %106 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %108 = icmp ne %struct.fsg_dev* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %292

114:                                              ; preds = %109
  %115 = load %struct.fsg_dev*, %struct.fsg_dev** %5, align 8
  %116 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %117 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %116, i32 0, i32 6
  store %struct.fsg_dev* %115, %struct.fsg_dev** %117, align 8
  %118 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %119 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %118, i32 0, i32 6
  %120 = load %struct.fsg_dev*, %struct.fsg_dev** %119, align 8
  store %struct.fsg_dev* %120, %struct.fsg_dev** %6, align 8
  %121 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %122 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %125 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %124, i32 0, i32 5
  %126 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %127 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %126, i32 0, i32 3
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = call i32 @config_ep_by_speed(i32 %123, i32* %125, %struct.TYPE_9__* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %114
  br label %19

133:                                              ; preds = %114
  %134 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %135 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %134, i32 0, i32 3
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = call i32 @usb_ep_enable(%struct.TYPE_9__* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %19

141:                                              ; preds = %133
  %142 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %143 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %144 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %143, i32 0, i32 3
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store %struct.fsg_common* %142, %struct.fsg_common** %146, align 8
  %147 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %148 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %150 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %153 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %152, i32 0, i32 5
  %154 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %155 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %154, i32 0, i32 2
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = call i32 @config_ep_by_speed(i32 %151, i32* %153, %struct.TYPE_9__* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %141
  br label %19

161:                                              ; preds = %141
  %162 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %163 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %162, i32 0, i32 2
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = call i32 @usb_ep_enable(%struct.TYPE_9__* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %19

169:                                              ; preds = %161
  %170 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %171 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %172 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %171, i32 0, i32 2
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store %struct.fsg_common* %170, %struct.fsg_common** %174, align 8
  %175 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %176 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  %177 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %178 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %177, i32 0, i32 2
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @usb_endpoint_maxp(i32 %181)
  %183 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %184 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @IGNORE_BULK_OUT, align 4
  %186 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %187 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %186, i32 0, i32 4
  %188 = call i32 @clear_bit(i32 %185, i32* %187)
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %254, %169
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %192 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %257

195:                                              ; preds = %189
  %196 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %197 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %196, i32 0, i32 3
  %198 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %198, i64 %200
  store %struct.fsg_buffhd* %201, %struct.fsg_buffhd** %10, align 8
  %202 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %203 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %204 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %203, i32 0, i32 3
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %207 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %206, i32 0, i32 1
  %208 = call i32 @alloc_request(%struct.fsg_common* %202, %struct.TYPE_9__* %205, %struct.TYPE_10__** %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %195
  br label %19

212:                                              ; preds = %195
  %213 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %214 = load %struct.fsg_dev*, %struct.fsg_dev** %6, align 8
  %215 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %214, i32 0, i32 2
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %218 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %217, i32 0, i32 0
  %219 = call i32 @alloc_request(%struct.fsg_common* %213, %struct.TYPE_9__* %216, %struct.TYPE_10__** %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %19

223:                                              ; preds = %212
  %224 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %225 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %228 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %227, i32 0, i32 0
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  store i32 %226, i32* %230, align 8
  %231 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %232 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %231, i32 0, i32 1
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  store i32 %226, i32* %234, align 8
  %235 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %236 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %237 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  store %struct.fsg_buffhd* %235, %struct.fsg_buffhd** %239, align 8
  %240 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %241 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %240, i32 0, i32 1
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  store %struct.fsg_buffhd* %235, %struct.fsg_buffhd** %243, align 8
  %244 = load i32, i32* @bulk_in_complete, align 4
  %245 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %246 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %245, i32 0, i32 1
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  store i32 %244, i32* %248, align 8
  %249 = load i32, i32* @bulk_out_complete, align 4
  %250 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %10, align 8
  %251 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %250, i32 0, i32 0
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  store i32 %249, i32* %253, align 8
  br label %254

254:                                              ; preds = %223
  %255 = load i32, i32* %7, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %7, align 4
  br label %189

257:                                              ; preds = %189
  %258 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %259 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %258, i32 0, i32 0
  store i32 1, i32* %259, align 8
  store i32 0, i32* %7, align 4
  br label %260

260:                                              ; preds = %287, %257
  %261 = load i32, i32* %7, align 4
  %262 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %263 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %262, i32 0, i32 2
  %264 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %263, align 8
  %265 = call i32 @ARRAY_SIZE(%struct.TYPE_11__** %264)
  %266 = icmp slt i32 %261, %265
  br i1 %266, label %267, label %290

267:                                              ; preds = %260
  %268 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %269 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %268, i32 0, i32 2
  %270 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %270, i64 %272
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = icmp ne %struct.TYPE_11__* %274, null
  br i1 %275, label %276, label %286

276:                                              ; preds = %267
  %277 = load i32, i32* @SS_RESET_OCCURRED, align 4
  %278 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %279 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %278, i32 0, i32 2
  %280 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %279, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %280, i64 %282
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  store i32 %277, i32* %285, align 4
  br label %286

286:                                              ; preds = %276, %267
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %7, align 4
  br label %260

290:                                              ; preds = %260
  %291 = load i32, i32* %8, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %290, %112
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i32 @DBG(%struct.fsg_common*, i8*) #1

declare dso_local i32 @usb_ep_free_request(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_9__*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @config_ep_by_speed(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @usb_endpoint_maxp(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @alloc_request(%struct.fsg_common*, %struct.TYPE_9__*, %struct.TYPE_10__**) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
