; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_get_ramconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_get_ramconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sisusb_get_ramconfig.ram_datarate = internal constant [4 x i8] c"SSDD", align 1
@sisusb_get_ramconfig.ram_dynamictype = internal constant [4 x i8] c"DGDG", align 1
@sisusb_get_ramconfig.busSDR = internal constant [4 x i32] [i32 64, i32 64, i32 128, i32 128], align 16
@sisusb_get_ramconfig.busDDR = internal constant [4 x i32] [i32 32, i32 32, i32 64, i32 64], align 16
@sisusb_get_ramconfig.busDDRA = internal constant [4 x i32] [i32 96, i32 96, i32 192, i32 192], align 16
@SISSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"1 ch/1 r\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"1 ch/2 r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"asymmetric\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"2 channel\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%dMB %s %cDR S%cRAM, bus width %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sisusb_usb_data*)* @sisusb_get_ramconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusb_get_ramconfig(%struct.sisusb_usb_data* %0) #0 {
  %2 = alloca %struct.sisusb_usb_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %2, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %8 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %9 = load i32, i32* @SISSR, align 4
  %10 = call i32 @sisusb_getidxreg(%struct.sisusb_usb_data* %8, i32 %9, i32 20, i32* %3)
  %11 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %12 = load i32, i32* @SISSR, align 4
  %13 = call i32 @sisusb_getidxreg(%struct.sisusb_usb_data* %11, i32 %12, i32 21, i32* %4)
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %15 = load i32, i32* @SISSR, align 4
  %16 = call i32 @sisusb_getidxreg(%struct.sisusb_usb_data* %14, i32 %15, i32 58, i32* %5)
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 240
  %19 = ashr i32 %18, 4
  %20 = shl i32 1, %19
  %21 = mul nsw i32 %20, 1024
  %22 = mul nsw i32 %21, 1024
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %24 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 3
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = ashr i32 %27, 2
  %29 = and i32 %28, 3
  switch i32 %29, label %76 [
    i32 0, label %30
    i32 1, label %42
    i32 2, label %52
    i32 3, label %66
  ]

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 32, i32* %6, align 4
  br label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* @sisusb_get_ramconfig.busSDR, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %34
  br label %76

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %43 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %44 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* @sisusb_get_ramconfig.busSDR, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %76

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %53 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %54 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sdiv i32 %55, 2
  %57 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %58 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* @sisusb_get_ramconfig.busDDRA, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  br label %76

66:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %67 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %68 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* @sisusb_get_ramconfig.busDDR, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %1, %66, %52, %42, %41
  %77 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %78 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %2, align 8
  %82 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 20
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* @sisusb_get_ramconfig.ram_datarate, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* @sisusb_get_ramconfig.ram_dynamictype, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @dev_info(i32* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %84, i8* %85, i8 signext %89, i8 signext %93, i32 %94)
  ret void
}

declare dso_local i32 @sisusb_getidxreg(%struct.sisusb_usb_data*, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
