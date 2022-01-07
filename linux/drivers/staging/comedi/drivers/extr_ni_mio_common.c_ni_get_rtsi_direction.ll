; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_get_rtsi_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_get_rtsi_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32 }

@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@NISTC_RTSI_TRIG_OLD_CLK_CHAN = common dso_local global i32 0, align 4
@NISTC_RTSI_TRIG_DRV_CLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @ni_get_rtsi_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_get_rtsi_direction(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ni_private*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.ni_private*, %struct.ni_private** %9, align 8
  store %struct.ni_private* %10, %struct.ni_private** %6, align 8
  %11 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %12 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @NISTC_RTSI_TRIG_NUM_CHAN(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TRIGGER_LINE(i32 0)
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 @TRIGGER_LINE(i32 0)
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %28 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %32 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NISTC_RTSI_TRIG_DIR(i32 %30, i32 %33)
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @COMEDI_OUTPUT, align 4
  br label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @COMEDI_INPUT, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %22
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @NISTC_RTSI_TRIG_OLD_CLK_CHAN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %49 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NISTC_RTSI_TRIG_DRV_CLK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @COMEDI_OUTPUT, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @COMEDI_INPUT, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %58, %41
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @NISTC_RTSI_TRIG_NUM_CHAN(i32) #1

declare dso_local i32 @TRIGGER_LINE(i32) #1

declare dso_local i32 @NISTC_RTSI_TRIG_DIR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
