; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_punc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_punc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.st_var_header = type { i32 }
%struct.punc_var_t = type { i64 }
%struct.st_bits_data = type { i16 }

@.str = private unnamed_addr constant [41 x i8] c"p_header is null, attr->attr.name is %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"var is null, p_header->var_id is %i\0A\00", align 1
@speakup_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@spk_punc_info = common dso_local global i32* null, align 8
@spk_chartab = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @punc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @punc_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.st_var_header*, align 8
  %11 = alloca %struct.punc_var_t*, align 8
  %12 = alloca %struct.st_bits_data*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.kobj_attribute*, %struct.kobj_attribute** %6, align 8
  %17 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.st_var_header* @spk_var_header_by_name(i32 %19)
  store %struct.st_var_header* %20, %struct.st_var_header** %10, align 8
  %21 = load %struct.st_var_header*, %struct.st_var_header** %10, align 8
  %22 = icmp ne %struct.st_var_header* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.kobj_attribute*, %struct.kobj_attribute** %6, align 8
  %25 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %89

31:                                               ; preds = %3
  %32 = load %struct.st_var_header*, %struct.st_var_header** %10, align 8
  %33 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.punc_var_t* @spk_get_punc_var(i32 %34)
  store %struct.punc_var_t* %35, %struct.punc_var_t** %11, align 8
  %36 = load %struct.punc_var_t*, %struct.punc_var_t** %11, align 8
  %37 = icmp ne %struct.punc_var_t* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.st_var_header*, %struct.st_var_header** %10, align 8
  %40 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %89

45:                                               ; preds = %31
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %46)
  %48 = load i32*, i32** @spk_punc_info, align 8
  %49 = load %struct.punc_var_t*, %struct.punc_var_t** %11, align 8
  %50 = getelementptr inbounds %struct.punc_var_t, %struct.punc_var_t* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = bitcast i32* %52 to %struct.st_bits_data*
  store %struct.st_bits_data* %53, %struct.st_bits_data** %12, align 8
  %54 = load %struct.st_bits_data*, %struct.st_bits_data** %12, align 8
  %55 = getelementptr inbounds %struct.st_bits_data, %struct.st_bits_data* %54, i32 0, i32 0
  %56 = load i16, i16* %55, align 2
  store i16 %56, i16* %13, align 2
  store i32 33, i32* %8, align 4
  br label %57

57:                                               ; preds = %77, %45
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 128
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i16*, i16** @spk_chartab, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %61, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* %13, align 2
  %68 = sext i16 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  br label %77

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  store i8 %74, i8* %75, align 1
  br label %77

77:                                               ; preds = %72, %71
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %57

80:                                               ; preds = %57
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %81)
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %80, %38, %23
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.st_var_header* @spk_var_header_by_name(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local %struct.punc_var_t* @spk_get_punc_var(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
