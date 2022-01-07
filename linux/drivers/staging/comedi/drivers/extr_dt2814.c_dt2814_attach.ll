; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2814.c_dt2814_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2814.c_dt2814_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, i64, %struct.comedi_subdevice*, i32, i64, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.comedi_devconfig = type { i64* }
%struct.dt2814_private = type { i32 }

@DT2814_CSR = common dso_local global i64 0, align 8
@DT2814_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"reset error (fatal)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DT2814_DATA = common dso_local global i64 0, align 8
@dt2814_interrupt = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@dt2814_ai_insn_read = common dso_local global i32 0, align 4
@range_unknown = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@dt2814_ai_cmd = common dso_local global i32 0, align 4
@dt2814_ai_cmdtest = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dt2814_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2814_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.dt2814_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @comedi_request_region(%struct.comedi_device* %10, i64 %15, i32 2)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %146

21:                                               ; preds = %2
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DT2814_CSR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i32 0, i64 %26)
  %28 = call i32 @usleep_range(i32 100, i32 200)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DT2814_CSR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inb(i64 %33)
  %35 = load i32, i32* @DT2814_ERR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %21
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %146

45:                                               ; preds = %21
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DT2814_DATA, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @inb(i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DT2814_DATA, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @inb(i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %59 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %45
  %65 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %66 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @dt2814_interrupt, align 4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = call i32 @request_irq(i64 %69, i32 %70, i32 0, i32 %73, %struct.comedi_device* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %80 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %78, %64
  br label %87

87:                                               ; preds = %86, %45
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %88, i32 1)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %146

94:                                               ; preds = %87
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = call %struct.dt2814_private* @comedi_alloc_devpriv(%struct.comedi_device* %95, i32 4)
  store %struct.dt2814_private* %96, %struct.dt2814_private** %6, align 8
  %97 = load %struct.dt2814_private*, %struct.dt2814_private** %6, align 8
  %98 = icmp ne %struct.dt2814_private* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %146

102:                                              ; preds = %94
  %103 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 2
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %104, align 8
  %106 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %105, i64 0
  store %struct.comedi_subdevice* %106, %struct.comedi_subdevice** %7, align 8
  %107 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @SDF_READABLE, align 4
  %111 = load i32, i32* @SDF_GROUND, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %116 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i32 0, i32 1
  store i32 16, i32* %116, align 4
  %117 = load i32, i32* @dt2814_ai_insn_read, align 4
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 8
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 2
  store i32 4095, i32* %121, align 8
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %122, i32 0, i32 6
  store i32* @range_unknown, i32** %123, align 8
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %102
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %130 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 0
  store %struct.comedi_subdevice* %129, %struct.comedi_subdevice** %131, align 8
  %132 = load i32, i32* @SDF_CMD_READ, align 4
  %133 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %134 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  %139 = load i32, i32* @dt2814_ai_cmd, align 4
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %141 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @dt2814_ai_cmdtest, align 4
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %128, %102
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %99, %92, %38, %19
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i64, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local %struct.dt2814_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
