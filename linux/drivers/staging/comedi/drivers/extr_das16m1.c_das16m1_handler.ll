; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice*, %struct.das16m1_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32 }
%struct.das16m1_private = type { i32, i32, i32, i32 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@DAS16M1_AI_FIFO_SZ = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@DAS16M1_CS_OVRUN = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fifo overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @das16m1_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16m1_handler(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.das16m1_private*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 3
  %13 = load %struct.das16m1_private*, %struct.das16m1_private** %12, align 8
  store %struct.das16m1_private* %13, %struct.das16m1_private** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %15, align 8
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %6, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.comedi_async*, %struct.comedi_async** %18, align 8
  store %struct.comedi_async* %19, %struct.comedi_async** %7, align 8
  %20 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 1
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %8, align 8
  %22 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %23 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @comedi_8254_read(i32 %24, i32 1)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %27 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %33 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %44

37:                                               ; preds = %30, %2
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 0, %38
  %40 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %41 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %37, %36
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRIG_COUNT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = icmp sgt i32 %51, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %60, %50
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @DAS16M1_AI_FIFO_SZ, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @DAS16M1_AI_FIFO_SZ, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %80 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @insw(i32 %78, i32 %81, i32 %82)
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %85 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %86 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %84, i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %92 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TRIG_COUNT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %75
  %101 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %102 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = icmp sge i32 %103, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %100
  %113 = load i32, i32* @COMEDI_CB_EOA, align 4
  %114 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %100
  br label %119

119:                                              ; preds = %118, %75
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @DAS16M1_CS_OVRUN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %126 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %127 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %124, %119
  %135 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %137 = call i32 @comedi_handle_events(%struct.comedi_device* %135, %struct.comedi_subdevice* %136)
  ret void
}

declare dso_local i32 @comedi_8254_read(i32, i32) #1

declare dso_local i32 @insw(i32, i32, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
