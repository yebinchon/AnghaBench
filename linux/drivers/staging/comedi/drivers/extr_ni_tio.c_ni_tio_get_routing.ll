; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_get_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct_device = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i32 }

@NI_COUNTER_NAMES_BASE = common dso_local global i32 0, align 4
@NI_MAX_COUNTERS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_get_routing(%struct.ni_gpct_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ni_gpct_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_gpct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ni_gpct_device* %0, %struct.ni_gpct_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NI_COUNTER_NAMES_BASE, align 4
  %12 = sub i32 %10, %11
  %13 = load i32, i32* @NI_MAX_COUNTERS, align 4
  %14 = urem i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %4, align 8
  %16 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %15, i32 0, i32 0
  %17 = load %struct.ni_gpct*, %struct.ni_gpct** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %17, i64 %19
  store %struct.ni_gpct* %20, %struct.ni_gpct** %7, align 8
  store i32 1, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @NI_CtrA(i32 0)
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @NI_CtrZ(i32 -1)
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.ni_gpct*, %struct.ni_gpct** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ni_tio_get_other_src(%struct.ni_gpct* %29, i32 %30, i32* %9)
  store i32 %31, i32* %8, align 4
  br label %56

32:                                               ; preds = %24, %2
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @NI_CtrGate(i32 0)
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @NI_CtrGate(i32 -1)
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.ni_gpct*, %struct.ni_gpct** %7, align 8
  %42 = call i32 @ni_tio_get_gate_src_raw(%struct.ni_gpct* %41, i32 0, i32* %9)
  store i32 %42, i32* %8, align 4
  br label %55

43:                                               ; preds = %36, %32
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @NI_CtrAux(i32 0)
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @NI_CtrAux(i32 -1)
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.ni_gpct*, %struct.ni_gpct** %7, align 8
  %53 = call i32 @ni_tio_get_gate_src_raw(%struct.ni_gpct* %52, i32 1, i32* %9)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %47, %43
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %28
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @NI_CtrA(i32) #1

declare dso_local i32 @NI_CtrZ(i32) #1

declare dso_local i32 @ni_tio_get_other_src(%struct.ni_gpct*, i32, i32*) #1

declare dso_local i32 @NI_CtrGate(i32) #1

declare dso_local i32 @ni_tio_get_gate_src_raw(%struct.ni_gpct*, i32, i32*) #1

declare dso_local i32 @NI_CtrAux(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
