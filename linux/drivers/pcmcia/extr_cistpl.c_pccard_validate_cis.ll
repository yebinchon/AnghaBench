; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cistpl.c_pccard_validate_cis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cistpl.c_pccard_validate_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no memory to validate CIS\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RETURN_FIRST_TUPLE = common dso_local global i32 0, align 4
@TUPLE_RETURN_COMMON = common dso_local global i32 0, align 4
@BIND_FN_ALL = common dso_local global i32 0, align 4
@CISTPL_DEVICE = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_ENTRY = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_ENTRY_CB = common dso_local global i32 0, align 4
@CISTPL_MANFID = common dso_local global i32 0, align 4
@CISTPL_VERS_1 = common dso_local global i32 0, align 4
@CISTPL_VERS_2 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MAX_TUPLES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pccard_validate_cis(%struct.pcmcia_socket* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %14 = icmp ne %struct.pcmcia_socket* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %246

18:                                               ; preds = %2
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SOCKET_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %18
  %31 = call i32 @WARN_ON(i32 1)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %246

34:                                               ; preds = %23
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %36 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %39 = call i32 @destroy_cis_cache(%struct.pcmcia_socket* %38)
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %41 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.TYPE_8__* @kmalloc(i32 12, i32 %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = icmp eq %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 2
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %246

53:                                               ; preds = %34
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.TYPE_8__* @kmalloc(i32 12, i32 %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %7, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = icmp eq %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = call i32 @kfree(%struct.TYPE_8__* %59)
  %61 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %62 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %61, i32 0, i32 2
  %63 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %246

66:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %67 = load i32, i32* @RETURN_FIRST_TUPLE, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @TUPLE_RETURN_COMMON, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %74 = load i32, i32* @BIND_FN_ALL, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = call i32 @pccard_get_first_tuple(%struct.pcmcia_socket* %73, i32 %74, %struct.TYPE_8__* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %204

80:                                               ; preds = %66
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CISTPL_DEVICE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %100, label %86

86:                                               ; preds = %80
  %87 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %88 = load i32, i32* @BIND_FN_ALL, align 4
  %89 = load i32, i32* @CISTPL_CFTABLE_ENTRY, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %87, i32 %88, i32 %89, %struct.TYPE_8__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %95 = load i32, i32* @BIND_FN_ALL, align 4
  %96 = load i32, i32* @CISTPL_CFTABLE_ENTRY_CB, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %94, i32 %95, i32 %96, %struct.TYPE_8__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93, %86, %80
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %105 = load i32, i32* @BIND_FN_ALL, align 4
  %106 = load i32, i32* @CISTPL_MANFID, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %104, i32 %105, i32 %106, %struct.TYPE_8__* %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %126, label %110

110:                                              ; preds = %103
  %111 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %112 = load i32, i32* @BIND_FN_ALL, align 4
  %113 = load i32, i32* @CISTPL_VERS_1, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %111, i32 %112, i32 %113, %struct.TYPE_8__* %114)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %110
  %118 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %119 = load i32, i32* @BIND_FN_ALL, align 4
  %120 = load i32, i32* @CISTPL_VERS_2, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %118, i32 %119, i32 %120, %struct.TYPE_8__* %121)
  %123 = load i32, i32* @ENOSPC, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp ne i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %117, %110, %103
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %126, %117
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  br label %204

136:                                              ; preds = %132, %129
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %183, %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @MAX_TUPLES, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %186

141:                                              ; preds = %137
  %142 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %143 = load i32, i32* @BIND_FN_ALL, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = call i32 @pccard_get_next_tuple(%struct.pcmcia_socket* %142, i32 %143, %struct.TYPE_8__* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %186

149:                                              ; preds = %141
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 35
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 64
  br i1 %158, label %179, label %159

159:                                              ; preds = %154, %149
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 71
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %167, 128
  br i1 %168, label %179, label %169

169:                                              ; preds = %164, %159
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 144
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %177, 255
  br i1 %178, label %179, label %182

179:                                              ; preds = %174, %164, %154
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %179, %174, %169
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %8, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %137

186:                                              ; preds = %148, %137
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @MAX_TUPLES, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %202, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %10, align 4
  %192 = icmp sgt i32 %191, 5
  br i1 %192, label %202, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %8, align 4
  %201 = icmp ugt i32 %200, 10
  br i1 %201, label %202, label %203

202:                                              ; preds = %199, %190, %186
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %202, %199, %196
  store i32 0, i32* %9, align 4
  br label %204

204:                                              ; preds = %203, %135, %79
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %234, label %213

213:                                              ; preds = %210, %207, %204
  %214 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %215 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %214, i32 0, i32 1
  %216 = call i32 @mutex_lock(i32* %215)
  %217 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %218 = call i32 @destroy_cis_cache(%struct.pcmcia_socket* %217)
  %219 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %220 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %219, i32 0, i32 1
  %221 = call i32 @mutex_unlock(i32* %220)
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %213
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224, %213
  %228 = load i32, i32* @EIO, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %9, align 4
  br label %233

230:                                              ; preds = %224
  %231 = load i32, i32* @EFAULT, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %230, %227
  br label %234

234:                                              ; preds = %233, %210
  %235 = load i32*, i32** %5, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* %8, align 4
  %239 = load i32*, i32** %5, align 8
  store i32 %238, i32* %239, align 4
  br label %240

240:                                              ; preds = %237, %234
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %242 = call i32 @kfree(%struct.TYPE_8__* %241)
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %244 = call i32 @kfree(%struct.TYPE_8__* %243)
  %245 = load i32, i32* %9, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %240, %58, %47, %30, %15
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @destroy_cis_cache(%struct.pcmcia_socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_8__* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @pccard_get_first_tuple(%struct.pcmcia_socket*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pccard_get_next_tuple(%struct.pcmcia_socket*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
