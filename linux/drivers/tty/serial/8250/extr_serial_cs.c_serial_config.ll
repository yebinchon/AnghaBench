; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_serial_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_serial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 (%struct.pcmcia_device*)*, i32, i32 }
%struct.pcmcia_device = type { i64, i32, %struct.TYPE_5__*, i32, i32, i64, %struct.serial_info* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.serial_info = type { i32, i64, %struct.TYPE_6__*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"serial_config\0A\00", align 1
@quirks = common dso_local global %struct.TYPE_6__* null, align 8
@CISTPL_FUNCID_MULTI = common dso_local global i64 0, align 8
@CISTPL_FUNCID_SERIAL = common dso_local global i64 0, align 8
@serial_check_for_multi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"trying to set up [0x%04x:0x%04x] (pfc: %d, multi: %d, quirk: %p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to initialize\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @serial_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.serial_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 6
  %8 = load %struct.serial_info*, %struct.serial_info** %7, align 8
  store %struct.serial_info* %8, %struct.serial_info** %4, align 8
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 1
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %20 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %25 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %30 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %82, %1
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @quirks, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %31
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @quirks, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @quirks, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %52 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %44, %36
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @quirks, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %74, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @quirks, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %71 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %63, %55
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @quirks, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %80 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %79, i32 0, i32 2
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %80, align 8
  br label %85

81:                                               ; preds = %63, %44
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %31

85:                                               ; preds = %74, %31
  %86 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %87 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %85
  %91 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %92 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %90
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %95
  %103 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %104 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CISTPL_FUNCID_MULTI, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %110 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CISTPL_FUNCID_SERIAL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108, %102
  %115 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %116 = load i32, i32* @serial_check_for_multi, align 4
  %117 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %118 = call i64 @pcmcia_loop_config(%struct.pcmcia_device* %115, i32 %116, %struct.serial_info* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %217

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %108, %95, %90, %85
  %123 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %124 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = icmp ne %struct.TYPE_6__* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %129 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, -1
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %136 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %141 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %134, %127, %122
  %143 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %144 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %143, i32 0, i32 1
  %145 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %146 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %149 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %152 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %151, i32 0, i32 2
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %157 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %160 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %159, i32 0, i32 2
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = call i32 @dev_info(i32* %144, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %150, i64 %155, i32 %158, %struct.TYPE_6__* %161)
  %163 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %164 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %163, i32 0, i32 2
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %142
  %170 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %171 = call i32 @pfc_config(%struct.pcmcia_device* %170)
  store i32 %171, i32* %5, align 4
  br label %184

172:                                              ; preds = %142
  %173 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %174 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %179 = call i32 @multi_config(%struct.pcmcia_device* %178)
  store i32 %179, i32* %5, align 4
  br label %183

180:                                              ; preds = %172
  %181 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %182 = call i32 @simple_config(%struct.pcmcia_device* %181)
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %180, %177
  br label %184

184:                                              ; preds = %183, %169
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %184
  %188 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %189 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187, %184
  br label %217

193:                                              ; preds = %187
  %194 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %195 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %194, i32 0, i32 2
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = icmp ne %struct.TYPE_6__* %196, null
  br i1 %197, label %198, label %216

198:                                              ; preds = %193
  %199 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %200 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %199, i32 0, i32 2
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i64 (%struct.pcmcia_device*)*, i64 (%struct.pcmcia_device*)** %202, align 8
  %204 = icmp ne i64 (%struct.pcmcia_device*)* %203, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %198
  %206 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %207 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %206, i32 0, i32 2
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load i64 (%struct.pcmcia_device*)*, i64 (%struct.pcmcia_device*)** %209, align 8
  %211 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %212 = call i64 %210(%struct.pcmcia_device* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %205
  br label %217

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215, %198, %193
  store i32 0, i32* %2, align 4
  br label %225

217:                                              ; preds = %214, %192, %120
  %218 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %219 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %218, i32 0, i32 1
  %220 = call i32 @dev_warn(i32* %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %221 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %222 = call i32 @serial_remove(%struct.pcmcia_device* %221)
  %223 = load i32, i32* @ENODEV, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %217, %216
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i64 @pcmcia_loop_config(%struct.pcmcia_device*, i32, %struct.serial_info*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i64, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @pfc_config(%struct.pcmcia_device*) #1

declare dso_local i32 @multi_config(%struct.pcmcia_device*) #1

declare dso_local i32 @simple_config(%struct.pcmcia_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @serial_remove(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
