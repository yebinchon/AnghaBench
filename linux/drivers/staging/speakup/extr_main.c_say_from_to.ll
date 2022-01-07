; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_from_to.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_from_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vc_data = type { i32 }

@spk_punc_mask = common dso_local global i32 0, align 4
@spk_attr = common dso_local global i32 0, align 4
@spk_old_attr = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@SPACE = common dso_local global i8 0, align 1
@spk_punc_info = common dso_local global %struct.TYPE_2__* null, align 8
@spk_reading_punc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i64, i64, i32)* @say_from_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @say_from_to(%struct.vc_data* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @spk_punc_mask, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @spk_attr, align 4
  store i32 %14, i32* @spk_old_attr, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @get_attributes(%struct.vc_data* %15, i32* %17)
  store i32 %18, i32* @spk_attr, align 4
  br label %19

19:                                               ; preds = %41, %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = call signext i8 @get_char(%struct.vc_data* %24, i32* %26, i32* %11)
  %28 = load i8*, i8** @buf, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 %27, i8* %32, align 1
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %33, 2
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %42

41:                                               ; preds = %23
  br label %19

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %60, %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i8*, i8** @buf, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @SPACE, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %63

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  br label %45

63:                                               ; preds = %58, %45
  %64 = load i8, i8* @SPACE, align 1
  %65 = load i8*, i8** @buf, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 %64, i8* %69, align 1
  %70 = load i8*, i8** @buf, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %99

79:                                               ; preds = %63
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spk_punc_info, align 8
  %84 = load i64, i64* @spk_reading_punc, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* @spk_punc_mask, align 4
  br label %88

88:                                               ; preds = %82, %79
  %89 = load i8*, i8** @buf, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @spkup_write(i8* %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* @spk_punc_mask, align 4
  br label %96

96:                                               ; preds = %94, %88
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %77
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @get_attributes(%struct.vc_data*, i32*) #1

declare dso_local signext i8 @get_char(%struct.vc_data*, i32*, i32*) #1

declare dso_local i32 @spkup_write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
