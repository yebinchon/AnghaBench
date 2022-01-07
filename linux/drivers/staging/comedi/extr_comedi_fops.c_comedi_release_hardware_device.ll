; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_release_hardware_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_release_hardware_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.device* }
%struct.device = type { i32 }

@comedi_num_legacy_minors = common dso_local global i32 0, align 4
@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@comedi_board_minor_table_lock = common dso_local global i32 0, align 4
@comedi_board_minor_table = common dso_local global %struct.comedi_device** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_release_hardware_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load i32, i32* @comedi_num_legacy_minors, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = call i32 @mutex_lock(i32* @comedi_board_minor_table_lock)
  %12 = load %struct.comedi_device**, %struct.comedi_device*** @comedi_board_minor_table, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.comedi_device*, %struct.comedi_device** %12, i64 %14
  %16 = load %struct.comedi_device*, %struct.comedi_device** %15, align 8
  store %struct.comedi_device* %16, %struct.comedi_device** %4, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = icmp ne %struct.comedi_device* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = icmp eq %struct.device* %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.comedi_device**, %struct.comedi_device*** @comedi_board_minor_table, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.comedi_device*, %struct.comedi_device** %26, i64 %28
  store %struct.comedi_device* null, %struct.comedi_device** %29, align 8
  %30 = call i32 @mutex_unlock(i32* @comedi_board_minor_table_lock)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = call i32 @comedi_free_board_dev(%struct.comedi_device* %31)
  br label %38

33:                                               ; preds = %19, %10
  %34 = call i32 @mutex_unlock(i32* @comedi_board_minor_table_lock)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %6

38:                                               ; preds = %25, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @comedi_free_board_dev(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
