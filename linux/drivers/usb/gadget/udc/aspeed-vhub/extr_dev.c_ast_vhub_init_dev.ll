; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_dev.c_ast_vhub_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_vhub = type { %struct.TYPE_16__*, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_14__ = type { %struct.ast_vhub_dev }
%struct.ast_vhub_dev = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_18__, %struct.TYPE_13__, i64, i32, %struct.ast_vhub* }
%struct.TYPE_17__ = type { %struct.device*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ast_vhub_dev_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s:p%d\00", align 1
@ast_vhub_udc_ops = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ast_vhub_init_dev(%struct.ast_vhub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ast_vhub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ast_vhub_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.ast_vhub* %0, %struct.ast_vhub** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %10 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %9, i32 0, i32 3
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store %struct.ast_vhub_dev* %15, %struct.ast_vhub_dev** %6, align 8
  %16 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %17 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %21 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %22 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %21, i32 0, i32 7
  store %struct.ast_vhub* %20, %struct.ast_vhub** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %25 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  %30 = call i32 @devm_kasprintf(%struct.device* %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %32 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %34 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 256
  %37 = load i32, i32* %5, align 4
  %38 = mul i32 16, %37
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %42 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %44 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %45 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %44, i32 0, i32 4
  %46 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %47 = call i32 @ast_vhub_init_ep0(%struct.ast_vhub* %43, %struct.TYPE_13__* %45, %struct.ast_vhub_dev* %46)
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.TYPE_17__* @kzalloc(i32 4, i32 %48)
  %50 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %51 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %50, i32 0, i32 2
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %51, align 8
  %52 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %53 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %52, i32 0, i32 2
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = icmp ne %struct.TYPE_17__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %2
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %159

59:                                               ; preds = %2
  %60 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %61 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = call i32 @device_initialize(%struct.TYPE_17__* %62)
  %64 = load i32, i32* @ast_vhub_dev_release, align 4
  %65 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %66 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %65, i32 0, i32 2
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 8
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %71 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store %struct.device* %69, %struct.device** %73, align 8
  %74 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %75 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %74, i32 0, i32 2
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = call i32 @dev_name(%struct.device* %77)
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  %81 = call i32 @dev_set_name(%struct.TYPE_17__* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %83 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %82, i32 0, i32 2
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = call i32 @device_add(%struct.TYPE_17__* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %59
  br label %153

89:                                               ; preds = %59
  %90 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %91 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 6
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %95 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 5
  store i32* @ast_vhub_udc_ops, i32** %96, align 8
  %97 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %98 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %101 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 4
  store i32* %99, i32** %102, align 8
  %103 = load i32, i32* @KBUILD_MODNAME, align 4
  %104 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %105 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %108 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %89
  %112 = load i32, i32* @USB_SPEED_FULL, align 4
  %113 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %114 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  br label %121

116:                                              ; preds = %89
  %117 = load i32, i32* @USB_SPEED_HIGH, align 4
  %118 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %119 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  br label %121

121:                                              ; preds = %116, %111
  %122 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %123 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %124 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.ast_vhub*, %struct.ast_vhub** %4, align 8
  %127 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.device, %struct.device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %133 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  %136 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %137 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %136, i32 0, i32 2
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %140 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %139, i32 0, i32 3
  %141 = call i32 @usb_add_gadget_udc(%struct.TYPE_17__* %138, %struct.TYPE_18__* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %121
  br label %148

145:                                              ; preds = %121
  %146 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %147 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  store i32 0, i32* %3, align 4
  br label %159

148:                                              ; preds = %144
  %149 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %150 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %149, i32 0, i32 2
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = call i32 @device_del(%struct.TYPE_17__* %151)
  br label %153

153:                                              ; preds = %148, %88
  %154 = load %struct.ast_vhub_dev*, %struct.ast_vhub_dev** %6, align 8
  %155 = getelementptr inbounds %struct.ast_vhub_dev, %struct.ast_vhub_dev* %154, i32 0, i32 2
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = call i32 @put_device(%struct.TYPE_17__* %156)
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %153, %145, %56
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @ast_vhub_init_ep0(%struct.ast_vhub*, %struct.TYPE_13__*, %struct.ast_vhub_dev*) #1

declare dso_local %struct.TYPE_17__* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @device_add(%struct.TYPE_17__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_add_gadget_udc(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @device_del(%struct.TYPE_17__*) #1

declare dso_local i32 @put_device(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
