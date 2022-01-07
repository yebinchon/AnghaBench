; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_read_buffer_kb_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_read_buffer_kb_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @read_buffer_kb_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_buffer_kb_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_device*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MINOR(i32 %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.comedi_device* @comedi_dev_get_from_minor(i32 %16)
  store %struct.comedi_device* %17, %struct.comedi_device** %9, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %19 = icmp ne %struct.comedi_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.comedi_subdevice* @comedi_read_subdevice(%struct.comedi_device* %27, i32 %28)
  store %struct.comedi_subdevice* %29, %struct.comedi_subdevice** %10, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %31 = icmp ne %struct.comedi_subdevice* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %23
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SDF_CMD_READ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 1024
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %44, %39, %32, %23
  %52 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %56 = call i32 @comedi_dev_put(%struct.comedi_device* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %51, %20
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local %struct.comedi_device* @comedi_dev_get_from_minor(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.comedi_subdevice* @comedi_read_subdevice(%struct.comedi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @comedi_dev_put(%struct.comedi_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
