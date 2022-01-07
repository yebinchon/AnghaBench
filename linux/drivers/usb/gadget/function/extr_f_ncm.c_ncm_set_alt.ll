; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_ncm = type { i32, i32, i32, i32, %struct.net_device*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i64 }

@.str = private unnamed_addr constant [22 x i8] c"reset ncm control %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"init ncm ctrl %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"reset ncm\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"init ncm\0A\00", align 1
@DEFAULT_FILTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"activate ncm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @ncm_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncm_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_ncm*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %12 = call %struct.f_ncm* @func_to_ncm(%struct.usb_function* %11)
  store %struct.f_ncm* %12, %struct.f_ncm** %8, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %20 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %187

27:                                               ; preds = %23
  %28 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %32 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %31, i32 0, i32 6
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i32 @usb_ep_disable(%struct.TYPE_8__* %33)
  %35 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %36 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %35, i32 0, i32 6
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %27
  %42 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %46 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %49 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %50 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %49, i32 0, i32 6
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i64 @config_ep_by_speed(i32 %47, %struct.usb_function* %48, %struct.TYPE_8__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %187

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %58 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %57, i32 0, i32 6
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = call i32 @usb_ep_enable(%struct.TYPE_8__* %59)
  br label %186

61:                                               ; preds = %3
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %64 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %184

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = icmp ugt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %187

71:                                               ; preds = %67
  %72 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %73 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %71
  %80 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %81 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %83 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %85 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %84, i32 0, i32 4
  store %struct.net_device* null, %struct.net_device** %85, align 8
  %86 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %87 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %86, i32 0, i32 5
  %88 = call i32 @gether_disconnect(%struct.TYPE_9__* %87)
  %89 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %90 = call i32 @ncm_reset_values(%struct.f_ncm* %89)
  br label %91

91:                                               ; preds = %79, %71
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %175

94:                                               ; preds = %91
  %95 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %96 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %104 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %146, label %110

110:                                              ; preds = %102, %94
  %111 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %112 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %114 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %117 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %118 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = call i64 @config_ep_by_speed(i32 %115, %struct.usb_function* %116, %struct.TYPE_8__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %110
  %124 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %125 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %128 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %129 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = call i64 @config_ep_by_speed(i32 %126, %struct.usb_function* %127, %struct.TYPE_8__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %123, %110
  %135 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %136 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  %140 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %141 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  br label %187

145:                                              ; preds = %123
  br label %146

146:                                              ; preds = %145, %102
  %147 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %148 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @gadget_is_zlp_supported(i32 %149)
  %151 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %152 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @DEFAULT_FILTER, align 4
  %155 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %156 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %159 = call i32 (%struct.usb_composite_dev*, i8*, ...) @DBG(%struct.usb_composite_dev* %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %161 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %160, i32 0, i32 5
  %162 = call %struct.net_device* @gether_connect(%struct.TYPE_9__* %161)
  store %struct.net_device* %162, %struct.net_device** %10, align 8
  %163 = load %struct.net_device*, %struct.net_device** %10, align 8
  %164 = call i64 @IS_ERR(%struct.net_device* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %146
  %167 = load %struct.net_device*, %struct.net_device** %10, align 8
  %168 = call i32 @PTR_ERR(%struct.net_device* %167)
  store i32 %168, i32* %4, align 4
  br label %190

169:                                              ; preds = %146
  %170 = load %struct.net_device*, %struct.net_device** %10, align 8
  %171 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %172 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %171, i32 0, i32 4
  store %struct.net_device* %170, %struct.net_device** %172, align 8
  %173 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %174 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %173, i32 0, i32 2
  store i32 0, i32* %174, align 8
  br label %175

175:                                              ; preds = %169, %91
  %176 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %177 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %176, i32 0, i32 3
  %178 = call i32 @spin_lock(i32* %177)
  %179 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %180 = call i32 @ncm_notify(%struct.f_ncm* %179)
  %181 = load %struct.f_ncm*, %struct.f_ncm** %8, align 8
  %182 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %181, i32 0, i32 3
  %183 = call i32 @spin_unlock(i32* %182)
  br label %185

184:                                              ; preds = %61
  br label %187

185:                                              ; preds = %175
  br label %186

186:                                              ; preds = %185, %56
  store i32 0, i32* %4, align 4
  br label %190

187:                                              ; preds = %184, %134, %70, %54, %26
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %187, %186, %166
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.f_ncm* @func_to_ncm(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, ...) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_8__*) #1

declare dso_local i64 @config_ep_by_speed(i32, %struct.usb_function*, %struct.TYPE_8__*) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_9__*) #1

declare dso_local i32 @ncm_reset_values(%struct.f_ncm*) #1

declare dso_local i32 @gadget_is_zlp_supported(i32) #1

declare dso_local %struct.net_device* @gether_connect(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ncm_notify(%struct.f_ncm*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
