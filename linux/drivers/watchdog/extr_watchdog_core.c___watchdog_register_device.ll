; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c___watchdog_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_core.c___watchdog_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@watchdog_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_DOGS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@watchdog_restart_notifier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"watchdog%d: Cannot register restart handler (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @__watchdog_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__watchdog_register_device(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = icmp eq %struct.watchdog_device* %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %8, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %144

21:                                               ; preds = %13
  %22 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %23 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %30 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %37 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %21
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %144

43:                                               ; preds = %35, %28
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %45 = call i32 @watchdog_check_min_max_timeout(%struct.watchdog_device* %44)
  %46 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %47 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @of_alias_get_id(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @ida_simple_get(i32* @watchdog_ida, i32 %60, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %50
  br label %66

66:                                               ; preds = %65, %43
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @MAX_DOGS, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @ida_simple_get(i32* @watchdog_ida, i32 0, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %144

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %81 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %83 = call i32 @watchdog_dev_register(%struct.watchdog_device* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %78
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ida_simple_remove(i32* @watchdog_ida, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %144

98:                                               ; preds = %91
  %99 = load i32, i32* @MAX_DOGS, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i32 @ida_simple_get(i32* @watchdog_ida, i32 1, i32 %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %144

106:                                              ; preds = %98
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %109 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %111 = call i32 @watchdog_dev_register(%struct.watchdog_device* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @ida_simple_remove(i32* @watchdog_ida, i32 %115)
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %144

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %78
  %120 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %121 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %119
  %127 = load i32, i32* @watchdog_restart_notifier, align 4
  %128 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %129 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  %131 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %132 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %131, i32 0, i32 1
  %133 = call i32 @register_restart_handler(%struct.TYPE_6__* %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %126
  %137 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %138 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %126
  br label %143

143:                                              ; preds = %142, %119
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %114, %104, %96, %76, %40, %18
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @watchdog_check_min_max_timeout(%struct.watchdog_device*) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @watchdog_dev_register(%struct.watchdog_device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
