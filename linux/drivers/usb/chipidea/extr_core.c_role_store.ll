; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_role_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_role_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ci_hdrc = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@CI_ROLE_HOST = common dso_local global i64 0, align 8
@CI_ROLE_GADGET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Current configuration is not dual-role, quit\0A\00", align 1
@EPERM = common dso_local global i64 0, align 8
@CI_ROLE_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @role_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @role_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ci_hdrc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ci_hdrc* @dev_get_drvdata(%struct.device* %13)
  store %struct.ci_hdrc* %14, %struct.ci_hdrc** %10, align 8
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i64, i64* @CI_ROLE_HOST, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %24 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i64, i64* @CI_ROLE_GADGET, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %22, %4
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @EPERM, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %123

35:                                               ; preds = %22
  %36 = load i64, i64* @CI_ROLE_HOST, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %67, %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @CI_ROLE_END, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %45 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %54 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strlen(i32 %61)
  %63 = call i32 @strncmp(i8* %43, i32 %52, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %42
  br label %70

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %38

70:                                               ; preds = %65, %38
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @CI_ROLE_END, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %77 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %70
  %81 = load i64, i64* @EINVAL, align 8
  %82 = sub i64 0, %81
  store i64 %82, i64* %5, align 8
  br label %123

83:                                               ; preds = %74
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = call i32 @pm_runtime_get_sync(%struct.device* %84)
  %86 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %87 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @disable_irq(i32 %88)
  %90 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %91 = call i32 @ci_role_stop(%struct.ci_hdrc* %90)
  %92 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ci_role_start(%struct.ci_hdrc* %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %83
  %98 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %99 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @CI_ROLE_GADGET, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %106 = call i32 @ci_handle_vbus_change(%struct.ci_hdrc* %105)
  br label %107

107:                                              ; preds = %104, %97, %83
  %108 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %109 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @enable_irq(i32 %110)
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call i32 @pm_runtime_put_sync(%struct.device* %112)
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i64, i64* %9, align 8
  br label %121

118:                                              ; preds = %107
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  br label %121

121:                                              ; preds = %118, %116
  %122 = phi i64 [ %117, %116 ], [ %120, %118 ]
  store i64 %122, i64* %5, align 8
  br label %123

123:                                              ; preds = %121, %80, %30
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local %struct.ci_hdrc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @ci_role_stop(%struct.ci_hdrc*) #1

declare dso_local i32 @ci_role_start(%struct.ci_hdrc*, i32) #1

declare dso_local i32 @ci_handle_vbus_change(%struct.ci_hdrc*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
