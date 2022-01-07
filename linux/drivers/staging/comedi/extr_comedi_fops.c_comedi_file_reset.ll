; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_file_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_file_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.comedi_file* }
%struct.comedi_file = type { i32, i32, i32, i32, %struct.comedi_device* }
%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@SDF_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @comedi_file_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comedi_file_reset(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.comedi_file*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.comedi_file*, %struct.comedi_file** %10, align 8
  store %struct.comedi_file* %11, %struct.comedi_file** %3, align 8
  %12 = load %struct.comedi_file*, %struct.comedi_file** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %12, i32 0, i32 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %13, align 8
  store %struct.comedi_device* %14, %struct.comedi_device** %4, align 8
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = call i32 @file_inode(%struct.file* %15)
  %17 = call i32 @iminor(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 3
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %19, align 8
  store %struct.comedi_subdevice* %20, %struct.comedi_subdevice** %6, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 2
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %22, align 8
  store %struct.comedi_subdevice* %23, %struct.comedi_subdevice** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %1
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.comedi_subdevice* @comedi_subdevice_from_minor(%struct.comedi_device* %28, i32 %29)
  store %struct.comedi_subdevice* %30, %struct.comedi_subdevice** %5, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %32 = icmp ne %struct.comedi_subdevice* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SDF_CMD_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %27
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  store %struct.comedi_subdevice* %41, %struct.comedi_subdevice** %6, align 8
  br label %42

42:                                               ; preds = %40, %33
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %44 = icmp ne %struct.comedi_subdevice* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SDF_CMD_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %42
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  store %struct.comedi_subdevice* %53, %struct.comedi_subdevice** %7, align 8
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.comedi_file*, %struct.comedi_file** %3, align 8
  %60 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.comedi_file*, %struct.comedi_file** %3, align 8
  %65 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.comedi_file*, %struct.comedi_file** %3, align 8
  %67 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %70 = call i32 @WRITE_ONCE(i32 %68, %struct.comedi_subdevice* %69)
  %71 = load %struct.comedi_file*, %struct.comedi_file** %3, align 8
  %72 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %75 = call i32 @WRITE_ONCE(i32 %73, %struct.comedi_subdevice* %74)
  ret void
}

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local %struct.comedi_subdevice* @comedi_subdevice_from_minor(%struct.comedi_device*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
