; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcm3724.c_pcm3724_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcm3724.c_pcm3724_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_devconfig = type { i32* }
%struct.priv_pcm3724 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I8255_SIZE = common dso_local global i32 0, align 4
@subdev_3724_insn_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcm3724_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm3724_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.priv_pcm3724*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.priv_pcm3724* @comedi_alloc_devpriv(%struct.comedi_device* %10, i32 4)
  store %struct.priv_pcm3724* %11, %struct.priv_pcm3724** %6, align 8
  %12 = load %struct.priv_pcm3724*, %struct.priv_pcm3724** %6, align 8
  %13 = icmp ne %struct.priv_pcm3724* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @comedi_request_region(%struct.comedi_device* %18, i32 %23, i32 16)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %17
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %30, i32 2)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %64, %36
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 1
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i64 %48
  store %struct.comedi_subdevice* %49, %struct.comedi_subdevice** %7, align 8
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @I8255_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @subdev_8255_init(%struct.comedi_device* %50, %struct.comedi_subdevice* %51, i32* null, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %68

60:                                               ; preds = %43
  %61 = load i32, i32* @subdev_3724_insn_config, align 4
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %37

67:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %58, %34, %27, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.priv_pcm3724* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
