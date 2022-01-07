; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_handle_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_handle_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pci1710_private* }
%struct.pci1710_private = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }

@PCI171X_STATUS_REG = common dso_local global i64 0, align 8
@PCI171X_STATUS_FH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"A/D FIFO not half full!\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PCI171X_STATUS_FF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"A/D FIFO Full status (Fatal Error!)\0A\00", align 1
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@PCI171X_CLRINT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci1710_handle_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci1710_handle_fifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci1710_private*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 2
  %14 = load %struct.pci1710_private*, %struct.pci1710_private** %13, align 8
  store %struct.pci1710_private* %14, %struct.pci1710_private** %5, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %6, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 3
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %7, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI171X_STATUS_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @inw(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PCI171X_STATUS_FH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %2
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %36 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %117

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @PCI171X_STATUS_FF, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %51 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %117

55:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %107, %55
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.pci1710_private*, %struct.pci1710_private** %5, align 8
  %59 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %56
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 0
  %67 = load %struct.comedi_async*, %struct.comedi_async** %66, align 8
  %68 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pci1710_ai_read_sample(%struct.comedi_device* %63, %struct.comedi_subdevice* %64, i32 %69, i32* %10)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %62
  %74 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 0
  %77 = load %struct.comedi_async*, %struct.comedi_async** %76, align 8
  %78 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %74
  store i32 %80, i32* %78, align 8
  br label %110

81:                                               ; preds = %62
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %83 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %82, i32* %10, i32 1)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %110

86:                                               ; preds = %81
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TRIG_COUNT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load i32, i32* @COMEDI_CB_EOA, align 4
  %102 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %103 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %110

106:                                              ; preds = %92, %86
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %56

110:                                              ; preds = %100, %85, %73, %56
  %111 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PCI171X_CLRINT_REG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outb(i32 0, i64 %115)
  br label %117

117:                                              ; preds = %110, %45, %30
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pci1710_ai_read_sample(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
