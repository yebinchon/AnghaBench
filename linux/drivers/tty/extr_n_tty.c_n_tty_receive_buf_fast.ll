; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_buf_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_buf_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @n_tty_receive_buf_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_buf_fast(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.n_tty_data*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.n_tty_data*, %struct.n_tty_data** %13, align 8
  store %struct.n_tty_data* %14, %struct.n_tty_data** %9, align 8
  %15 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %15, i8* %10, align 1
  br label %16

16:                                               ; preds = %85, %4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %86

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %10, align 1
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i8, i8* %10, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @TTY_NORMAL, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  %39 = load i8, i8* %37, align 1
  store i8 %39, i8* %11, align 1
  %40 = load i8, i8* %11, align 1
  %41 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %42 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @test_bit(i8 zeroext %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %48 = load i8, i8* %11, align 1
  %49 = call i32 @n_tty_receive_char_fast(%struct.tty_struct* %47, i8 zeroext %48)
  br label %76

50:                                               ; preds = %36
  %51 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %52 = load i8, i8* %11, align 1
  %53 = call i64 @n_tty_receive_char_special(%struct.tty_struct* %51, i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  %64 = load i8, i8* %62, align 1
  store i8 %64, i8* %10, align 1
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  %69 = load i8, i8* %67, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %10, align 1
  %72 = call i32 @n_tty_receive_char_lnext(%struct.tty_struct* %66, i32 %70, i8 signext %71)
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %65, %55, %50
  br label %76

76:                                               ; preds = %75, %46
  br label %85

77:                                               ; preds = %27
  %78 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  %81 = load i8, i8* %79, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %10, align 1
  %84 = call i32 @n_tty_receive_char_flagged(%struct.tty_struct* %78, i32 %82, i8 signext %83)
  br label %85

85:                                               ; preds = %77, %76
  br label %16

86:                                               ; preds = %16
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_bit(i8 zeroext, i32) #1

declare dso_local i32 @n_tty_receive_char_fast(%struct.tty_struct*, i8 zeroext) #1

declare dso_local i64 @n_tty_receive_char_special(%struct.tty_struct*, i8 zeroext) #1

declare dso_local i32 @n_tty_receive_char_lnext(%struct.tty_struct*, i32, i8 signext) #1

declare dso_local i32 @n_tty_receive_char_flagged(%struct.tty_struct*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
