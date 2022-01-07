; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_check_ranks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_check_ranks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32*, i32, i32, i32, [5 x i32]*)* @sisusb_check_ranks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_check_ranks(%struct.sisusb_usb_data* %0, i32* %1, i32 %2, i32 %3, i32 %4, [5 x i32]* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sisusb_usb_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5 x i32]*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store [5 x i32]* %5, [5 x i32]** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %15, align 4
  br label %20

20:                                               ; preds = %60, %6
  %21 = load i32, i32* %15, align 4
  %22 = icmp sge i32 %21, 1
  br i1 %22, label %23, label %63

23:                                               ; preds = %20
  %24 = load [5 x i32]*, [5 x i32]** %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 %26
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %27, i64 0, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load [5 x i32]*, [5 x i32]** %13, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %30, i64 %32
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %33, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %29, %35
  %37 = load [5 x i32]*, [5 x i32]** %13, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %37, i64 %39
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %40, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %36, %42
  %44 = load i32, i32* %12, align 4
  %45 = sdiv i32 %44, 64
  %46 = add nsw i32 %43, %45
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %46, %47
  %49 = shl i32 1, %48
  store i32 %49, i32* %17, align 4
  %50 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @sisusb_check_rbc(%struct.sisusb_usb_data* %50, i32* %16, i32 %51, i32 2)
  %53 = load i32, i32* %14, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %23
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %7, align 4
  br label %101

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %15, align 4
  br label %20

63:                                               ; preds = %20
  %64 = load [5 x i32]*, [5 x i32]** %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %64, i64 %66
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %67, i64 0, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sdiv i32 %70, 64
  %72 = add nsw i32 %69, %71
  %73 = add nsw i32 %72, 2
  %74 = shl i32 1, %73
  store i32 %74, i32* %17, align 4
  %75 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @sisusb_check_rbc(%struct.sisusb_usb_data* %75, i32* %16, i32 %76, i32 4)
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %7, align 4
  br label %101

84:                                               ; preds = %63
  %85 = load i32, i32* %12, align 4
  %86 = sdiv i32 %85, 64
  %87 = add nsw i32 10, %86
  %88 = shl i32 1, %87
  store i32 %88, i32* %17, align 4
  %89 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @sisusb_check_rbc(%struct.sisusb_usb_data* %89, i32* %16, i32 %90, i32 2)
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %7, align 4
  br label %101

98:                                               ; preds = %84
  %99 = load i32*, i32** %9, align 8
  store i32 1, i32* %99, align 4
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %96, %82, %57
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @sisusb_check_rbc(%struct.sisusb_usb_data*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
