; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_client_invoke_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_client_invoke_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.tee_ioctl_invoke_arg = type { i32 }
%struct.tee_param = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tee_client_invoke_func(%struct.tee_context* %0, %struct.tee_ioctl_invoke_arg* %1, %struct.tee_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_context*, align 8
  %6 = alloca %struct.tee_ioctl_invoke_arg*, align 8
  %7 = alloca %struct.tee_param*, align 8
  store %struct.tee_context* %0, %struct.tee_context** %5, align 8
  store %struct.tee_ioctl_invoke_arg* %1, %struct.tee_ioctl_invoke_arg** %6, align 8
  store %struct.tee_param* %2, %struct.tee_param** %7, align 8
  %8 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %9 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.tee_context*, %struct.tee_ioctl_invoke_arg*, %struct.tee_param*)**
  %17 = load i32 (%struct.tee_context*, %struct.tee_ioctl_invoke_arg*, %struct.tee_param*)*, i32 (%struct.tee_context*, %struct.tee_ioctl_invoke_arg*, %struct.tee_param*)** %16, align 8
  %18 = icmp ne i32 (%struct.tee_context*, %struct.tee_ioctl_invoke_arg*, %struct.tee_param*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %24 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.tee_context*, %struct.tee_ioctl_invoke_arg*, %struct.tee_param*)**
  %32 = load i32 (%struct.tee_context*, %struct.tee_ioctl_invoke_arg*, %struct.tee_param*)*, i32 (%struct.tee_context*, %struct.tee_ioctl_invoke_arg*, %struct.tee_param*)** %31, align 8
  %33 = load %struct.tee_context*, %struct.tee_context** %5, align 8
  %34 = load %struct.tee_ioctl_invoke_arg*, %struct.tee_ioctl_invoke_arg** %6, align 8
  %35 = load %struct.tee_param*, %struct.tee_param** %7, align 8
  %36 = call i32 %32(%struct.tee_context* %33, %struct.tee_ioctl_invoke_arg* %34, %struct.tee_param* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
