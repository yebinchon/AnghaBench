; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ecm.c_ecm_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ecm.c_ecm_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_ecm = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"reset ecm control %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"init ecm ctrl %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"reset ecm\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"init ecm\0A\00", align 1
@DEFAULT_FILTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"activate ecm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @ecm_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecm_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_ecm*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %12 = call %struct.f_ecm* @func_to_ecm(%struct.usb_function* %11)
  store %struct.f_ecm* %12, %struct.f_ecm** %8, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %20 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %170

27:                                               ; preds = %23
  %28 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @VDBG(%struct.usb_composite_dev* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %32 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %31, i32 0, i32 3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i32 @usb_ep_disable(%struct.TYPE_8__* %33)
  %35 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %36 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %27
  %42 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @VDBG(%struct.usb_composite_dev* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %46 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %49 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %50 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i64 @config_ep_by_speed(i32 %47, %struct.usb_function* %48, %struct.TYPE_8__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %170

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %58 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = call i32 @usb_ep_enable(%struct.TYPE_8__* %59)
  br label %169

61:                                               ; preds = %3
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %64 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %167

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = icmp ugt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %170

71:                                               ; preds = %67
  %72 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %73 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %81 = call i32 @DBG(%struct.usb_composite_dev* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %83 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %82, i32 0, i32 2
  %84 = call i32 @gether_disconnect(%struct.TYPE_9__* %83)
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %87 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %95 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %137, label %101

101:                                              ; preds = %93, %85
  %102 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %103 = call i32 @DBG(%struct.usb_composite_dev* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %105 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %108 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %109 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = call i64 @config_ep_by_speed(i32 %106, %struct.usb_function* %107, %struct.TYPE_8__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %101
  %115 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %116 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %119 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %120 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i64 @config_ep_by_speed(i32 %117, %struct.usb_function* %118, %struct.TYPE_8__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %114, %101
  %126 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %127 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32* null, i32** %130, align 8
  %131 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %132 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32* null, i32** %135, align 8
  br label %170

136:                                              ; preds = %114
  br label %137

137:                                              ; preds = %136, %93
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %164

140:                                              ; preds = %137
  %141 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %142 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @gadget_is_zlp_supported(i32 %143)
  %145 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %146 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @DEFAULT_FILTER, align 4
  %149 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %150 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %153 = call i32 @DBG(%struct.usb_composite_dev* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %154 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %155 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %154, i32 0, i32 2
  %156 = call %struct.net_device* @gether_connect(%struct.TYPE_9__* %155)
  store %struct.net_device* %156, %struct.net_device** %10, align 8
  %157 = load %struct.net_device*, %struct.net_device** %10, align 8
  %158 = call i64 @IS_ERR(%struct.net_device* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %140
  %161 = load %struct.net_device*, %struct.net_device** %10, align 8
  %162 = call i32 @PTR_ERR(%struct.net_device* %161)
  store i32 %162, i32* %4, align 4
  br label %173

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %163, %137
  %165 = load %struct.f_ecm*, %struct.f_ecm** %8, align 8
  %166 = call i32 @ecm_notify(%struct.f_ecm* %165)
  br label %168

167:                                              ; preds = %61
  br label %170

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168, %56
  store i32 0, i32* %4, align 4
  br label %173

170:                                              ; preds = %167, %125, %70, %54, %26
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %170, %169, %160
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.f_ecm* @func_to_ecm(%struct.usb_function*) #1

declare dso_local i32 @VDBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_8__*) #1

declare dso_local i64 @config_ep_by_speed(i32, %struct.usb_function*, %struct.TYPE_8__*) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_9__*) #1

declare dso_local i32 @gadget_is_zlp_supported(i32) #1

declare dso_local %struct.net_device* @gether_connect(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local i32 @ecm_notify(%struct.f_ecm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
