; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_start_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_start_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmmio_private* }
%struct.pcmmio_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32*, i32 }

@PCMMIO_PAGE_POL = common dso_local global i32 0, align 4
@PCMMIO_PAGE_ENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcmmio_start_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmmio_start_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pcmmio_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.pcmmio_private*, %struct.pcmmio_private** %15, align 8
  store %struct.pcmmio_private* %16, %struct.pcmmio_private** %5, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.pcmmio_private*, %struct.pcmmio_private** %5, align 8
  %22 = getelementptr inbounds %struct.pcmmio_private, %struct.pcmmio_private* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.pcmmio_private*, %struct.pcmmio_private** %5, align 8
  %24 = getelementptr inbounds %struct.pcmmio_private, %struct.pcmmio_private* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @CR_CHAN(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @CR_RANGE(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @CR_AREF(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %36
  %60 = phi i1 [ true, %36 ], [ %58, %56 ]
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %30

70:                                               ; preds = %30
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 1, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.pcmmio_private*, %struct.pcmmio_private** %5, align 8
  %81 = getelementptr inbounds %struct.pcmmio_private, %struct.pcmmio_private* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PCMMIO_PAGE_POL, align 4
  %85 = call i32 @pcmmio_dio_write(%struct.comedi_device* %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @PCMMIO_PAGE_ENAB, align 4
  %89 = call i32 @pcmmio_dio_write(%struct.comedi_device* %86, i32 %87, i32 %88, i32 0)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @pcmmio_dio_write(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
