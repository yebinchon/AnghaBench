; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_altmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_altmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.typec_altmode = type { i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32*, %struct.TYPE_9__**, %struct.device* }
%struct.TYPE_9__ = type { i32**, i32 }
%struct.device = type { i32 }
%struct.typec_altmode_desc = type { i32, i32, i32, i32 }
%struct.altmode = type { i32, %struct.typec_altmode, i32, %struct.TYPE_9__**, %struct.TYPE_9__, i32**, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr_vdo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@dev_attr_description = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@dev_attr_active = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@dev_attr_supported_roles = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"mode%d\00", align 1
@typec_altmode_dev_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%u\00", align 1
@typec_bus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to register alternate mode (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.typec_altmode* (%struct.device*, %struct.typec_altmode_desc*)* @typec_register_altmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.typec_altmode* @typec_register_altmode(%struct.device* %0, %struct.typec_altmode_desc* %1) #0 {
  %3 = alloca %struct.typec_altmode*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.typec_altmode_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.altmode*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.typec_altmode_desc* %1, %struct.typec_altmode_desc** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @altmode_id_get(%struct.device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @is_typec_port(%struct.device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.altmode* @kzalloc(i32 104, i32 %14)
  store %struct.altmode* %15, %struct.altmode** %8, align 8
  %16 = load %struct.altmode*, %struct.altmode** %8, align 8
  %17 = icmp ne %struct.altmode* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.typec_altmode* @ERR_PTR(i32 %20)
  store %struct.typec_altmode* %21, %struct.typec_altmode** %3, align 8
  br label %158

22:                                               ; preds = %2
  %23 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %5, align 8
  %24 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.altmode*, %struct.altmode** %8, align 8
  %27 = getelementptr inbounds %struct.altmode, %struct.altmode* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 4
  %29 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %5, align 8
  %30 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.altmode*, %struct.altmode** %8, align 8
  %33 = getelementptr inbounds %struct.altmode, %struct.altmode* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %5, align 8
  %36 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.altmode*, %struct.altmode** %8, align 8
  %39 = getelementptr inbounds %struct.altmode, %struct.altmode* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %5, align 8
  %42 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.altmode*, %struct.altmode** %8, align 8
  %45 = getelementptr inbounds %struct.altmode, %struct.altmode* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.altmode*, %struct.altmode** %8, align 8
  %48 = getelementptr inbounds %struct.altmode, %struct.altmode* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.altmode*, %struct.altmode** %8, align 8
  %50 = getelementptr inbounds %struct.altmode, %struct.altmode* %49, i32 0, i32 5
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  store i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dev_attr_vdo, i32 0, i32 0), i32** %52, align 8
  %53 = load %struct.altmode*, %struct.altmode** %8, align 8
  %54 = getelementptr inbounds %struct.altmode, %struct.altmode* %53, i32 0, i32 5
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  store i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dev_attr_description, i32 0, i32 0), i32** %56, align 8
  %57 = load %struct.altmode*, %struct.altmode** %8, align 8
  %58 = getelementptr inbounds %struct.altmode, %struct.altmode* %57, i32 0, i32 5
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 2
  store i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dev_attr_active, i32 0, i32 0), i32** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %22
  %64 = load %struct.altmode*, %struct.altmode** %8, align 8
  %65 = getelementptr inbounds %struct.altmode, %struct.altmode* %64, i32 0, i32 5
  %66 = load i32**, i32*** %65, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 3
  store i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_attr_supported_roles, i32 0, i32 0), i32** %67, align 8
  %68 = load %struct.altmode*, %struct.altmode** %8, align 8
  %69 = getelementptr inbounds %struct.altmode, %struct.altmode* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %22
  %72 = load %struct.altmode*, %struct.altmode** %8, align 8
  %73 = getelementptr inbounds %struct.altmode, %struct.altmode* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %5, align 8
  %76 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sprintf(i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.altmode*, %struct.altmode** %8, align 8
  %80 = getelementptr inbounds %struct.altmode, %struct.altmode* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.altmode*, %struct.altmode** %8, align 8
  %83 = getelementptr inbounds %struct.altmode, %struct.altmode* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.altmode*, %struct.altmode** %8, align 8
  %86 = getelementptr inbounds %struct.altmode, %struct.altmode* %85, i32 0, i32 5
  %87 = load i32**, i32*** %86, align 8
  %88 = load %struct.altmode*, %struct.altmode** %8, align 8
  %89 = getelementptr inbounds %struct.altmode, %struct.altmode* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32** %87, i32*** %90, align 8
  %91 = load %struct.altmode*, %struct.altmode** %8, align 8
  %92 = getelementptr inbounds %struct.altmode, %struct.altmode* %91, i32 0, i32 4
  %93 = load %struct.altmode*, %struct.altmode** %8, align 8
  %94 = getelementptr inbounds %struct.altmode, %struct.altmode* %93, i32 0, i32 3
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %95, i64 0
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %96, align 8
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.altmode*, %struct.altmode** %8, align 8
  %99 = getelementptr inbounds %struct.altmode, %struct.altmode* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  store %struct.device* %97, %struct.device** %101, align 8
  %102 = load %struct.altmode*, %struct.altmode** %8, align 8
  %103 = getelementptr inbounds %struct.altmode, %struct.altmode* %102, i32 0, i32 3
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %103, align 8
  %105 = load %struct.altmode*, %struct.altmode** %8, align 8
  %106 = getelementptr inbounds %struct.altmode, %struct.altmode* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store %struct.TYPE_9__** %104, %struct.TYPE_9__*** %108, align 8
  %109 = load %struct.altmode*, %struct.altmode** %8, align 8
  %110 = getelementptr inbounds %struct.altmode, %struct.altmode* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i32* @typec_altmode_dev_type, i32** %112, align 8
  %113 = load %struct.altmode*, %struct.altmode** %8, align 8
  %114 = getelementptr inbounds %struct.altmode, %struct.altmode* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %114, i32 0, i32 2
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @dev_name(%struct.device* %116)
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @dev_set_name(%struct.TYPE_10__* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %71
  %123 = load %struct.altmode*, %struct.altmode** %8, align 8
  %124 = getelementptr inbounds %struct.altmode, %struct.altmode* %123, i32 0, i32 2
  %125 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %124)
  br label %129

126:                                              ; preds = %71
  %127 = load %struct.altmode*, %struct.altmode** %8, align 8
  %128 = call i32 @typec_altmode_set_partner(%struct.altmode* %127)
  br label %129

129:                                              ; preds = %126, %122
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i64 @is_typec_partner(%struct.device* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.altmode*, %struct.altmode** %8, align 8
  %135 = getelementptr inbounds %struct.altmode, %struct.altmode* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32* @typec_bus, i32** %137, align 8
  br label %138

138:                                              ; preds = %133, %129
  %139 = load %struct.altmode*, %struct.altmode** %8, align 8
  %140 = getelementptr inbounds %struct.altmode, %struct.altmode* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %140, i32 0, i32 2
  %142 = call i32 @device_register(%struct.TYPE_10__* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %138
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @dev_err(%struct.device* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load %struct.altmode*, %struct.altmode** %8, align 8
  %150 = getelementptr inbounds %struct.altmode, %struct.altmode* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %150, i32 0, i32 2
  %152 = call i32 @put_device(%struct.TYPE_10__* %151)
  %153 = load i32, i32* %9, align 4
  %154 = call %struct.typec_altmode* @ERR_PTR(i32 %153)
  store %struct.typec_altmode* %154, %struct.typec_altmode** %3, align 8
  br label %158

155:                                              ; preds = %138
  %156 = load %struct.altmode*, %struct.altmode** %8, align 8
  %157 = getelementptr inbounds %struct.altmode, %struct.altmode* %156, i32 0, i32 1
  store %struct.typec_altmode* %157, %struct.typec_altmode** %3, align 8
  br label %158

158:                                              ; preds = %155, %145, %18
  %159 = load %struct.typec_altmode*, %struct.typec_altmode** %3, align 8
  ret %struct.typec_altmode* %159
}

declare dso_local i32 @altmode_id_get(%struct.device*) #1

declare dso_local i32 @is_typec_port(%struct.device*) #1

declare dso_local %struct.altmode* @kzalloc(i32, i32) #1

declare dso_local %struct.typec_altmode* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @typec_altmode_set_partner(%struct.altmode*) #1

declare dso_local i64 @is_typec_partner(%struct.device*) #1

declare dso_local i32 @device_register(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
