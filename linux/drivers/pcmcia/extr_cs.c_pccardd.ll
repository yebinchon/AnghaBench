; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pccardd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pccardd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)* }
%struct.TYPE_3__ = type { i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*)* }

@current = common dso_local global i32* null, align 8
@dead_socket = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PCMCIA: unable to register socket\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"err %d adding socket attributes\0A\00", align 1
@SS_DETECT = common dso_local global i32 0, align 4
@PCMCIA_UEVENT_EJECT = common dso_local global i32 0, align 4
@PCMCIA_UEVENT_INSERT = common dso_local global i32 0, align 4
@PCMCIA_UEVENT_SUSPEND = common dso_local global i32 0, align 4
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@PCMCIA_UEVENT_RESUME = common dso_local global i32 0, align 4
@PCMCIA_UEVENT_REQUERY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pccardd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccardd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.pcmcia_socket*
  store %struct.pcmcia_socket* %10, %struct.pcmcia_socket** %4, align 8
  %11 = load i32*, i32** @current, align 8
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 8
  store i32* %11, i32** %13, align 8
  %14 = load i32, i32* @dead_socket, align 4
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 10
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %20, align 8
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %23 = call i32 %21(%struct.pcmcia_socket* %22)
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 10
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %27, align 8
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 9
  %32 = call i32 %28(%struct.pcmcia_socket* %29, i32* %31)
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %34 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %33, i32 0, i32 3
  %35 = call i32 @device_register(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %1
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 3
  %41 = call i32 (i32*, i8*, ...) @dev_warn(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %43 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %42, i32 0, i32 8
  store i32* null, i32** %43, align 8
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %45 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %44, i32 0, i32 7
  %46 = call i32 @complete(i32* %45)
  store i32 0, i32* %2, align 4
  br label %251

47:                                               ; preds = %1
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 3
  %50 = call i32 @pccard_sysfs_add_socket(i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %55 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %54, i32 0, i32 3
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_warn(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %60 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %59, i32 0, i32 7
  %61 = call i32 @complete(i32* %60)
  %62 = call i32 @msleep(i32 250)
  %63 = call i32 (...) @set_freezable()
  br label %64

64:                                               ; preds = %221, %216, %58
  %65 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %66 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %65, i32 0, i32 6
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %70 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %7, align 4
  %72 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %73 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %75 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %78 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %80 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %79, i32 0, i32 6
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %84 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %83, i32 0, i32 4
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SS_DETECT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %64
  %91 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %92 = call i32 @socket_detect_change(%struct.pcmcia_socket* %91)
  br label %93

93:                                               ; preds = %90, %64
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %207

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @PCMCIA_UEVENT_EJECT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %103 = call i32 @socket_remove(%struct.pcmcia_socket* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @PCMCIA_UEVENT_INSERT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %111 = call i32 @socket_insert(%struct.pcmcia_socket* %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @PCMCIA_UEVENT_SUSPEND, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %112
  %118 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %119 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SOCKET_CARDBUS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %146, label %124

124:                                              ; preds = %117
  %125 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %126 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %125, i32 0, i32 5
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = icmp ne %struct.TYPE_4__* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %131 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %130, i32 0, i32 5
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %133, align 8
  %135 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %136 = call i32 %134(%struct.pcmcia_socket* %135)
  store i32 %136, i32* %5, align 4
  br label %138

137:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %129
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %143 = call i32 @socket_suspend(%struct.pcmcia_socket* %142)
  %144 = call i32 @msleep(i32 100)
  br label %145

145:                                              ; preds = %141, %138
  br label %146

146:                                              ; preds = %145, %117, %112
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @PCMCIA_UEVENT_RESUME, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %177

151:                                              ; preds = %146
  %152 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %153 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SOCKET_CARDBUS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %151
  %159 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %160 = call i32 @socket_resume(%struct.pcmcia_socket* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %176, label %163

163:                                              ; preds = %158
  %164 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %165 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %164, i32 0, i32 5
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = icmp ne %struct.TYPE_4__* %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %170 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %169, i32 0, i32 5
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %172, align 8
  %174 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %175 = call i32 %173(%struct.pcmcia_socket* %174)
  br label %176

176:                                              ; preds = %168, %163, %158
  br label %177

177:                                              ; preds = %176, %151, %146
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @PCMCIA_UEVENT_REQUERY, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %177
  %183 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %184 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SOCKET_CARDBUS, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %206, label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %205, label %192

192:                                              ; preds = %189
  %193 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %194 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %193, i32 0, i32 5
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = icmp ne %struct.TYPE_4__* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %199 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %198, i32 0, i32 5
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %201, align 8
  %203 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %204 = call i32 %202(%struct.pcmcia_socket* %203)
  br label %205

205:                                              ; preds = %197, %192, %189
  br label %206

206:                                              ; preds = %205, %182, %177
  br label %207

207:                                              ; preds = %206, %93
  %208 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %209 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %208, i32 0, i32 4
  %210 = call i32 @mutex_unlock(i32* %209)
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213, %207
  br label %64

217:                                              ; preds = %213
  %218 = call i64 (...) @kthread_should_stop()
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %228

221:                                              ; preds = %217
  %222 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %223 = call i32 @set_current_state(i32 %222)
  %224 = call i32 (...) @schedule()
  %225 = load i32, i32* @TASK_RUNNING, align 4
  %226 = call i32 @__set_current_state(i32 %225)
  %227 = call i32 (...) @try_to_freeze()
  br label %64

228:                                              ; preds = %220
  %229 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %230 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @SOCKET_PRESENT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %228
  %236 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %237 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %236, i32 0, i32 4
  %238 = call i32 @mutex_lock(i32* %237)
  %239 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %240 = call i32 @socket_remove(%struct.pcmcia_socket* %239)
  %241 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %242 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %241, i32 0, i32 4
  %243 = call i32 @mutex_unlock(i32* %242)
  br label %244

244:                                              ; preds = %235, %228
  %245 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %246 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %245, i32 0, i32 3
  %247 = call i32 @pccard_sysfs_remove_socket(i32* %246)
  %248 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %249 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %248, i32 0, i32 3
  %250 = call i32 @device_unregister(i32* %249)
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %244, %38
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i32 @device_register(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pccard_sysfs_add_socket(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @socket_detect_change(%struct.pcmcia_socket*) #1

declare dso_local i32 @socket_remove(%struct.pcmcia_socket*) #1

declare dso_local i32 @socket_insert(%struct.pcmcia_socket*) #1

declare dso_local i32 @socket_suspend(%struct.pcmcia_socket*) #1

declare dso_local i32 @socket_resume(%struct.pcmcia_socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @pccard_sysfs_remove_socket(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
