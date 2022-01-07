; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_serial_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidda_private* }
%struct.cb_pcidda_private = type { i64, i32 }

@SERIAL_IN_BIT = common dso_local global i32 0, align 4
@DACALIBRATION1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @cb_pcidda_serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_pcidda_serial_out(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cb_pcidda_private*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %10, align 8
  store %struct.cb_pcidda_private* %11, %struct.cb_pcidda_private** %7, align 8
  store i32 1, i32* %8, align 4
  br label %12

12:                                               ; preds = %47, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub i32 %18, %19
  %21 = shl i32 1, %20
  %22 = and i32 %17, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* @SERIAL_IN_BIT, align 4
  %26 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %7, align 8
  %27 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %37

30:                                               ; preds = %16
  %31 = load i32, i32* @SERIAL_IN_BIT, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %7, align 8
  %34 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %7, align 8
  %39 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cb_pcidda_private*, %struct.cb_pcidda_private** %7, align 8
  %42 = getelementptr inbounds %struct.cb_pcidda_private, %struct.cb_pcidda_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DACALIBRATION1, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outw_p(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %12

50:                                               ; preds = %12
  ret void
}

declare dso_local i32 @outw_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
