; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32, i64*, %struct.fsg_lun* }
%struct.fsg_lun = type { i64*, i64, i64 }
%struct.fsg_buffhd = type { i64 }

@TYPE_NO_LUN = common dso_local global i32 0, align 4
@TYPE_ROM = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*, %struct.fsg_buffhd*)* @do_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_inquiry(%struct.fsg_common* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca %struct.fsg_lun*, align 8
  %7 = alloca i32*, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %4, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %5, align 8
  %8 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %9 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %8, i32 0, i32 2
  %10 = load %struct.fsg_lun*, %struct.fsg_lun** %9, align 8
  store %struct.fsg_lun* %10, %struct.fsg_lun** %6, align 8
  %11 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %12 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %16 = icmp ne %struct.fsg_lun* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %19 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 36)
  %22 = load i32, i32* @TYPE_NO_LUN, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  store i32 31, i32* %26, align 4
  store i32 36, i32* %3, align 4
  br label %81

27:                                               ; preds = %2
  %28 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %29 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @TYPE_ROM, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @TYPE_DISK, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %41 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 128, i32 0
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 2, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 2, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 31, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 7
  store i32 0, i32* %59, align 4
  %60 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %61 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %36
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  %70 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = call i32 @memcpy(i32* %68, i64* %71, i32 8)
  br label %80

73:                                               ; preds = %36
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %77 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = call i32 @memcpy(i32* %75, i64* %78, i32 8)
  br label %80

80:                                               ; preds = %73, %66
  store i32 36, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
