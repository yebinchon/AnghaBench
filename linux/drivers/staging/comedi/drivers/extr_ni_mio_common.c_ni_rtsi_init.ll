; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_rtsi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_rtsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i64, i32, i64, i32 }

@NI_M_CLK_FOUT2_RTSI_10MHZ = common dso_local global i32 0, align 4
@NI_MIO_INTERNAL_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ni_set_master_clock failed, bug?\0A\00", align 1
@COMEDI_INPUT = common dso_local global i32 0, align 4
@default_rtsi_routing = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_rtsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_rtsi_init(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 1
  %7 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  store %struct.ni_private* %7, %struct.ni_private** %3, align 8
  %8 = load i32, i32* @NI_M_CLK_FOUT2_RTSI_10MHZ, align 4
  %9 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %10 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = load i32, i32* @NI_MIO_INTERNAL_CLOCK, align 4
  %13 = call i64 @ni_set_master_clock(%struct.comedi_device* %11, i32 %12, i32 0)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @COMEDI_INPUT, align 4
  %28 = call i32 @ni_set_rtsi_direction(%struct.comedi_device* %25, i32 %26, i32 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** @default_rtsi_routing, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ni_set_rtsi_routing(%struct.comedi_device* %29, i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %42 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %50, %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = call i32 @set_ith_rtsi_brd_reg(i32 %47, i32 0, %struct.comedi_device* %48)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %43

53:                                               ; preds = %43
  %54 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %55 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memset(i32 %56, i32 0, i32 4)
  %58 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %59 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %61 = call i32 @set_rgout0_reg(i32 0, %struct.comedi_device* %60)
  ret void
}

declare dso_local i64 @ni_set_master_clock(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_set_rtsi_direction(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_set_rtsi_routing(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @set_ith_rtsi_brd_reg(i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_rgout0_reg(i32, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
