; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_security_setup_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_dimm_devs.c_nvdimm_security_setup_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvdimm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"security\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@shutdown_security_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_security_setup_events(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nvdimm*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.nvdimm* @to_nvdimm(%struct.device* %5)
  store %struct.nvdimm* %6, %struct.nvdimm** %4, align 8
  %7 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %8 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %14 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %20 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18, %12, %1
  store i32 0, i32* %2, align 4
  br label %49

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sysfs_get_dirent(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %34 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %37 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %27
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load i32, i32* @shutdown_security_notify, align 4
  %47 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %48 = call i32 @devm_add_action_or_reset(%struct.device* %45, i32 %46, %struct.nvdimm* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %41, %26
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.nvdimm* @to_nvdimm(%struct.device*) #1

declare dso_local i32 @sysfs_get_dirent(i32, i8*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.nvdimm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
