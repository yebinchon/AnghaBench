; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct_device = type { %struct.ni_gpct* }
%struct.ni_gpct = type { i32 }

@NI_COUNTER_NAMES_BASE = common dso_local global i32 0, align 4
@NI_MAX_COUNTERS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_set_routing(%struct.ni_gpct_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ni_gpct*, align 8
  %10 = alloca i32, align 4
  store %struct.ni_gpct_device* %0, %struct.ni_gpct_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NI_COUNTER_NAMES_BASE, align 4
  %13 = sub i32 %11, %12
  %14 = load i32, i32* @NI_MAX_COUNTERS, align 4
  %15 = urem i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %17 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %16, i32 0, i32 0
  %18 = load %struct.ni_gpct*, %struct.ni_gpct** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %18, i64 %20
  store %struct.ni_gpct* %21, %struct.ni_gpct** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @NI_CtrA(i32 0)
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @NI_CtrZ(i32 -1)
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.ni_gpct*, %struct.ni_gpct** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ni_tio_set_other_src(%struct.ni_gpct* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %63

34:                                               ; preds = %25, %3
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @NI_CtrGate(i32 0)
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @NI_CtrGate(i32 -1)
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.ni_gpct*, %struct.ni_gpct** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ni_tio_set_gate_src_raw(%struct.ni_gpct* %43, i32 0, i32 %44)
  store i32 %45, i32* %10, align 4
  br label %62

46:                                               ; preds = %38, %34
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @NI_CtrAux(i32 0)
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @NI_CtrAux(i32 -1)
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.ni_gpct*, %struct.ni_gpct** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ni_tio_set_gate_src_raw(%struct.ni_gpct* %55, i32 1, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %61

58:                                               ; preds = %50, %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @NI_CtrA(i32) #1

declare dso_local i32 @NI_CtrZ(i32) #1

declare dso_local i32 @ni_tio_set_other_src(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @NI_CtrGate(i32) #1

declare dso_local i32 @ni_tio_set_gate_src_raw(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @NI_CtrAux(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
