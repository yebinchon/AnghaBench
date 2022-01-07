; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_str_to_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_str_to_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c" %x:%x:%x.%x %n\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" %x:%x:%x.* %n\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" %x:%x:*.* %n\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" %x:%x.%x %n\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" %x:%x.* %n\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" %x:*.* %n\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32*)* @str_to_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_slot(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %15, i32* %16, i32* %17, i32* %12)
  switch i32 %18, label %33 [
    i32 3, label %19
    i32 2, label %26
  ]

19:                                               ; preds = %5
  %20 = load i32*, i32** %11, align 8
  store i32 -1, i32* %20, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32* %23, i32* %24, i32* %12)
  br label %33

26:                                               ; preds = %5
  %27 = load i32*, i32** %11, align 8
  store i32 -1, i32* %27, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 -1, i32* %28, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %30, i32* %31, i32* %12)
  br label %33

33:                                               ; preds = %5, %26, %19
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %77

44:                                               ; preds = %36, %33
  %45 = load i32*, i32** %8, align 8
  store i32 0, i32* %45, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %47, i32* %48, i32* %49, i32* %12)
  switch i32 %50, label %63 [
    i32 2, label %51
    i32 1, label %57
  ]

51:                                               ; preds = %44
  %52 = load i32*, i32** %11, align 8
  store i32 -1, i32* %52, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %54, i32* %55, i32* %12)
  br label %63

57:                                               ; preds = %44
  %58 = load i32*, i32** %11, align 8
  store i32 -1, i32* %58, align 4
  %59 = load i32*, i32** %10, align 8
  store i32 -1, i32* %59, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %61, i32* %12)
  br label %63

63:                                               ; preds = %44, %57, %51
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %77

74:                                               ; preds = %66, %63
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %73, %43
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
