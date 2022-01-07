; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcspath_hwpath_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcspath_hwpath_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdcspath_entry = type { i16, i32, %struct.device_path }
%struct.device_path = type { i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u/\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdcspath_entry*, i8*)* @pdcspath_hwpath_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdcspath_hwpath_read(%struct.pdcspath_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pdcspath_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_path*, align 8
  %8 = alloca i16, align 2
  store %struct.pdcspath_entry* %0, %struct.pdcspath_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %4, align 8
  %11 = icmp ne %struct.pdcspath_entry* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %12
  %19 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %4, align 8
  %20 = getelementptr inbounds %struct.pdcspath_entry, %struct.pdcspath_entry* %19, i32 0, i32 1
  %21 = call i32 @read_lock(i32* %20)
  %22 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %4, align 8
  %23 = getelementptr inbounds %struct.pdcspath_entry, %struct.pdcspath_entry* %22, i32 0, i32 2
  store %struct.device_path* %23, %struct.device_path** %7, align 8
  %24 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %4, align 8
  %25 = getelementptr inbounds %struct.pdcspath_entry, %struct.pdcspath_entry* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  store i16 %26, i16* %8, align 2
  %27 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %4, align 8
  %28 = getelementptr inbounds %struct.pdcspath_entry, %struct.pdcspath_entry* %27, i32 0, i32 1
  %29 = call i32 @read_unlock(i32* %28)
  %30 = load i16, i16* %8, align 2
  %31 = icmp ne i16 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %83

35:                                               ; preds = %18
  store i16 0, i16* %8, align 2
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i16, i16* %8, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load %struct.device_path*, %struct.device_path** %7, align 8
  %42 = getelementptr inbounds %struct.device_path, %struct.device_path* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i16, i16* %8, align 2
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 128
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %64

50:                                               ; preds = %40
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.device_path*, %struct.device_path** %7, align 8
  %53 = getelementptr inbounds %struct.device_path, %struct.device_path* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i16, i16* %8, align 2
  %56 = sext i16 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = trunc i32 %58 to i8
  %60 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 zeroext %59)
  %61 = load i8*, i8** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %6, align 8
  br label %64

64:                                               ; preds = %50, %49
  %65 = load i16, i16* %8, align 2
  %66 = add i16 %65, 1
  store i16 %66, i16* %8, align 2
  br label %36

67:                                               ; preds = %36
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.device_path*, %struct.device_path** %7, align 8
  %70 = getelementptr inbounds %struct.device_path, %struct.device_path* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i8
  %73 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %72)
  %74 = load i8*, i8** %6, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %67, %32, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
