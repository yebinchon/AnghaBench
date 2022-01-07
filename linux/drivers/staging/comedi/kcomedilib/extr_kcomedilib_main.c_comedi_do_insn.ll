; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_do_insn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_do_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, i32, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i64, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device.1*, %struct.comedi_subdevice*, %struct.comedi_insn.2*, i32*)*, %struct.comedi_device* }
%struct.comedi_device.0 = type opaque
%struct.comedi_insn = type opaque
%struct.comedi_device.1 = type opaque
%struct.comedi_insn.2 = type opaque
%struct.comedi_insn.3 = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%d not usable subdevice\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"bad chanspec\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_insn.3*, i32*)* @comedi_do_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_do_insn(%struct.comedi_device* %0, %struct.comedi_insn.3* %1, i32* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_insn.3*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_insn.3* %1, %struct.comedi_insn.3** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %110

19:                                               ; preds = %3
  %20 = load %struct.comedi_insn.3*, %struct.comedi_insn.3** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_insn.3, %struct.comedi_insn.3* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %110

30:                                               ; preds = %19
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 3
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %32, align 8
  %34 = load %struct.comedi_insn.3*, %struct.comedi_insn.3** %5, align 8
  %35 = getelementptr inbounds %struct.comedi_insn.3, %struct.comedi_insn.3* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i64 %36
  store %struct.comedi_subdevice* %37, %struct.comedi_subdevice** %7, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @COMEDI_SUBD_UNUSED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.comedi_insn.3*, %struct.comedi_insn.3** %5, align 8
  %48 = getelementptr inbounds %struct.comedi_insn.3, %struct.comedi_insn.3* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %110

53:                                               ; preds = %30
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %55 = load %struct.comedi_insn.3*, %struct.comedi_insn.3** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_insn.3, %struct.comedi_insn.3* %55, i32 0, i32 2
  %57 = call i32 @comedi_check_chanlist(%struct.comedi_subdevice* %54, i32 1, i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %110

67:                                               ; preds = %53
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 3
  %70 = load %struct.comedi_device*, %struct.comedi_device** %69, align 8
  %71 = icmp ne %struct.comedi_device* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %110

75:                                               ; preds = %67
  %76 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 3
  store %struct.comedi_device* %76, %struct.comedi_device** %78, align 8
  %79 = load %struct.comedi_insn.3*, %struct.comedi_insn.3** %5, align 8
  %80 = getelementptr inbounds %struct.comedi_insn.3, %struct.comedi_insn.3* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %104 [
    i32 129, label %82
    i32 128, label %93
  ]

82:                                               ; preds = %75
  %83 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %83, i32 0, i32 1
  %85 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)** %84, align 8
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = bitcast %struct.comedi_device* %86 to %struct.comedi_device.0*
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %89 = load %struct.comedi_insn.3*, %struct.comedi_insn.3** %5, align 8
  %90 = bitcast %struct.comedi_insn.3* %89 to %struct.comedi_insn*
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 %85(%struct.comedi_device.0* %87, %struct.comedi_subdevice* %88, %struct.comedi_insn* %90, i32* %91)
  store i32 %92, i32* %8, align 4
  br label %107

93:                                               ; preds = %75
  %94 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %94, i32 0, i32 2
  %96 = load i32 (%struct.comedi_device.1*, %struct.comedi_subdevice*, %struct.comedi_insn.2*, i32*)*, i32 (%struct.comedi_device.1*, %struct.comedi_subdevice*, %struct.comedi_insn.2*, i32*)** %95, align 8
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = bitcast %struct.comedi_device* %97 to %struct.comedi_device.1*
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %100 = load %struct.comedi_insn.3*, %struct.comedi_insn.3** %5, align 8
  %101 = bitcast %struct.comedi_insn.3* %100 to %struct.comedi_insn.2*
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 %96(%struct.comedi_device.1* %98, %struct.comedi_subdevice* %99, %struct.comedi_insn.2* %101, i32* %102)
  store i32 %103, i32* %8, align 4
  br label %107

104:                                              ; preds = %75
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %93, %82
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i32 0, i32 3
  store %struct.comedi_device* null, %struct.comedi_device** %109, align 8
  br label %110

110:                                              ; preds = %107, %72, %60, %43, %27, %16
  %111 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @comedi_check_chanlist(%struct.comedi_subdevice*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
