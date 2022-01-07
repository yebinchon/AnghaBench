; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_qcom_add_glink_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_qcom_add_glink_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.device }
%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qcom_rproc_glink = type { %struct.TYPE_4__, %struct.device*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"glink-edge\00", align 1
@glink_subdev_start = common dso_local global i32 0, align 4
@glink_subdev_stop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcom_add_glink_subdev(%struct.rproc* %0, %struct.qcom_rproc_glink* %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.qcom_rproc_glink*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store %struct.qcom_rproc_glink* %1, %struct.qcom_rproc_glink** %4, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @of_get_child_by_name(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %4, align 8
  %15 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %4, align 8
  %17 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %4, align 8
  %24 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %23, i32 0, i32 1
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load i32, i32* @glink_subdev_start, align 4
  %26 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %4, align 8
  %27 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @glink_subdev_stop, align 4
  %30 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %4, align 8
  %31 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.rproc*, %struct.rproc** %3, align 8
  %34 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %4, align 8
  %35 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %34, i32 0, i32 0
  %36 = call i32 @rproc_add_subdev(%struct.rproc* %33, %struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @rproc_add_subdev(%struct.rproc*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
