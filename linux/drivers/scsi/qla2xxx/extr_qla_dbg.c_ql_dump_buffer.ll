; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_ql_dump_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_ql_dump_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"%-+5d  0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"----- -----------------------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%04x: \00", align 1
@KERN_CONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ql_dump_buffer(i64 %0, i32* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @ql_mask_match(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %49

16:                                               ; preds = %5
  %17 = load i64, i64* %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 (i64, i32*, i64, i8*, ...) @ql_dbg(i64 %17, i32* %18, i64 %19, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 (i64, i32*, i64, i8*, ...) @ql_dbg(i64 %22, i32* %23, i64 %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %46, %16
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 (i64, i32*, i64, i8*, ...) @ql_dbg(i64 %31, i32* %32, i64 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @KERN_CONT, align 4
  %37 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr i8, i8* %38, i64 %39
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = sub nsw i64 %41, %42
  %44 = call i32 @min(i32 16, i64 %43)
  %45 = call i32 @print_hex_dump(i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 16, i32 1, i8* %40, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %30
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %47, 16
  store i64 %48, i64* %11, align 8
  br label %26

49:                                               ; preds = %15, %26
  ret void
}

declare dso_local i32 @ql_mask_match(i64) #1

declare dso_local i32 @ql_dbg(i64, i32*, i64, i8*, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
