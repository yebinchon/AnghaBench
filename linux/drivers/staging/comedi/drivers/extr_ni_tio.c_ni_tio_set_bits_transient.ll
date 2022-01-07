; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_bits_transient.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_bits_transient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32, i32**, i32 }

@NITIO_NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*, i32, i32, i32, i32)* @ni_tio_set_bits_transient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_tio_set_bits_transient(%struct.ni_gpct* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ni_gpct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ni_gpct_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %16 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %15, i32 0, i32 1
  %17 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  store %struct.ni_gpct_device* %17, %struct.ni_gpct_device** %11, align 8
  %18 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %19 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NITIO_NUM_REGS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  %27 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  %31 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  %32 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %14, align 8
  %38 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  %39 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %38, i32 0, i32 2
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* %8, align 4
  %43 = xor i32 %42, -1
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %50, %51
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ni_gpct*, %struct.ni_gpct** %6, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ni_tio_write(%struct.ni_gpct* %59, i32 %66, i32 %67)
  %69 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  %70 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %69, i32 0, i32 2
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %30, %24, %5
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ni_tio_write(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
