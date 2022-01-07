; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_print_format4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_print_format4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i8*, i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"rsb %p %d %d %d %d %lu %lx %d \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"str \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*, %struct.seq_file*)* @print_format4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_format4(%struct.dlm_rsb* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %8 = call i32 (...) @dlm_our_nodeid()
  store i32 %8, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %9 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %10 = call i32 @lock_rsb(%struct.dlm_rsb* %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %13 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %14 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %17 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %20 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %24 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %27 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %30 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.dlm_rsb* %12, i32 %15, i32 %18, i32 %21, i32 %22, i32 %25, i32 %28, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %61, %2
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %36 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  %40 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %41 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @isascii(i8 zeroext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %51 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @isprint(i8 zeroext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49, %39
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %33

64:                                               ; preds = %33
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 @seq_puts(%struct.seq_file* %65, i8* %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %103, %64
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %74 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %83 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %102

91:                                               ; preds = %77
  %92 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %93 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %94 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %91, %80
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %71

106:                                              ; preds = %71
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = call i32 @seq_putc(%struct.seq_file* %107, i8 signext 10)
  %109 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %110 = call i32 @unlock_rsb(%struct.dlm_rsb* %109)
  ret void
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @isascii(i8 zeroext) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
