; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_atmio.c_ni_atmio_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_atmio.c_ni_atmio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.ni_board_struct* }
%struct.ni_board_struct = type { i32 }
%struct.comedi_devconfig = type { i64* }
%struct.pnp_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ni_irqpin = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ni_E_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @ni_atmio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_atmio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.ni_board_struct*, align 8
  %7 = alloca %struct.pnp_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call i32 @ni_alloc_private(%struct.comedi_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %118

17:                                               ; preds = %2
  %18 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  store %struct.pnp_dev* null, %struct.pnp_dev** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %17
  %32 = call i32 @ni_isapnp_find_board(%struct.pnp_dev** %7)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %118

37:                                               ; preds = %31
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %39 = call i64 @pnp_port_start(%struct.pnp_dev* %38, i32 0)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %41 = call i32 @pnp_irq(%struct.pnp_dev* %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %44 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %43, i32 0, i32 0
  %45 = call i32 @comedi_set_hw_dev(%struct.comedi_device* %42, i32* %44)
  br label %46

46:                                               ; preds = %37, %17
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @comedi_request_region(%struct.comedi_device* %47, i64 %48, i32 32)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %118

54:                                               ; preds = %46
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = call %struct.ni_board_struct* @ni_atmio_probe(%struct.comedi_device* %55)
  store %struct.ni_board_struct* %56, %struct.ni_board_struct** %6, align 8
  %57 = load %struct.ni_board_struct*, %struct.ni_board_struct** %6, align 8
  %58 = icmp ne %struct.ni_board_struct* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %118

62:                                               ; preds = %54
  %63 = load %struct.ni_board_struct*, %struct.ni_board_struct** %6, align 8
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 2
  store %struct.ni_board_struct* %63, %struct.ni_board_struct** %65, align 8
  %66 = load %struct.ni_board_struct*, %struct.ni_board_struct** %6, align 8
  %67 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %62
  %74 = load i32, i32* %10, align 4
  %75 = icmp ugt i32 %74, 15
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** @ni_irqpin, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %76, %73
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %118

86:                                               ; preds = %76
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @ni_E_interrupt, align 4
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %93 = call i32 @request_irq(i32 %87, i32 %88, i32 0, i32 %91, %struct.comedi_device* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %118

99:                                               ; preds = %86
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %62
  %104 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %105 = load i32*, i32** @ni_irqpin, align 8
  %106 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ni_E_init(%struct.comedi_device* %104, i32 %111, i32 0)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %118

117:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %115, %96, %83, %59, %52, %35, %15
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @ni_alloc_private(%struct.comedi_device*) #1

declare dso_local i32 @ni_isapnp_find_board(%struct.pnp_dev**) #1

declare dso_local i64 @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq(%struct.pnp_dev*, i32) #1

declare dso_local i32 @comedi_set_hw_dev(%struct.comedi_device*, i32*) #1

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i64, i32) #1

declare dso_local %struct.ni_board_struct* @ni_atmio_probe(%struct.comedi_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @ni_E_init(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
