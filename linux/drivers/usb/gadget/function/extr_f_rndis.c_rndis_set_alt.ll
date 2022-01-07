; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_rndis.c_rndis_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_rndis.c_rndis_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_rndis = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"reset rndis control %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"init rndis ctrl %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"reset rndis\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"init rndis\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"RNDIS RX/TX early activation ... \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @rndis_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f_rndis*, align 8
  %9 = alloca %struct.usb_composite_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %12 = call %struct.f_rndis* @func_to_rndis(%struct.usb_function* %11)
  store %struct.f_rndis* %12, %struct.f_rndis** %8, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %16, align 8
  store %struct.usb_composite_dev* %17, %struct.usb_composite_dev** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %20 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %3
  %24 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @VDBG(%struct.usb_composite_dev* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %28 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %27, i32 0, i32 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i32 @usb_ep_disable(%struct.TYPE_8__* %29)
  %31 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %32 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %31, i32 0, i32 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %23
  %38 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @VDBG(%struct.usb_composite_dev* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %42 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %45 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %46 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call i64 @config_ep_by_speed(i32 %43, %struct.usb_function* %44, %struct.TYPE_8__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %159

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %23
  %53 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %54 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %53, i32 0, i32 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = call i32 @usb_ep_enable(%struct.TYPE_8__* %55)
  br label %158

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %60 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %156

63:                                               ; preds = %57
  %64 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %65 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %73 = call i32 @DBG(%struct.usb_composite_dev* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %75 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %74, i32 0, i32 2
  %76 = call i32 @gether_disconnect(%struct.TYPE_9__* %75)
  br label %77

77:                                               ; preds = %71, %63
  %78 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %79 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %87 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %129, label %93

93:                                               ; preds = %85, %77
  %94 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %95 = call i32 @DBG(%struct.usb_composite_dev* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %97 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %100 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %101 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = call i64 @config_ep_by_speed(i32 %98, %struct.usb_function* %99, %struct.TYPE_8__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %93
  %107 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %108 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %111 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %112 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = call i64 @config_ep_by_speed(i32 %109, %struct.usb_function* %110, %struct.TYPE_8__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %106, %93
  %118 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %119 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %124 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32* null, i32** %127, align 8
  br label %159

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %85
  %130 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %131 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %134 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  %136 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %137 = call i32 @DBG(%struct.usb_composite_dev* %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %138 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %139 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %138, i32 0, i32 2
  %140 = call %struct.net_device* @gether_connect(%struct.TYPE_9__* %139)
  store %struct.net_device* %140, %struct.net_device** %10, align 8
  %141 = load %struct.net_device*, %struct.net_device** %10, align 8
  %142 = call i64 @IS_ERR(%struct.net_device* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %129
  %145 = load %struct.net_device*, %struct.net_device** %10, align 8
  %146 = call i32 @PTR_ERR(%struct.net_device* %145)
  store i32 %146, i32* %4, align 4
  br label %162

147:                                              ; preds = %129
  %148 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %149 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.net_device*, %struct.net_device** %10, align 8
  %152 = load %struct.f_rndis*, %struct.f_rndis** %8, align 8
  %153 = getelementptr inbounds %struct.f_rndis, %struct.f_rndis* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = call i32 @rndis_set_param_dev(i32 %150, %struct.net_device* %151, i32* %154)
  br label %157

156:                                              ; preds = %57
  br label %159

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %52
  store i32 0, i32* %4, align 4
  br label %162

159:                                              ; preds = %156, %117, %50
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %159, %158, %144
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.f_rndis* @func_to_rndis(%struct.usb_function*) #1

declare dso_local i32 @VDBG(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_8__*) #1

declare dso_local i64 @config_ep_by_speed(i32, %struct.usb_function*, %struct.TYPE_8__*) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_9__*) #1

declare dso_local %struct.net_device* @gether_connect(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local i32 @rndis_set_param_dev(i32, %struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
