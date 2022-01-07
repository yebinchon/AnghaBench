; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_bus = type { i32*, i32*, i8* }
%struct.usb_bus = type { i32 }

@mon_dir = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%dt\00", align 1
@mon_fops_text_t = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%du\00", align 1
@mon_fops_text_u = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@mon_fops_stat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mon_text_add(%struct.mon_bus* %0, %struct.usb_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mon_bus*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mon_bus* %0, %struct.mon_bus** %4, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %5, align 8
  %9 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %10 = icmp ne %struct.usb_bus* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %13 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %14, %11 ], [ 0, %15 ]
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** @mon_dir, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %95

21:                                               ; preds = %16
  %22 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %23 = icmp ne %struct.usb_bus* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @snprintf(i8* %25, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %24
  br label %94

34:                                               ; preds = %30
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %36 = load i32*, i32** @mon_dir, align 8
  %37 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %38 = call i8* @debugfs_create_file(i8* %35, i32 384, i32* %36, %struct.mon_bus* %37, i32* @mon_fops_text_t)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %41 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %21
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @snprintf(i8* %43, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 10
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %42
  br label %83

52:                                               ; preds = %48
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %54 = load i32*, i32** @mon_dir, align 8
  %55 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %56 = call i8* @debugfs_create_file(i8* %53, i32 384, i32* %54, %struct.mon_bus* %55, i32* @mon_fops_text_u)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %59 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @snprintf(i8* %60, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 10
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %52
  br label %76

69:                                               ; preds = %65
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %71 = load i32*, i32** @mon_dir, align 8
  %72 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %73 = call i8* @debugfs_create_file(i8* %70, i32 384, i32* %71, %struct.mon_bus* %72, i32* @mon_fops_stat)
  %74 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %75 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  store i32 1, i32* %3, align 4
  br label %95

76:                                               ; preds = %68
  %77 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %78 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @debugfs_remove(i32* %79)
  %81 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %82 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %51
  %84 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %85 = icmp ne %struct.usb_bus* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %88 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @debugfs_remove(i32* %89)
  %91 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %92 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %86, %83
  br label %94

94:                                               ; preds = %93, %33
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %69, %20
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32*, %struct.mon_bus*, i32*) #1

declare dso_local i32 @debugfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
