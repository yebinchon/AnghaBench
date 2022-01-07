; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_iodyn.c_iodyn_find_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_iodyn.c_iodyn_find_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.resource* }
%struct.resource = type { i32, i32, i32 }

@MAX_IO_WIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IORESOURCE_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32, i32*, i32, i32, %struct.resource**)* @iodyn_find_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iodyn_find_io(%struct.pcmcia_socket* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.resource** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmcia_socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.resource*, align 8
  %17 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.resource** %5, %struct.resource*** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %59, %6
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @MAX_IO_WIN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.resource*, %struct.resource** %29, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %59

33:                                               ; preds = %22
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %59

38:                                               ; preds = %33
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.resource*, %struct.resource** %45, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sub i32 %49, 1
  %51 = and i32 %48, %50
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %255

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %37, %32
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %18

62:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %249, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @MAX_IO_WIN, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %252

67:                                               ; preds = %63
  %68 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %69 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.resource*, %struct.resource** %74, align 8
  store %struct.resource* %75, %struct.resource** %16, align 8
  %76 = load %struct.resource*, %struct.resource** %16, align 8
  %77 = icmp ne %struct.resource* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %67
  %79 = load %struct.resource*, %struct.resource** %16, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IORESOURCE_BITS, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @IORESOURCE_BITS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %249

89:                                               ; preds = %78, %67
  %90 = load %struct.resource*, %struct.resource** %16, align 8
  %91 = icmp ne %struct.resource* %90, null
  br i1 %91, label %149, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 65536, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call %struct.resource* @__iodyn_find_io_region(%struct.pcmcia_socket* %97, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %104 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store %struct.resource* %102, %struct.resource** %109, align 8
  store %struct.resource* %102, %struct.resource** %16, align 8
  %110 = load %struct.resource*, %struct.resource** %16, align 8
  %111 = icmp ne %struct.resource* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %96
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %255

115:                                              ; preds = %96
  %116 = load %struct.resource*, %struct.resource** %16, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %120 = load %struct.resource*, %struct.resource** %16, align 8
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IORESOURCE_BITS, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @IORESOURCE_BITS, align 4
  %128 = and i32 %126, %127
  %129 = or i32 %125, %128
  %130 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %131 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load %struct.resource*, %struct.resource** %136, align 8
  %138 = getelementptr inbounds %struct.resource, %struct.resource* %137, i32 0, i32 1
  store i32 %129, i32* %138, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %141 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %139, i32* %146, align 8
  %147 = load %struct.resource*, %struct.resource** %16, align 8
  %148 = load %struct.resource**, %struct.resource*** %13, align 8
  store %struct.resource* %147, %struct.resource** %148, align 8
  store i32 0, i32* %7, align 4
  br label %255

149:                                              ; preds = %89
  %150 = load %struct.resource*, %struct.resource** %16, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %149
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %197

162:                                              ; preds = %157, %149
  %163 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %164 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load %struct.resource*, %struct.resource** %169, align 8
  %171 = load %struct.resource*, %struct.resource** %16, align 8
  %172 = getelementptr inbounds %struct.resource, %struct.resource* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.resource*, %struct.resource** %16, align 8
  %175 = call i64 @resource_size(%struct.resource* %174)
  %176 = load i32, i32* %11, align 4
  %177 = zext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = call i64 @adjust_resource(%struct.resource* %170, i32 %173, i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %162
  br label %249

182:                                              ; preds = %162
  %183 = load i32, i32* %17, align 4
  %184 = load i32*, i32** %10, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %187 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add i32 %193, %185
  store i32 %194, i32* %192, align 8
  %195 = load %struct.resource*, %struct.resource** %16, align 8
  %196 = load %struct.resource**, %struct.resource*** %13, align 8
  store %struct.resource* %195, %struct.resource** %196, align 8
  store i32 0, i32* %7, align 4
  br label %255

197:                                              ; preds = %157
  %198 = load %struct.resource*, %struct.resource** %16, align 8
  %199 = getelementptr inbounds %struct.resource, %struct.resource* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %11, align 4
  %202 = sub i32 %200, %201
  store i32 %202, i32* %17, align 4
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %197
  %207 = load i32*, i32** %10, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %17, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %248

211:                                              ; preds = %206, %197
  %212 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %213 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %212, i32 0, i32 0
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load %struct.resource*, %struct.resource** %218, align 8
  %220 = load %struct.resource*, %struct.resource** %16, align 8
  %221 = getelementptr inbounds %struct.resource, %struct.resource* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %11, align 4
  %224 = sub i32 %222, %223
  %225 = load %struct.resource*, %struct.resource** %16, align 8
  %226 = call i64 @resource_size(%struct.resource* %225)
  %227 = load i32, i32* %11, align 4
  %228 = zext i32 %227 to i64
  %229 = add nsw i64 %226, %228
  %230 = call i64 @adjust_resource(%struct.resource* %219, i32 %224, i64 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %211
  br label %249

233:                                              ; preds = %211
  %234 = load i32, i32* %17, align 4
  %235 = load i32*, i32** %10, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %238 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %237, i32 0, i32 0
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add i32 %244, %236
  store i32 %245, i32* %243, align 8
  %246 = load %struct.resource*, %struct.resource** %16, align 8
  %247 = load %struct.resource**, %struct.resource*** %13, align 8
  store %struct.resource* %246, %struct.resource** %247, align 8
  store i32 0, i32* %7, align 4
  br label %255

248:                                              ; preds = %206
  br label %249

249:                                              ; preds = %248, %232, %181, %88
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %14, align 4
  br label %63

252:                                              ; preds = %63
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %252, %233, %182, %115, %112, %55
  %256 = load i32, i32* %7, align 4
  ret i32 %256
}

declare dso_local %struct.resource* @__iodyn_find_io_region(%struct.pcmcia_socket*, i32, i32, i32) #1

declare dso_local i64 @adjust_resource(%struct.resource*, i32, i64) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
