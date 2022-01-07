; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.c_usbatm_extract_cells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.c_usbatm_extract_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbatm_data*, i8*, i32)* @usbatm_extract_cells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbatm_extract_cells(%struct.usbatm_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usbatm_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %12 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %16 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %3
  %21 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %22 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @memcpy(i8* %34, i8* %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @usbatm_extract_one_cell(%struct.usbatm_data* %45, i8* %46)
  %48 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %49 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %63

50:                                               ; preds = %20
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @memcpy(i8* %54, i8* %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %58, %59
  %61 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %62 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %94

63:                                               ; preds = %30
  br label %64

64:                                               ; preds = %63, %3
  br label %65

65:                                               ; preds = %73, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp uge i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @usbatm_extract_one_cell(%struct.usbatm_data* %70, i8* %71)
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %5, align 8
  br label %65

81:                                               ; preds = %65
  %82 = load i32, i32* %6, align 4
  %83 = icmp ugt i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %86 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @memcpy(i8* %87, i8* %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %93 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %50, %84, %81
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usbatm_extract_one_cell(%struct.usbatm_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
