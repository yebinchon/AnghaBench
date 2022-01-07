; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_scsi_set_sense_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_scsi_set_sense_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_set_sense_information(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 127
  %14 = icmp eq i32 %13, 114
  br i1 %14, label %15, label %58

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 7
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 8
  %22 = call i64 @scsi_sense_desc_find(i32* %19, i32 %21, i32 0)
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 12
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 7
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %8, align 8
  br label %37

37:                                               ; preds = %27, %15
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 12
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %85

45:                                               ; preds = %37
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 10, i32* %49, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 128, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = call i32 @put_unaligned_be64(i32 %54, i32* %56)
  br label %84

58:                                               ; preds = %3
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 127
  %63 = icmp eq i32 %62, 112
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ule i64 %66, 4294967295
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, 128
  store i32 %72, i32* %70, align 4
  br label %78

73:                                               ; preds = %64
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 127
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = call i32 @put_unaligned_be32(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %78, %58
  br label %84

84:                                               ; preds = %83, %45
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %42
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @scsi_sense_desc_find(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
