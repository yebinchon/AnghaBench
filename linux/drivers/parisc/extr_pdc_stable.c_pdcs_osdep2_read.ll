; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcs_osdep2_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcs_osdep2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@pdcs_size = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PDCS_ADDR_OSD2 = common dso_local global i64 0, align 8
@PDC_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @pdcs_osdep2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdcs_osdep2_read(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* @pdcs_size, align 4
  %14 = icmp sle i32 %13, 224
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODATA, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %69

21:                                               ; preds = %3
  %22 = load i32, i32* @pdcs_size, align 4
  %23 = sub nsw i32 %22, 224
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %21
  store i16 0, i16* %10, align 2
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i16, i16* %10, align 2
  %33 = zext i16 %32 to i64
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = load i64, i64* @PDCS_ADDR_OSD2, align 8
  %38 = load i16, i16* %10, align 2
  %39 = zext i16 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i64 @pdc_stable_read(i64 %40, i32* %11, i32 4)
  %42 = load i64, i64* @PDC_OK, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %69

50:                                               ; preds = %36
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %50
  %58 = load i16, i16* %10, align 2
  %59 = zext i16 %58 to i32
  %60 = add nsw i32 %59, 4
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %10, align 2
  br label %31

62:                                               ; preds = %31
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %47, %27, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pdc_stable_read(i64, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
