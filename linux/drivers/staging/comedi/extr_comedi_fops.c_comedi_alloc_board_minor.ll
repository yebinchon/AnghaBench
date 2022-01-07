; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_alloc_board_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_alloc_board_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@comedi_board_minor_table_lock = common dso_local global i32 0, align 4
@comedi_num_legacy_minors = common dso_local global i32 0, align 4
@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@comedi_board_minor_table = common dso_local global %struct.comedi_device** null, align 8
@.str = private unnamed_addr constant [49 x i8] c"ran out of minor numbers for board device files\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@comedi_class = common dso_local global i32 0, align 4
@COMEDI_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"comedi%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comedi_device* @comedi_alloc_board_minor(%struct.device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.comedi_device* @kzalloc(i32 12, i32 %7)
  store %struct.comedi_device* %8, %struct.comedi_device** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = icmp ne %struct.comedi_device* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.comedi_device* @ERR_PTR(i32 %13)
  store %struct.comedi_device* %14, %struct.comedi_device** %2, align 8
  br label %92

15:                                               ; preds = %1
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = call i32 @comedi_device_init(%struct.comedi_device* %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @comedi_set_hw_dev(%struct.comedi_device* %18, %struct.device* %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = call i32 @mutex_lock(i32* @comedi_board_minor_table_lock)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = icmp ne %struct.device* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @comedi_num_legacy_minors, align 4
  br label %30

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %50, %30
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.comedi_device**, %struct.comedi_device*** @comedi_board_minor_table, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.comedi_device*, %struct.comedi_device** %37, i64 %39
  %41 = load %struct.comedi_device*, %struct.comedi_device** %40, align 8
  %42 = icmp ne %struct.comedi_device* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = load %struct.comedi_device**, %struct.comedi_device*** @comedi_board_minor_table, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.comedi_device*, %struct.comedi_device** %45, i64 %47
  store %struct.comedi_device* %44, %struct.comedi_device** %48, align 8
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %32

53:                                               ; preds = %43, %32
  %54 = call i32 @mutex_unlock(i32* @comedi_board_minor_table_lock)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = call i32 @comedi_device_cleanup(%struct.comedi_device* %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = call i32 @comedi_dev_put(%struct.comedi_device* %64)
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.comedi_device* @ERR_PTR(i32 %69)
  store %struct.comedi_device* %70, %struct.comedi_device** %2, align 8
  br label %92

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @comedi_class, align 4
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = load i32, i32* @COMEDI_MAJOR, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @MKDEV(i32 %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.device* @device_create(i32 %75, %struct.device* %76, i32 %79, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store %struct.device* %81, %struct.device** %5, align 8
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = call i32 @IS_ERR(%struct.device* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %71
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 @get_device(%struct.device* %86)
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %85, %71
  %91 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  store %struct.comedi_device* %91, %struct.comedi_device** %2, align 8
  br label %92

92:                                               ; preds = %90, %58, %11
  %93 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  ret %struct.comedi_device* %93
}

declare dso_local %struct.comedi_device* @kzalloc(i32, i32) #1

declare dso_local %struct.comedi_device* @ERR_PTR(i32) #1

declare dso_local i32 @comedi_device_init(%struct.comedi_device*) #1

declare dso_local i32 @comedi_set_hw_dev(%struct.comedi_device*, %struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @comedi_device_cleanup(%struct.comedi_device*) #1

declare dso_local i32 @comedi_dev_put(%struct.comedi_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.device* @device_create(i32, %struct.device*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
