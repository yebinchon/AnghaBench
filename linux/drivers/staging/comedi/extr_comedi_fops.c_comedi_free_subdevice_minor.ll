; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_free_subdevice_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_free_subdevice_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i64, i32* }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i64 0, align 8
@COMEDI_NUM_MINORS = common dso_local global i64 0, align 8
@comedi_subdevice_minor_table_lock = common dso_local global i32 0, align 4
@comedi_subdevice_minor_table = common dso_local global %struct.comedi_subdevice** null, align 8
@comedi_class = common dso_local global i32 0, align 4
@COMEDI_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_free_subdevice_minor(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.comedi_subdevice*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %2, align 8
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %5 = icmp ne %struct.comedi_subdevice* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %56

7:                                                ; preds = %1
  %8 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @COMEDI_NUM_BOARD_MINORS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @COMEDI_NUM_MINORS, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %7
  br label %56

20:                                               ; preds = %13
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @COMEDI_NUM_BOARD_MINORS, align 8
  %25 = sub nsw i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = call i32 @mutex_lock(i32* @comedi_subdevice_minor_table_lock)
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %29 = load %struct.comedi_subdevice**, %struct.comedi_subdevice*** @comedi_subdevice_minor_table, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.comedi_subdevice*, %struct.comedi_subdevice** %29, i64 %31
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %32, align 8
  %34 = icmp eq %struct.comedi_subdevice* %28, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.comedi_subdevice**, %struct.comedi_subdevice*** @comedi_subdevice_minor_table, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.comedi_subdevice*, %struct.comedi_subdevice** %36, i64 %38
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %39, align 8
  br label %40

40:                                               ; preds = %35, %20
  %41 = call i32 @mutex_unlock(i32* @comedi_subdevice_minor_table_lock)
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32, i32* @comedi_class, align 4
  %48 = load i32, i32* @COMEDI_MAJOR, align 4
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @MKDEV(i32 %48, i64 %51)
  %53 = call i32 @device_destroy(i32 %47, i32 %52)
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %6, %19, %46, %40
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
