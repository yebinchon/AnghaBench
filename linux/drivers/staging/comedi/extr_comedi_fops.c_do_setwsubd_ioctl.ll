; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_do_setwsubd_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_do_setwsubd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_4__*, %struct.file* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { %struct.comedi_file* }
%struct.comedi_file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SDF_CMD_WRITE = common dso_local global i32 0, align 4
@CMDF_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64, %struct.file*)* @do_setwsubd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_setwsubd_ioctl(%struct.comedi_device* %0, i64 %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.comedi_file*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %11 = load %struct.file*, %struct.file** %7, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.comedi_file*, %struct.comedi_file** %12, align 8
  store %struct.comedi_file* %13, %struct.comedi_file** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 1
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i64 %29
  store %struct.comedi_subdevice* %30, %struct.comedi_subdevice** %10, align 8
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = call %struct.comedi_subdevice* @comedi_file_write_subdevice(%struct.file* %31)
  store %struct.comedi_subdevice* %32, %struct.comedi_subdevice** %9, align 8
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %35 = icmp eq %struct.comedi_subdevice* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %80

37:                                               ; preds = %25
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SDF_CMD_WRITE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %80

47:                                               ; preds = %37
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %49 = icmp ne %struct.comedi_subdevice* %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 2
  %53 = load %struct.file*, %struct.file** %52, align 8
  %54 = load %struct.file*, %struct.file** %7, align 8
  %55 = icmp eq %struct.file* %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CMDF_WRITE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %80

74:                                               ; preds = %61, %56, %50, %47
  %75 = load %struct.comedi_file*, %struct.comedi_file** %8, align 8
  %76 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %79 = call i32 @WRITE_ONCE(i32 %77, %struct.comedi_subdevice* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %74, %71, %44, %36, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.comedi_subdevice* @comedi_file_write_subdevice(%struct.file*) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
