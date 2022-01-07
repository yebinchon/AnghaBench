; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_handle_fifo_half_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_handle_fifo_half_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci9111_private_data* }
%struct.pci9111_private_data = type { i16*, i32, i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@PCI9111_FIFO_HALF_SIZE = common dso_local global i32 0, align 4
@PCI9111_AI_FIFO_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9111_handle_fifo_half_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9111_handle_fifo_half_full(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci9111_private_data*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %12, align 8
  store %struct.pci9111_private_data* %13, %struct.pci9111_private_data** %5, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %6, align 8
  %18 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %19 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %18, i32 0, i32 0
  %20 = load i16*, i16** %19, align 8
  store i16* %20, i16** %7, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %22 = load i32, i32* @PCI9111_FIFO_HALF_SIZE, align 4
  %23 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI9111_AI_FIFO_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i16*, i16** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @insw(i64 %28, i16* %29, i32 %30)
  %32 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %33 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %38 = load i16*, i16** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %37, i16* %38, i32 %39)
  br label %123

41:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %121, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %122

46:                                               ; preds = %42
  %47 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %48 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %46
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %59 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub i32 %64, %65
  %67 = icmp ugt i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub i32 %69, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %54
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %74 = load i16*, i16** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %74, i64 %76
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %73, i16* %77, i32 %78)
  br label %100

80:                                               ; preds = %46
  %81 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %82 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = zext i32 %83 to i64
  %85 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %86 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub i32 %91, %92
  %94 = icmp ugt i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %80
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sub i32 %96, %97
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %95, %80
  br label %100

100:                                              ; preds = %99, %72
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %107 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %111 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %114 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = zext i32 %115 to i64
  %117 = icmp sge i64 %112, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %100
  %119 = load %struct.pci9111_private_data*, %struct.pci9111_private_data** %5, align 8
  %120 = getelementptr inbounds %struct.pci9111_private_data, %struct.pci9111_private_data* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %100
  br label %42

122:                                              ; preds = %42
  br label %123

123:                                              ; preds = %122, %36
  ret void
}

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @insw(i64, i16*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
