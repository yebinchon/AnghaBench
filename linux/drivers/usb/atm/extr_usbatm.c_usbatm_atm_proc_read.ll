; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.c_usbatm_atm_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.c_usbatm_atm_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32, %struct.TYPE_4__, i32, %struct.usbatm_data* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.usbatm_data = type { i8*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"MAC: %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"AAL5: tx %d ( %d err ), rx %d ( %d err, %d drop )\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Disconnected\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Line up\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Line down\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Line state unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i32*, i8*)* @usbatm_atm_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbatm_atm_proc_read(%struct.atm_dev* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usbatm_data*, align 8
  %9 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %11 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %10, i32 0, i32 3
  %12 = load %struct.usbatm_data*, %struct.usbatm_data** %11, align 8
  store %struct.usbatm_data* %12, %struct.usbatm_data** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  %16 = icmp ne %struct.usbatm_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %98

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  %27 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %4, align 4
  br label %98

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %37 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %4, align 4
  br label %98

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %47 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = call i32 @atomic_read(i32* %49)
  %51 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %52 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = call i32 @atomic_read(i32* %54)
  %56 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %57 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = call i32 @atomic_read(i32* %59)
  %61 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %62 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = call i32 @atomic_read(i32* %64)
  %66 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %67 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @atomic_read(i32* %69)
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %55, i32 %60, i32 %65, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %98

72:                                               ; preds = %40
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %9, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  %78 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %83, i32* %4, align 4
  br label %98

84:                                               ; preds = %76
  %85 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %86 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %94 [
    i32 129, label %88
    i32 128, label %91
  ]

88:                                               ; preds = %84
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %90, i32* %4, align 4
  br label %98

91:                                               ; preds = %84
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %93, i32* %4, align 4
  br label %98

94:                                               ; preds = %84
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %94, %91, %88, %81, %44, %34, %24, %17
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
