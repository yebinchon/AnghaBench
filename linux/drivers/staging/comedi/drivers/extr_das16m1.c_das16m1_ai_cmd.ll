; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.das16m1_private* }
%struct.das16m1_private = type { i32, i32, i32, i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32, i32 }

@I8254_MODE2 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@DAS16M1_INTR_CTRL_PACER_MASK = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@DAS16M1_INTR_CTRL_PACER_INT = common dso_local global i32 0, align 4
@DAS16M1_INTR_CTRL_PACER_EXT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@DAS16M1_CS_EXT_TRIG = common dso_local global i32 0, align 4
@DAS16M1_CS_REG = common dso_local global i64 0, align 8
@DAS16M1_CLR_INTR_REG = common dso_local global i64 0, align 8
@DAS16M1_INTR_CTRL_INTE = common dso_local global i32 0, align 4
@DAS16M1_INTR_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das16m1_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16m1_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.das16m1_private*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 2
  %11 = load %struct.das16m1_private*, %struct.das16m1_private** %10, align 8
  store %struct.das16m1_private* %11, %struct.das16m1_private** %5, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.comedi_async*, %struct.comedi_async** %13, align 8
  store %struct.comedi_async* %14, %struct.comedi_async** %6, align 8
  %15 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 0
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %7, align 8
  %17 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %18 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %20 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I8254_MODE2, align 4
  %23 = load i32, i32* @I8254_BINARY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @comedi_8254_set_mode(i32 %21, i32 1, i32 %24)
  %26 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %27 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @comedi_8254_write(i32 %28, i32 1, i32 0)
  %30 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %31 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @comedi_8254_read(i32 %32, i32 1)
  %34 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %35 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @das16m1_ai_set_queue(%struct.comedi_device* %36, i32 %39, i32 %42)
  %44 = load i32, i32* @DAS16M1_INTR_CTRL_PACER_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %47 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TRIG_TIMER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %2
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @comedi_8254_update_divisors(i32 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @comedi_8254_pacer_enable(i32 %62, i32 1, i32 2, i32 1)
  %64 = load i32, i32* @DAS16M1_INTR_CTRL_PACER_INT, align 4
  %65 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %66 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %75

69:                                               ; preds = %2
  %70 = load i32, i32* @DAS16M1_INTR_CTRL_PACER_EXT, align 4
  %71 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %72 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %55
  store i32 0, i32* %8, align 4
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TRIG_EXT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TRIG_EXT, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* @DAS16M1_CS_EXT_TRIG, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %81, %75
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DAS16M1_CS_REG, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb(i32 %92, i64 %97)
  %99 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %100 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DAS16M1_CLR_INTR_REG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb(i32 0, i64 %103)
  %105 = load i32, i32* @DAS16M1_INTR_CTRL_INTE, align 4
  %106 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %107 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.das16m1_private*, %struct.das16m1_private** %5, align 8
  %111 = getelementptr inbounds %struct.das16m1_private, %struct.das16m1_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %114 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DAS16M1_INTR_CTRL_REG, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @outb(i32 %112, i64 %117)
  ret i32 0
}

declare dso_local i32 @comedi_8254_set_mode(i32, i32, i32) #1

declare dso_local i32 @comedi_8254_write(i32, i32, i32) #1

declare dso_local i32 @comedi_8254_read(i32, i32) #1

declare dso_local i32 @das16m1_ai_set_queue(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
