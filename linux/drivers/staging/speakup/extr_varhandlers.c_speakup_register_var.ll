; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_speakup_register_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_speakup_register_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_var_header = type { i64, i32, %struct.var_t* }
%struct.var_t = type { i32 }

@speakup_register_var.nothing = internal global [2 x i8] zeroinitializer, align 1
@MAXVARS = common dso_local global i32 0, align 4
@var_ptrs = common dso_local global %struct.st_var_header** null, align 8
@var_headers = common dso_local global %struct.st_var_header* null, align 8
@E_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @speakup_register_var(%struct.var_t* %0) #0 {
  %2 = alloca %struct.var_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_var_header*, align 8
  store %struct.var_t* %0, %struct.var_t** %2, align 8
  %5 = load %struct.var_t*, %struct.var_t** %2, align 8
  %6 = icmp ne %struct.var_t* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.var_t*, %struct.var_t** %2, align 8
  %9 = getelementptr inbounds %struct.var_t, %struct.var_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load %struct.var_t*, %struct.var_t** %2, align 8
  %14 = getelementptr inbounds %struct.var_t, %struct.var_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAXVARS, align 4
  %17 = icmp sge i32 %15, %16
  br label %18

18:                                               ; preds = %12, %7, %1
  %19 = phi i1 [ true, %7 ], [ true, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.st_var_header**, %struct.st_var_header*** @var_ptrs, align 8
  %23 = getelementptr inbounds %struct.st_var_header*, %struct.st_var_header** %22, i64 0
  %24 = load %struct.st_var_header*, %struct.st_var_header** %23, align 8
  %25 = icmp ne %struct.st_var_header* %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MAXVARS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load %struct.st_var_header*, %struct.st_var_header** @var_headers, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %32, i64 %34
  store %struct.st_var_header* %35, %struct.st_var_header** %4, align 8
  %36 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %37 = load %struct.st_var_header**, %struct.st_var_header*** @var_ptrs, align 8
  %38 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %39 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.st_var_header*, %struct.st_var_header** %37, i64 %40
  store %struct.st_var_header* %36, %struct.st_var_header** %41, align 8
  %42 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %43 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %42, i32 0, i32 2
  store %struct.var_t* null, %struct.var_t** %43, align 8
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %27

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %18
  %49 = load %struct.st_var_header**, %struct.st_var_header*** @var_ptrs, align 8
  %50 = load %struct.var_t*, %struct.var_t** %2, align 8
  %51 = getelementptr inbounds %struct.var_t, %struct.var_t* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.st_var_header*, %struct.st_var_header** %49, i64 %53
  %55 = load %struct.st_var_header*, %struct.st_var_header** %54, align 8
  store %struct.st_var_header* %55, %struct.st_var_header** %4, align 8
  %56 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %57 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %56, i32 0, i32 2
  %58 = load %struct.var_t*, %struct.var_t** %57, align 8
  %59 = icmp ne %struct.var_t* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %76

61:                                               ; preds = %48
  %62 = load %struct.var_t*, %struct.var_t** %2, align 8
  %63 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %64 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %63, i32 0, i32 2
  store %struct.var_t* %62, %struct.var_t** %64, align 8
  %65 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %66 = getelementptr inbounds %struct.st_var_header, %struct.st_var_header* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %75 [
    i32 129, label %68
    i32 130, label %71
    i32 128, label %71
  ]

68:                                               ; preds = %61
  %69 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %70 = call i32 @spk_set_string_var(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @speakup_register_var.nothing, i64 0, i64 0), %struct.st_var_header* %69, i32 0)
  br label %76

71:                                               ; preds = %61, %61
  %72 = load %struct.st_var_header*, %struct.st_var_header** %4, align 8
  %73 = load i32, i32* @E_DEFAULT, align 4
  %74 = call i32 @spk_set_num_var(i32 0, %struct.st_var_header* %72, i32 %73)
  br label %76

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %60, %75, %71, %68
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spk_set_string_var(i8*, %struct.st_var_header*, i32) #1

declare dso_local i32 @spk_set_num_var(i32, %struct.st_var_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
