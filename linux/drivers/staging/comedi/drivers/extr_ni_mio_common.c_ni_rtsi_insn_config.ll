; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_rtsi_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_rtsi_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_rtsi_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_rtsi_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.ni_private*, %struct.ni_private** %15, align 8
  store %struct.ni_private* %16, %struct.ni_private** %10, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %82 [
    i32 133, label %24
    i32 134, label %24
    i32 132, label %31
    i32 129, label %43
    i32 131, label %52
    i32 128, label %63
    i32 130, label %70
  ]

24:                                               ; preds = %4, %4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ni_set_rtsi_direction(%struct.comedi_device* %25, i32 %26, i32 %29)
  br label %85

31:                                               ; preds = %4
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ni_get_rtsi_direction(%struct.comedi_device* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %86

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  store i32 2, i32* %5, align 4
  br label %86

43:                                               ; preds = %4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ni_set_master_clock(%struct.comedi_device* %44, i32 %47, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %86

52:                                               ; preds = %4
  %53 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %54 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %59 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %60, i32* %62, align 4
  store i32 3, i32* %5, align 4
  br label %86

63:                                               ; preds = %4
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ni_set_rtsi_routing(%struct.comedi_device* %64, i32 %65, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %86

70:                                               ; preds = %4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ni_get_rtsi_routing(%struct.comedi_device* %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %86

78:                                               ; preds = %70
  %79 = load i32, i32* %13, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  store i32 2, i32* %5, align 4
  br label %86

82:                                               ; preds = %4
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %82, %78, %76, %63, %52, %43, %39, %37
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_set_rtsi_direction(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_get_rtsi_direction(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_set_master_clock(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_set_rtsi_routing(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_get_rtsi_routing(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
