; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_reset_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_ncm.c_ncm_reset_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.f_ncm = type { i32, %struct.TYPE_4__, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@ndp16_opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DEFAULT_FILTER = common dso_local global i32 0, align 4
@ntb_parameters = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@NTB_DEFAULT_IN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f_ncm*)* @ncm_reset_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncm_reset_values(%struct.f_ncm* %0) #0 {
  %2 = alloca %struct.f_ncm*, align 8
  store %struct.f_ncm* %0, %struct.f_ncm** %2, align 8
  %3 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %4 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %3, i32 0, i32 2
  store %struct.TYPE_6__* @ndp16_opts, %struct.TYPE_6__** %4, align 8
  %5 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %6 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %8 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %13 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @DEFAULT_FILTER, align 4
  %15 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %16 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 8
  %18 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %19 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ntb_parameters, i32 0, i32 0), align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %24 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @NTB_DEFAULT_IN_SIZE, align 4
  %27 = load %struct.f_ncm*, %struct.f_ncm** %2, align 8
  %28 = getelementptr inbounds %struct.f_ncm, %struct.f_ncm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
