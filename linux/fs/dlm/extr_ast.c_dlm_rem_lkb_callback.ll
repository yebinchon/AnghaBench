; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_rem_lkb_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_ast.c_dlm_rem_lkb_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i8*, %struct.dlm_callback, i8*, %struct.dlm_callback, i32, %struct.dlm_callback* }
%struct.dlm_callback = type { i32, i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@DLM_CALLBACKS_SIZE = common dso_local global i32 0, align 4
@DLM_CB_BAST = common dso_local global i32 0, align 4
@DLM_CB_SKIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"skip %x bast %llu mode %d for cast %llu mode %d\00", align 1
@DLM_CB_CAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_rem_lkb_callback(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, %struct.dlm_callback* %2, i32* %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_lkb*, align 8
  %7 = alloca %struct.dlm_callback*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %6, align 8
  store %struct.dlm_callback* %2, %struct.dlm_callback** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %13 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %12, i32 0, i32 5
  %14 = load %struct.dlm_callback*, %struct.dlm_callback** %13, align 8
  %15 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %14, i64 0
  %16 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  br label %157

22:                                               ; preds = %4
  %23 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %25 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %24, i32 0, i32 5
  %26 = load %struct.dlm_callback*, %struct.dlm_callback** %25, align 8
  %27 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %26, i64 0
  %28 = call i32 @memcpy(%struct.dlm_callback* %23, %struct.dlm_callback* %27, i32 16)
  %29 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %29, i32 0, i32 5
  %31 = load %struct.dlm_callback*, %struct.dlm_callback** %30, align 8
  %32 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %31, i64 0
  %33 = call i32 @memset(%struct.dlm_callback* %32, i32 0, i32 16)
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %74, %22
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @DLM_CALLBACKS_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %40 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %39, i32 0, i32 5
  %41 = load %struct.dlm_callback*, %struct.dlm_callback** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %41, i64 %43
  %45 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %77

49:                                               ; preds = %38
  %50 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %51 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %50, i32 0, i32 5
  %52 = load %struct.dlm_callback*, %struct.dlm_callback** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %52, i64 %55
  %57 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %58 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %57, i32 0, i32 5
  %59 = load %struct.dlm_callback*, %struct.dlm_callback** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %59, i64 %61
  %63 = call i32 @memcpy(%struct.dlm_callback* %56, %struct.dlm_callback* %62, i32 16)
  %64 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %65 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %64, i32 0, i32 5
  %66 = load %struct.dlm_callback*, %struct.dlm_callback** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %66, i64 %68
  %70 = call i32 @memset(%struct.dlm_callback* %69, i32 0, i32 16)
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %49
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %34

77:                                               ; preds = %48, %34
  %78 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %79 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DLM_CB_BAST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %77
  %85 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %86 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %126

90:                                               ; preds = %84
  %91 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %92 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %95 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @dlm_modes_compat(i32 %93, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %90
  %101 = load i32, i32* @DLM_CB_SKIP, align 4
  %102 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %103 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %107 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %108 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %111 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %114 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %117 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %121 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @log_debug(%struct.dlm_ls* %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %109, i64 %112, i32 %115, i64 %119, i32 %123)
  store i32 0, i32* %10, align 4
  br label %157

125:                                              ; preds = %90
  br label %126

126:                                              ; preds = %125, %84, %77
  %127 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %128 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @DLM_CB_CAST, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %135 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %134, i32 0, i32 3
  %136 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %137 = call i32 @memcpy(%struct.dlm_callback* %135, %struct.dlm_callback* %136, i32 16)
  %138 = call i8* (...) @ktime_get()
  %139 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %140 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %133, %126
  %142 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %143 = getelementptr inbounds %struct.dlm_callback, %struct.dlm_callback* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @DLM_CB_BAST, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %150 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %149, i32 0, i32 1
  %151 = load %struct.dlm_callback*, %struct.dlm_callback** %7, align 8
  %152 = call i32 @memcpy(%struct.dlm_callback* %150, %struct.dlm_callback* %151, i32 16)
  %153 = call i8* (...) @ktime_get()
  %154 = load %struct.dlm_lkb*, %struct.dlm_lkb** %6, align 8
  %155 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %148, %141
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %156, %100, %19
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local i32 @memcpy(%struct.dlm_callback*, %struct.dlm_callback*, i32) #1

declare dso_local i32 @memset(%struct.dlm_callback*, i32, i32) #1

declare dso_local i64 @dlm_modes_compat(i32, i32) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i64, i32, i64, i32) #1

declare dso_local i8* @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
