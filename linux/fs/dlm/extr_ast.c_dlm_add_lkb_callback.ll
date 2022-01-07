; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_add_lkb_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_add_lkb_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lkb = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.dlm_ls* }
%struct.dlm_ls = type { i32 }

@DLM_CALLBACKS_SIZE = common dso_local global i32 0, align 4
@DLM_CB_BAST = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"skip %x add bast %llu mode %d for bast %llu mode %d\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"no callbacks %x %llu flags %x mode %d sb %d %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_add_lkb_callback(%struct.dlm_lkb* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.dlm_ls*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dlm_lkb* %0, %struct.dlm_lkb** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %19 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %21, align 8
  store %struct.dlm_ls* %22, %struct.dlm_ls** %13, align 8
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %142, %6
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* @DLM_CALLBACKS_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %145

27:                                               ; preds = %23
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %29 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %142

38:                                               ; preds = %27
  %39 = load i32, i32* %16, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DLM_CB_BAST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %41
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %48 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DLM_CB_BAST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %46
  %60 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %61 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %14, align 8
  %69 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %70 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %59
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @DLM_LOCK_PR, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85, %59
  %90 = load %struct.dlm_ls*, %struct.dlm_ls** %13, align 8
  %91 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %92 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i64, i64* %14, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @log_debug(%struct.dlm_ls* %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %93, i64 %94, i32 %95, i64 %96, i32 %97)
  store i32 0, i32* %17, align 4
  br label %163

99:                                               ; preds = %85, %81
  br label %100

100:                                              ; preds = %99, %46, %41, %38
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %103 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  store i64 %101, i64* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %111 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %109, i32* %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %119 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %127 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i32 %125, i32* %132, align 8
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, 255
  %135 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %136 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  store i32 %134, i32* %141, align 4
  store i32 0, i32* %17, align 4
  br label %145

142:                                              ; preds = %37
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %23

145:                                              ; preds = %100, %23
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* @DLM_CALLBACKS_SIZE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load %struct.dlm_ls*, %struct.dlm_ls** %13, align 8
  %151 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %152 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @log_error(%struct.dlm_ls* %150, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %153, i64 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %161 = call i32 @dlm_dump_lkb_callbacks(%struct.dlm_lkb* %160)
  store i32 -1, i32* %17, align 4
  br label %163

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %149, %89
  %164 = load i32, i32* %17, align 4
  ret i32 %164
}

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i64, i32, i64, i32) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dlm_dump_lkb_callbacks(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
