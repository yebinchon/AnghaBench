; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_set_printer_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_set_printer_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer_dev = type { %struct.TYPE_3__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32*, i32, %struct.printer_dev* }

@fs_ep_in_desc = common dso_local global i32 0, align 4
@hs_ep_in_desc = common dso_local global i32 0, align 4
@ss_ep_in_desc = common dso_local global i32 0, align 4
@fs_ep_out_desc = common dso_local global i32 0, align 4
@hs_ep_out_desc = common dso_local global i32 0, align 4
@ss_ep_out_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"enable %s --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer_dev*)* @set_printer_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_printer_interface(%struct.printer_dev* %0) #0 {
  %2 = alloca %struct.printer_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.printer_dev* %0, %struct.printer_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %5 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i8* @ep_desc(i32 %6, i32* @fs_ep_in_desc, i32* @hs_ep_in_desc, i32* @ss_ep_in_desc)
  %8 = bitcast i8* %7 to i32*
  %9 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %10 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* %8, i32** %12, align 8
  %13 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %14 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %15 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store %struct.printer_dev* %13, %struct.printer_dev** %17, align 8
  %18 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %19 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @ep_desc(i32 %20, i32* @fs_ep_out_desc, i32* @hs_ep_out_desc, i32* @ss_ep_out_desc)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %24 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* %22, i32** %26, align 8
  %27 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %28 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %29 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store %struct.printer_dev* %27, %struct.printer_dev** %31, align 8
  %32 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %33 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @usb_ep_enable(%struct.TYPE_3__* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %1
  %39 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %40 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %41 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @DBG(%struct.printer_dev* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %64

47:                                               ; preds = %1
  %48 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %49 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @usb_ep_enable(%struct.TYPE_3__* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %56 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %57 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @DBG(%struct.printer_dev* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %64

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %54, %38
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %69 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = call i32 @usb_ep_disable(%struct.TYPE_3__* %70)
  %72 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %73 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = call i32 @usb_ep_disable(%struct.TYPE_3__* %74)
  %76 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %77 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load %struct.printer_dev*, %struct.printer_dev** %2, align 8
  %81 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %67, %64
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @ep_desc(i32, i32*, i32*, i32*) #1

declare dso_local i32 @usb_ep_enable(%struct.TYPE_3__*) #1

declare dso_local i32 @DBG(%struct.printer_dev*, i8*, i32, i32) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
