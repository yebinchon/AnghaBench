; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_source_subselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_source_subselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i64, i32** }

@ni_gpct_variant_m_series = common dso_local global i64 0, align 8
@NI_GPCT_CLOCK_SRC_SELECT_MASK = common dso_local global i32 0, align 4
@GI_SRC_SUBSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*, i32)* @ni_tio_set_source_subselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_tio_set_source_subselect(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca %struct.ni_gpct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %10 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %9, i32 0, i32 2
  %11 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %10, align 8
  store %struct.ni_gpct_device* %11, %struct.ni_gpct_device** %5, align 8
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %16 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @NITIO_GATE2_REG(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %21 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ni_gpct_variant_m_series, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %75

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NI_GPCT_CLOCK_SRC_SELECT_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %59 [
    i32 130, label %30
    i32 128, label %30
    i32 131, label %45
    i32 129, label %45
  ]

30:                                               ; preds = %26, %26
  %31 = load i32, i32* @GI_SRC_SUBSEL, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %34 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %32
  store i32 %44, i32* %42, align 4
  br label %60

45:                                               ; preds = %26, %26
  %46 = load i32, i32* @GI_SRC_SUBSEL, align 4
  %47 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %48 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %46
  store i32 %58, i32* %56, align 4
  br label %60

59:                                               ; preds = %26
  br label %75

60:                                               ; preds = %45, %30
  %61 = load %struct.ni_gpct*, %struct.ni_gpct** %3, align 8
  %62 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  %63 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ni_tio_write(%struct.ni_gpct* %61, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %60, %59, %25
  ret void
}

declare dso_local i32 @NITIO_GATE2_REG(i32) #1

declare dso_local i32 @ni_tio_write(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
