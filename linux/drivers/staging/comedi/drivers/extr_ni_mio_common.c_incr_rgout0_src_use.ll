; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_incr_rgout0_src_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_incr_rgout0_src_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64, i32 }

@NI_RGOUT0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.comedi_device*)* @incr_rgout0_src_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incr_rgout0_src_use(i32 %0, %struct.comedi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.ni_private*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.comedi_device* %1, %struct.comedi_device** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @CR_CHAN(i32 %11)
  %13 = load i32, i32* @NI_RGOUT0, align 4
  %14 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %15 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %14, i32 0, i32 1
  %16 = call i64 @ni_lookup_route_register(i32 %12, i32 %13, i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %24 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = call i64 @get_rgout0_reg(%struct.comedi_device* %28)
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %27, %22
  %36 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %37 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %42 = call i32 @set_rgout0_reg(i64 %40, %struct.comedi_device* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %32, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @ni_lookup_route_register(i32, i32, i32*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @get_rgout0_reg(%struct.comedi_device*) #1

declare dso_local i32 @set_rgout0_reg(i64, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
