; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.comedi_subdevice*, i64, i32, i64, %struct.pcl816_board* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pcl816_board = type { i32, i32 }
%struct.comedi_devconfig = type { i32* }
%struct.pcl816_private = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PCL816_TIMER_BASE = common dso_local global i64 0, align 8
@I8254_OSC_BASE_10MHZ = common dso_local global i32 0, align 4
@I8254_IO8 = common dso_local global i32 0, align 4
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@SDF_DIFF = common dso_local global i32 0, align 4
@range_pcl816 = common dso_local global i32 0, align 4
@pcl816_ai_insn_read = common dso_local global i32 0, align 4
@pcl816_ai_cmdtest = common dso_local global i32 0, align 4
@pcl816_ai_cmd = common dso_local global i32 0, align 4
@pcl816_ai_poll = common dso_local global i32 0, align 4
@pcl816_ai_cancel = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i32 0, align 4
@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@pcl816_di_insn_bits = common dso_local global i32 0, align 4
@COMEDI_SUBD_DO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@pcl816_do_insn_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcl816_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.pcl816_board*, align 8
  %7 = alloca %struct.pcl816_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 5
  %12 = load %struct.pcl816_board*, %struct.pcl816_board** %11, align 8
  store %struct.pcl816_board* %12, %struct.pcl816_board** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = call %struct.pcl816_private* @comedi_alloc_devpriv(%struct.comedi_device* %13, i32 4)
  store %struct.pcl816_private* %14, %struct.pcl816_private** %7, align 8
  %15 = load %struct.pcl816_private*, %struct.pcl816_private** %7, align 8
  %16 = icmp ne %struct.pcl816_private* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %163

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @comedi_request_region(%struct.comedi_device* %21, i32 %26, i32 16)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %163

32:                                               ; preds = %20
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %35 = call i32 @pcl816_alloc_irq_and_dma(%struct.comedi_device* %33, %struct.comedi_devconfig* %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCL816_TIMER_BASE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @I8254_OSC_BASE_10MHZ, align 4
  %42 = load i32, i32* @I8254_IO8, align 4
  %43 = call i32 @comedi_8254_init(i64 %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %32
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %163

53:                                               ; preds = %32
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %54, i32 4)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %163

60:                                               ; preds = %53
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %62, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i64 0
  store %struct.comedi_subdevice* %64, %struct.comedi_subdevice** %8, align 8
  %65 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @SDF_CMD_READ, align 4
  %69 = load i32, i32* @SDF_DIFF, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 1
  store i32 16, i32* %74, align 4
  %75 = load %struct.pcl816_board*, %struct.pcl816_board** %6, align 8
  %76 = getelementptr inbounds %struct.pcl816_board, %struct.pcl816_board* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 4
  store i32* @range_pcl816, i32** %81, align 8
  %82 = load i32, i32* @pcl816_ai_insn_read, align 4
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 8
  %85 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %60
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 1
  store %struct.comedi_subdevice* %90, %struct.comedi_subdevice** %92, align 8
  %93 = load i32, i32* @SDF_CMD_READ, align 4
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %95 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.pcl816_board*, %struct.pcl816_board** %6, align 8
  %99 = getelementptr inbounds %struct.pcl816_board, %struct.pcl816_board* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @pcl816_ai_cmdtest, align 4
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %105 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @pcl816_ai_cmd, align 4
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @pcl816_ai_poll, align 4
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @pcl816_ai_cancel, align 4
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %89, %60
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %117, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i64 1
  store %struct.comedi_subdevice* %119, %struct.comedi_subdevice** %8, align 8
  %120 = load i32, i32* @COMEDI_SUBD_UNUSED, align 4
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %122 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 8
  %123 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %124, align 8
  %126 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %125, i64 2
  store %struct.comedi_subdevice* %126, %struct.comedi_subdevice** %8, align 8
  %127 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %129 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @SDF_READABLE, align 4
  %131 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %132 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %134 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %133, i32 0, i32 1
  store i32 16, i32* %134, align 4
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %136 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %135, i32 0, i32 2
  store i32 1, i32* %136, align 8
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %138 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %137, i32 0, i32 4
  store i32* @range_digital, i32** %138, align 8
  %139 = load i32, i32* @pcl816_di_insn_bits, align 4
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %141 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %143 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %142, i32 0, i32 0
  %144 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %143, align 8
  %145 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %144, i64 3
  store %struct.comedi_subdevice* %145, %struct.comedi_subdevice** %8, align 8
  %146 = load i32, i32* @COMEDI_SUBD_DO, align 4
  %147 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %148 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @SDF_WRITABLE, align 4
  %150 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %151 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %153 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %152, i32 0, i32 1
  store i32 16, i32* %153, align 4
  %154 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %155 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  %156 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %157 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %156, i32 0, i32 4
  store i32* @range_digital, i32** %157, align 8
  %158 = load i32, i32* @pcl816_do_insn_bits, align 4
  %159 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %160 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %162 = call i32 @pcl816_reset(%struct.comedi_device* %161)
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %115, %58, %50, %30, %17
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.pcl816_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @pcl816_alloc_irq_and_dma(%struct.comedi_device*, %struct.comedi_devconfig*) #1

declare dso_local i32 @comedi_8254_init(i64, i32, i32, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @pcl816_reset(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
