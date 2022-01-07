; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_debug.c_ci_device_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_debug.c_ci_device_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ci_hdrc* }
%struct.ci_hdrc = type { %struct.TYPE_2__*, %struct.usb_gadget }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.usb_gadget = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"speed             = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"max_speed         = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"is_otg            = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"is_a_peripheral   = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"b_hnp_enable      = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"a_hnp_support     = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"a_alt_hnp_support = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"name              = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"gadget function   = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"gadget max speed  = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ci_device_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_device_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ci_hdrc*, align 8
  %7 = alloca %struct.usb_gadget*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %9, align 8
  store %struct.ci_hdrc* %10, %struct.ci_hdrc** %6, align 8
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %12 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %11, i32 0, i32 1
  store %struct.usb_gadget* %12, %struct.usb_gadget** %7, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %15 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %20 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %25 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %30 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %35 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %40 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %45 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %44, i32 0, i32 6
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %50 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %49, i32 0, i32 7
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %55 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %54, i32 0, i32 7
  %56 = load i8*, i8** %55, align 8
  br label %58

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i8* [ %56, %53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %57 ]
  %60 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %59)
  %61 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %62 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %91

66:                                               ; preds = %58
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %69 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %76 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  br label %81

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %74
  %82 = phi i8* [ %79, %74 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %80 ]
  %83 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %82)
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = load %struct.ci_hdrc*, %struct.ci_hdrc** %6, align 8
  %86 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %81, %65
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
