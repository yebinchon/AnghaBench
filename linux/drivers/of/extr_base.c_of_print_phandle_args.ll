; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_print_phandle_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_print_phandle_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_phandle_args = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s %pOF\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c%08x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_print_phandle_args(i8* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %15 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 44, i32 58
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %6, align 1
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %12

37:                                               ; preds = %12
  %38 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, i8*, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
