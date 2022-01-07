; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcs_osdep1_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcs_osdep1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@pdcs_osid = common dso_local global i64 0, align 8
@OS_ID_LINUX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@PDCS_ADDR_OSD1 = common dso_local global i32 0, align 4
@PDC_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @pdcs_osdep1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pdcs_osdep1_write(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x i32], align 16
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %12 = call i32 @capable(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* @EACCES, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %5, align 8
  br label %59

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %17
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %59

26:                                               ; preds = %20
  %27 = load i64, i64* @pdcs_osid, align 8
  %28 = load i64, i64* @OS_ID_LINUX, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i64, i64* @EPERM, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %59

36:                                               ; preds = %26
  %37 = load i64, i64* %9, align 8
  %38 = icmp ugt i64 %37, 16
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @EMSGSIZE, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %59

42:                                               ; preds = %36
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %44 = call i32 @memset(i32* %43, i32 0, i32 16)
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @memcpy(i32* %45, i8* %46, i64 %47)
  %49 = load i32, i32* @PDCS_ADDR_OSD1, align 4
  %50 = bitcast [16 x i32]* %10 to i32**
  %51 = call i64 @pdc_stable_write(i32 %49, i32** %50, i32 64)
  %52 = load i64, i64* @PDC_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i64, i64* @EIO, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %5, align 8
  br label %59

57:                                               ; preds = %42
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %54, %39, %33, %23, %14
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @pdc_stable_write(i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
