; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb3_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cifs_tcon = type { i32 }

@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_ZERO_RANGE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.cifs_tcon*, i32, i32, i32)* @smb3_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smb3_fallocate(%struct.file* %0, %struct.cifs_tcon* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @smb3_punch_hole(%struct.file* %17, %struct.cifs_tcon* %18, i32 %19, i32 %20)
  store i64 %21, i64* %6, align 8
  br label %69

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @FALLOC_FL_ZERO_RANGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.file*, %struct.file** %7, align 8
  %34 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @smb3_zero_range(%struct.file* %33, %struct.cifs_tcon* %34, i32 %35, i32 %36, i32 1)
  store i64 %37, i64* %6, align 8
  br label %69

38:                                               ; preds = %27
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @smb3_zero_range(%struct.file* %39, %struct.cifs_tcon* %40, i32 %41, i32 %42, i32 0)
  store i64 %43, i64* %6, align 8
  br label %69

44:                                               ; preds = %22
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.file*, %struct.file** %7, align 8
  %50 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @smb3_simple_falloc(%struct.file* %49, %struct.cifs_tcon* %50, i32 %51, i32 %52, i32 1)
  store i64 %53, i64* %6, align 8
  br label %69

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @smb3_simple_falloc(%struct.file* %58, %struct.cifs_tcon* %59, i32 %60, i32 %61, i32 0)
  store i64 %62, i64* %6, align 8
  br label %69

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* @EOPNOTSUPP, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %66, %57, %48, %38, %32, %16
  %70 = load i64, i64* %6, align 8
  ret i64 %70
}

declare dso_local i64 @smb3_punch_hole(%struct.file*, %struct.cifs_tcon*, i32, i32) #1

declare dso_local i64 @smb3_zero_range(%struct.file*, %struct.cifs_tcon*, i32, i32, i32) #1

declare dso_local i64 @smb3_simple_falloc(%struct.file*, %struct.cifs_tcon*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
