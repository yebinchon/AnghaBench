; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.comedi_file* }
%struct.comedi_file = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i32, i32, %struct.TYPE_2__*, i32 (%struct.comedi_device*)*, i64, %struct.comedi_subdevice* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { %struct.file*, %struct.file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @comedi_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.comedi_file*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.comedi_file*, %struct.comedi_file** %10, align 8
  store %struct.comedi_file* %11, %struct.comedi_file** %5, align 8
  %12 = load %struct.comedi_file*, %struct.comedi_file** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %12, i32 0, i32 0
  %14 = load %struct.comedi_device*, %struct.comedi_device** %13, align 8
  store %struct.comedi_device* %14, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 6
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %19, align 8
  %21 = icmp ne %struct.comedi_subdevice* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %55, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 6
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i64 %34
  store %struct.comedi_subdevice* %35, %struct.comedi_subdevice** %7, align 8
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 1
  %38 = load %struct.file*, %struct.file** %37, align 8
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = icmp eq %struct.file* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %44 = call i32 @do_cancel(%struct.comedi_device* %42, %struct.comedi_subdevice* %43)
  br label %45

45:                                               ; preds = %41, %29
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 0
  %48 = load %struct.file*, %struct.file** %47, align 8
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = icmp eq %struct.file* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  store %struct.file* null, %struct.file** %53, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %23

58:                                               ; preds = %23
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 4
  %72 = load i32 (%struct.comedi_device*)*, i32 (%struct.comedi_device*)** %71, align 8
  %73 = icmp ne i32 (%struct.comedi_device*)* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 4
  %77 = load i32 (%struct.comedi_device*)*, i32 (%struct.comedi_device*)** %76, align 8
  %78 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %79 = call i32 %77(%struct.comedi_device* %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @module_put(i32 %85)
  br label %87

87:                                               ; preds = %80, %64, %59
  %88 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = call i32 @comedi_dev_put(%struct.comedi_device* %95)
  %97 = load %struct.comedi_file*, %struct.comedi_file** %5, align 8
  %98 = call i32 @kfree(%struct.comedi_file* %97)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @comedi_dev_put(%struct.comedi_device*) #1

declare dso_local i32 @kfree(%struct.comedi_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
