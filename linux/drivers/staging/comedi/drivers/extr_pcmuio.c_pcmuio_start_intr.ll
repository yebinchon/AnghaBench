; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_start_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_start_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmuio_private* }
%struct.pcmuio_private = type { %struct.pcmuio_asic* }
%struct.pcmuio_asic = type { i32, i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32*, i32 }

@PCMUIO_PAGE_POL = common dso_local global i32 0, align 4
@PCMUIO_PAGE_ENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcmuio_start_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmuio_start_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcmuio_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmuio_asic*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.pcmuio_private*, %struct.pcmuio_private** %17, align 8
  store %struct.pcmuio_private* %18, %struct.pcmuio_private** %5, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %20 = call i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.pcmuio_private*, %struct.pcmuio_private** %5, align 8
  %22 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %21, i32 0, i32 0
  %23 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %23, i64 %25
  store %struct.pcmuio_asic* %26, %struct.pcmuio_asic** %7, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.comedi_cmd* %30, %struct.comedi_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %7, align 8
  %32 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %7, align 8
  %34 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %81

39:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %77, %39
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %40
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @CR_CHAN(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @CR_RANGE(i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @CR_AREF(i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %66, %46
  %70 = phi i1 [ true, %46 ], [ %68, %66 ]
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %40

80:                                               ; preds = %40
  br label %81

81:                                               ; preds = %80, %2
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %7, align 8
  %91 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PCMUIO_PAGE_POL, align 4
  %96 = call i32 @pcmuio_write(%struct.comedi_device* %92, i32 %93, i32 %94, i32 %95, i32 0)
  %97 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @PCMUIO_PAGE_ENAB, align 4
  %101 = call i32 @pcmuio_write(%struct.comedi_device* %97, i32 %98, i32 %99, i32 %100, i32 0)
  ret void
}

declare dso_local i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @pcmuio_write(%struct.comedi_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
