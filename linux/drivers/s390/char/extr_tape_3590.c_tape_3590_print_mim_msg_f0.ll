; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_print_mim_msg_f0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_print_mim_msg_f0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.irb = type { i64 }
%struct.tape_3590_sense = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Data degraded\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Data degraded in partition %i\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Medium degraded\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Medium degraded in partition %i\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Block 0 Error\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Medium Exception 0x%02x\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Reference Media maintenance procedure %i\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Tape media information: exception %s, service %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*, %struct.irb*)* @tape_3590_print_mim_msg_f0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_3590_print_mim_msg_f0(%struct.tape_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.tape_3590_sense*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %8 = load i32, i32* @BUFSIZE, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i32, i32* @BUFSIZE, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call i8* @kmalloc(i32 %11, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %110

20:                                               ; preds = %16
  %21 = load %struct.irb*, %struct.irb** %4, align 8
  %22 = getelementptr inbounds %struct.irb, %struct.irb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.tape_3590_sense*
  store %struct.tape_3590_sense* %24, %struct.tape_3590_sense** %5, align 8
  %25 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %26 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %69 [
    i32 2, label %30
    i32 3, label %34
    i32 4, label %43
    i32 5, label %47
    i32 6, label %56
    i32 7, label %60
  ]

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @BUFSIZE, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %78

34:                                               ; preds = %20
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @BUFSIZE, align 4
  %37 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %38 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %78

43:                                               ; preds = %20
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @BUFSIZE, align 4
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %78

47:                                               ; preds = %20
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @BUFSIZE, align 4
  %50 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %51 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %78

56:                                               ; preds = %20
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @BUFSIZE, align 4
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %78

60:                                               ; preds = %20
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @BUFSIZE, align 4
  %63 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %64 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %78

69:                                               ; preds = %20
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @BUFSIZE, align 4
  %72 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %73 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %70, i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %69, %60, %56, %47, %43, %34, %30
  %79 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %80 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %93 [
    i32 2, label %84
  ]

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @BUFSIZE, align 4
  %87 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %88 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %85, i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  br label %102

93:                                               ; preds = %78
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @BUFSIZE, align 4
  %96 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %97 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %93, %84
  %103 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %104 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i8*, i8** %6, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @dev_warn(i32* %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %107, i8* %108)
  br label %110

110:                                              ; preds = %102, %19
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @kfree(i8* %111)
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @kfree(i8* %113)
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
