; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_scsi_set_sense_field_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_scsi_set_sense_field_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_set_sense_field_pointer(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 127
  %18 = icmp eq i32 %17, 114
  br i1 %18, label %19, label %78

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 7
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, 8
  %26 = call i64 @scsi_sense_desc_find(i32* %23, i32 %25, i32 2)
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %12, align 8
  br label %41

41:                                               ; preds = %31, %19
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 8
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %120

49:                                               ; preds = %41
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 2, i32* %51, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 6, i32* %53, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 128, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, 64
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %49
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = or i32 8, %67
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = call i32 @put_unaligned_be16(i32 %74, i32* %76)
  br label %119

78:                                               ; preds = %5
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 127
  %83 = icmp eq i32 %82, 112
  br i1 %83, label %84, label %118

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 7
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 18
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  store i32 18, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 15
  store i32 128, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 15
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, 64
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 8
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = or i32 8, %107
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 15
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %9, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 16
  %117 = call i32 @put_unaligned_be16(i32 %114, i32* %116)
  br label %118

118:                                              ; preds = %113, %78
  br label %119

119:                                              ; preds = %118, %73
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %46
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @scsi_sense_desc_find(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
