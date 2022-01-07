; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_alloc_subdevice_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_alloc_subdevice_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32, %struct.device*, i32, %struct.comedi_device* }
%struct.device = type { i32 }
%struct.comedi_device = type { i32, i32 }

@comedi_subdevice_minor_table_lock = common dso_local global i32 0, align 4
@COMEDI_NUM_SUBDEVICE_MINORS = common dso_local global i32 0, align 4
@comedi_subdevice_minor_table = common dso_local global %struct.comedi_subdevice** null, align 8
@.str = private unnamed_addr constant [46 x i8] c"ran out of minor numbers for subdevice files\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@COMEDI_NUM_BOARD_MINORS = common dso_local global i64 0, align 8
@comedi_class = common dso_local global i32 0, align 4
@COMEDI_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"comedi%i_subd%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_alloc_subdevice_minor(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 3
  %9 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  store %struct.comedi_device* %9, %struct.comedi_device** %4, align 8
  %10 = call i32 @mutex_lock(i32* @comedi_subdevice_minor_table_lock)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @COMEDI_NUM_SUBDEVICE_MINORS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.comedi_subdevice**, %struct.comedi_subdevice*** @comedi_subdevice_minor_table, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.comedi_subdevice*, %struct.comedi_subdevice** %16, i64 %18
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %19, align 8
  %21 = icmp ne %struct.comedi_subdevice* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %24 = load %struct.comedi_subdevice**, %struct.comedi_subdevice*** @comedi_subdevice_minor_table, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.comedi_subdevice*, %struct.comedi_subdevice** %24, i64 %26
  store %struct.comedi_subdevice* %23, %struct.comedi_subdevice** %27, align 8
  br label %32

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %11

32:                                               ; preds = %22, %11
  %33 = call i32 @mutex_unlock(i32* @comedi_subdevice_minor_table_lock)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @COMEDI_NUM_SUBDEVICE_MINORS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %75

44:                                               ; preds = %32
  %45 = load i64, i64* @COMEDI_NUM_BOARD_MINORS, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @comedi_class, align 4
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @COMEDI_MAJOR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @MKDEV(i32 %57, i32 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.device* @device_create(i32 %53, i32 %56, i32 %59, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  store %struct.device* %66, %struct.device** %5, align 8
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @IS_ERR(%struct.device* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %44
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 1
  store %struct.device* %71, %struct.device** %73, align 8
  br label %74

74:                                               ; preds = %70, %44
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %37
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.device* @device_create(i32, i32, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
