; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"/dev/comedi\00", align 1
@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comedi_device* @comedi_open(i8* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.comedi_device* null, %struct.comedi_device** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strncmp(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.comedi_device* null, %struct.comedi_device** %2, align 8
  br label %50

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 11
  %14 = call i64 @kstrtouint(i8* %13, i32 0, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.comedi_device* null, %struct.comedi_device** %2, align 8
  br label %50

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store %struct.comedi_device* null, %struct.comedi_device** %2, align 8
  br label %50

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.comedi_device* @comedi_dev_get_from_minor(i32 %23)
  store %struct.comedi_device* %24, %struct.comedi_device** %4, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = icmp ne %struct.comedi_device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.comedi_device* null, %struct.comedi_device** %2, align 8
  br label %50

28:                                               ; preds = %22
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = call i32 @down_read(i32* %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  store %struct.comedi_device* %37, %struct.comedi_device** %5, align 8
  br label %39

38:                                               ; preds = %28
  store %struct.comedi_device* null, %struct.comedi_device** %5, align 8
  br label %39

39:                                               ; preds = %38, %36
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = call i32 @up_read(i32* %41)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %44 = icmp ne %struct.comedi_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = call i32 @comedi_dev_put(%struct.comedi_device* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  store %struct.comedi_device* %49, %struct.comedi_device** %2, align 8
  br label %50

50:                                               ; preds = %48, %27, %21, %16, %10
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  ret %struct.comedi_device* %51
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local %struct.comedi_device* @comedi_dev_get_from_minor(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @comedi_dev_put(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
