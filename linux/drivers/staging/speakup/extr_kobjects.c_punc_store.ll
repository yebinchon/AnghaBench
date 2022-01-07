; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_punc_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_kobjects.c_punc_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.st_var_header = type { i32 }
%struct.punc_var_t = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"p_header is null, attr->attr.name is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"var is null, p_header->var_id is %i\0A\00", align 1
@speakup_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @punc_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @punc_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.st_var_header*, align 8
  %12 = alloca %struct.punc_var_t*, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 99
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %106

25:                                               ; preds = %19
  %26 = load %struct.kobj_attribute*, %struct.kobj_attribute** %7, align 8
  %27 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.st_var_header* @spk_var_header_by_name(i32 %29)
  store %struct.st_var_header* %30, %struct.st_var_header** %11, align 8
  %31 = load %struct.st_var_header*, %struct.st_var_header** %11, align 8
  %32 = icmp ne %struct.st_var_header* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.kobj_attribute*, %struct.kobj_attribute** %7, align 8
  %35 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %106

41:                                               ; preds = %25
  %42 = load %struct.st_var_header*, %struct.st_var_header** %11, align 8
  %43 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.punc_var_t* @spk_get_punc_var(i32 %44)
  store %struct.punc_var_t* %45, %struct.punc_var_t** %12, align 8
  %46 = load %struct.punc_var_t*, %struct.punc_var_t** %12, align 8
  %47 = icmp ne %struct.punc_var_t* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.st_var_header*, %struct.st_var_header** %11, align 8
  %50 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %106

55:                                               ; preds = %41
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %73, %55
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 10
  br label %71

71:                                               ; preds = %63, %60
  %72 = phi i1 [ false, %60 ], [ %70, %63 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  br label %60

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %80)
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %83 = load i8, i8* %82, align 16
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 100
  br i1 %85, label %91, label %86

86:                                               ; preds = %76
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 114
  br i1 %90, label %91, label %96

91:                                               ; preds = %86, %76
  %92 = load %struct.punc_var_t*, %struct.punc_var_t** %12, align 8
  %93 = getelementptr inbounds %struct.punc_var_t, %struct.punc_var_t* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @spk_set_mask_bits(i8* null, i32 %94, i32 3)
  store i32 %95, i32* %10, align 4
  br label %102

96:                                               ; preds = %86
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %98 = load %struct.punc_var_t*, %struct.punc_var_t** %12, align 8
  %99 = getelementptr inbounds %struct.punc_var_t, %struct.punc_var_t* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @spk_set_mask_bits(i8* %97, i32 %100, i32 3)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @speakup_info, i32 0, i32 0), i64 %103)
  %105 = load i64, i64* %9, align 8
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %102, %48, %33, %22
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.st_var_header* @spk_var_header_by_name(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local %struct.punc_var_t* @spk_get_punc_var(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spk_set_mask_bits(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
