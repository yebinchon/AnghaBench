; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_dev_add_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_dev_add_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_device = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.uio_mem*, %struct.uio_port* }
%struct.uio_mem = type { i64, %struct.uio_map* }
%struct.uio_map = type { i32, %struct.uio_mem* }
%struct.uio_port = type { i64, %struct.uio_portio* }
%struct.uio_portio = type { i32, %struct.uio_port* }

@MAX_UIO_MAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@map_attr_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"map%d\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@MAX_UIO_PORT_REGIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"portio\00", align 1
@portio_attr_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"error creating sysfs files (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_device*)* @uio_dev_add_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_dev_add_attributes(%struct.uio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uio_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uio_mem*, align 8
  %10 = alloca %struct.uio_map*, align 8
  %11 = alloca %struct.uio_port*, align 8
  %12 = alloca %struct.uio_portio*, align 8
  store %struct.uio_device* %0, %struct.uio_device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %88, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_UIO_MAPS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %91

17:                                               ; preds = %13
  %18 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %19 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.uio_mem*, %struct.uio_mem** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %22, i64 %24
  store %struct.uio_mem* %25, %struct.uio_mem** %9, align 8
  %26 = load %struct.uio_mem*, %struct.uio_mem** %9, align 8
  %27 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %91

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  %35 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %36 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %41 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %43 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %201

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kzalloc(i32 16, i32 %51)
  %53 = bitcast i8* %52 to %struct.uio_map*
  store %struct.uio_map* %53, %struct.uio_map** %10, align 8
  %54 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %55 = icmp ne %struct.uio_map* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %201

59:                                               ; preds = %50
  %60 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %61 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %60, i32 0, i32 0
  %62 = call i32 @kobject_init(i32* %61, i32* @map_attr_type)
  %63 = load %struct.uio_mem*, %struct.uio_mem** %9, align 8
  %64 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %65 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %64, i32 0, i32 1
  store %struct.uio_mem* %63, %struct.uio_mem** %65, align 8
  %66 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %67 = load %struct.uio_mem*, %struct.uio_mem** %9, align 8
  %68 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %67, i32 0, i32 1
  store %struct.uio_map* %66, %struct.uio_map** %68, align 8
  %69 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %70 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %69, i32 0, i32 0
  %71 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %72 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @kobject_add(i32* %70, i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %59
  br label %204

79:                                               ; preds = %59
  %80 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %81 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %80, i32 0, i32 0
  %82 = load i32, i32* @KOBJ_ADD, align 4
  %83 = call i32 @kobject_uevent(i32* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %204

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %13

91:                                               ; preds = %30, %13
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %167, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @MAX_UIO_PORT_REGIONS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %170

96:                                               ; preds = %92
  %97 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %98 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load %struct.uio_port*, %struct.uio_port** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %101, i64 %103
  store %struct.uio_port* %104, %struct.uio_port** %11, align 8
  %105 = load %struct.uio_port*, %struct.uio_port** %11, align 8
  %106 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %170

110:                                              ; preds = %96
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %110
  store i32 1, i32* %8, align 4
  %114 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %115 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %120 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  %121 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %122 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %113
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %171

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128, %110
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @kzalloc(i32 16, i32 %130)
  %132 = bitcast i8* %131 to %struct.uio_portio*
  store %struct.uio_portio* %132, %struct.uio_portio** %12, align 8
  %133 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %134 = icmp ne %struct.uio_portio* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %171

138:                                              ; preds = %129
  %139 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %140 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %139, i32 0, i32 0
  %141 = call i32 @kobject_init(i32* %140, i32* @portio_attr_type)
  %142 = load %struct.uio_port*, %struct.uio_port** %11, align 8
  %143 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %144 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %143, i32 0, i32 1
  store %struct.uio_port* %142, %struct.uio_port** %144, align 8
  %145 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %146 = load %struct.uio_port*, %struct.uio_port** %11, align 8
  %147 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %146, i32 0, i32 1
  store %struct.uio_portio* %145, %struct.uio_portio** %147, align 8
  %148 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %149 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %148, i32 0, i32 0
  %150 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %151 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @kobject_add(i32* %149, i32* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %138
  br label %174

158:                                              ; preds = %138
  %159 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %160 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %159, i32 0, i32 0
  %161 = load i32, i32* @KOBJ_ADD, align 4
  %162 = call i32 @kobject_uevent(i32* %160, i32 %161)
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %174

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %92

170:                                              ; preds = %109, %92
  store i32 0, i32* %2, align 4
  br label %236

171:                                              ; preds = %135, %125
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %171, %165, %157
  br label %175

175:                                              ; preds = %193, %174
  %176 = load i32, i32* %6, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %175
  %179 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %180 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %179, i32 0, i32 2
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load %struct.uio_port*, %struct.uio_port** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %183, i64 %185
  store %struct.uio_port* %186, %struct.uio_port** %11, align 8
  %187 = load %struct.uio_port*, %struct.uio_port** %11, align 8
  %188 = getelementptr inbounds %struct.uio_port, %struct.uio_port* %187, i32 0, i32 1
  %189 = load %struct.uio_portio*, %struct.uio_portio** %188, align 8
  store %struct.uio_portio* %189, %struct.uio_portio** %12, align 8
  %190 = load %struct.uio_portio*, %struct.uio_portio** %12, align 8
  %191 = getelementptr inbounds %struct.uio_portio, %struct.uio_portio* %190, i32 0, i32 0
  %192 = call i32 @kobject_put(i32* %191)
  br label %193

193:                                              ; preds = %178
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %6, align 4
  br label %175

196:                                              ; preds = %175
  %197 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %198 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @kobject_put(i32* %199)
  br label %201

201:                                              ; preds = %196, %56, %46
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %201, %86, %78
  br label %205

205:                                              ; preds = %223, %204
  %206 = load i32, i32* %5, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %210 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %209, i32 0, i32 2
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load %struct.uio_mem*, %struct.uio_mem** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %213, i64 %215
  store %struct.uio_mem* %216, %struct.uio_mem** %9, align 8
  %217 = load %struct.uio_mem*, %struct.uio_mem** %9, align 8
  %218 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %217, i32 0, i32 1
  %219 = load %struct.uio_map*, %struct.uio_map** %218, align 8
  store %struct.uio_map* %219, %struct.uio_map** %10, align 8
  %220 = load %struct.uio_map*, %struct.uio_map** %10, align 8
  %221 = getelementptr inbounds %struct.uio_map, %struct.uio_map* %220, i32 0, i32 0
  %222 = call i32 @kobject_put(i32* %221)
  br label %223

223:                                              ; preds = %208
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %5, align 4
  br label %205

226:                                              ; preds = %205
  %227 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %228 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @kobject_put(i32* %229)
  %231 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %232 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %231, i32 0, i32 0
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @dev_err(%struct.TYPE_4__* %232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %226, %170
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i8* @kobject_create_and_add(i8*, i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @kobject_add(i32*, i32*, i8*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
