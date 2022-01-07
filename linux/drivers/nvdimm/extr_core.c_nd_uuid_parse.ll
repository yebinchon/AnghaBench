; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_nd_uuid_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_core.c_nd_uuid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"pos: %d buf[%zd]: %c buf[%zd]: %c\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i8*, i64)* @nd_uuid_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_uuid_parse(%struct.device* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %78, %4
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %81

17:                                               ; preds = %14
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @isxdigit(i8 signext %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @isxdigit(i8 signext %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8*, i8** %8, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %37, i8 signext %40, i32 %47, i8 signext %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %85

54:                                               ; preds = %23
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @hex_to_bin(i8 signext %57)
  %59 = shl i32 %58, 4
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @hex_to_bin(i8 signext %62)
  %64 = or i32 %59, %63
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @is_uuid_sep(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %54
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %74, %54
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %14

81:                                               ; preds = %14
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %84 = call i32 @memcpy(i32* %82, i32* %83, i32 64)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %29
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8 signext, i32, i8 signext) #1

declare dso_local i32 @hex_to_bin(i8 signext) #1

declare dso_local i64 @is_uuid_sep(i8 signext) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
