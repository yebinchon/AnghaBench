; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidda_private* }
%struct.cb_pcidda_private = type { i32*, i32* }

@CB_DDA_CALDAC_COURSE_OFFSET = common dso_local global i64 0, align 8
@CB_DDA_CALDAC_FINE_OFFSET = common dso_local global i64 0, align 8
@CB_DDA_CALDAC_COURSE_GAIN = common dso_local global i64 0, align 8
@CB_DDA_CALDAC_FINE_GAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @cb_pcidda_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_pcidda_calibrate(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cb_pcidda_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %14, align 8
  store %struct.cb_pcidda_private* %15, %struct.cb_pcidda_private** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = udiv i32 %16, 2
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = urem i32 %18, 2
  %20 = mul i32 4, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul i32 2, %21
  %23 = load i32, i32* %5, align 4
  %24 = mul i32 12, %23
  %25 = add i32 %22, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %7, align 8
  %28 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %7, align 8
  %34 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add i32 7, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %7, align 8
  %42 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add i32 8, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @CB_DDA_CALDAC_COURSE_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = lshr i32 %55, 8
  %57 = and i32 %56, 255
  %58 = call i32 @cb_pcidda_write_caldac(%struct.comedi_device* %49, i32 %50, i64 %54, i32 %57)
  %59 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* @CB_DDA_CALDAC_FINE_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 255
  %67 = call i32 @cb_pcidda_write_caldac(%struct.comedi_device* %59, i32 %60, i64 %64, i32 %66)
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @CB_DDA_CALDAC_COURSE_GAIN, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = lshr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = call i32 @cb_pcidda_write_caldac(%struct.comedi_device* %68, i32 %69, i64 %73, i32 %76)
  %78 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* @CB_DDA_CALDAC_FINE_GAIN, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 255
  %86 = call i32 @cb_pcidda_write_caldac(%struct.comedi_device* %78, i32 %79, i64 %83, i32 %85)
  ret void
}

declare dso_local i32 @cb_pcidda_write_caldac(%struct.comedi_device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
