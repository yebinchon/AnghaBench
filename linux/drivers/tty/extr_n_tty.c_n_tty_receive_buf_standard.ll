; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_buf_standard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_buf_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @n_tty_receive_buf_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_buf_standard(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
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

16:                                               ; preds = %113, %63, %4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %114

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
  br i1 %35, label %36, label %105

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  %39 = load i8, i8* %37, align 1
  store i8 %39, i8* %11, align 1
  %40 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %41 = call i64 @I_ISTRIP(%struct.tty_struct* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 127
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %11, align 1
  br label %48

48:                                               ; preds = %43, %36
  %49 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %50 = call i64 @I_IUCLC(%struct.tty_struct* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %54 = call i64 @L_IEXTEN(%struct.tty_struct* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8, i8* %11, align 1
  %58 = call zeroext i8 @tolower(i8 zeroext %57)
  store i8 %58, i8* %11, align 1
  br label %59

59:                                               ; preds = %56, %52, %48
  %60 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %61 = call i64 @L_EXTPROC(%struct.tty_struct* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8, i8* %11, align 1
  %65 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %66 = call i32 @put_tty_queue(i8 zeroext %64, %struct.n_tty_data* %65)
  br label %16

67:                                               ; preds = %59
  %68 = load i8, i8* %11, align 1
  %69 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %70 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @test_bit(i8 zeroext %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %76 = load i8, i8* %11, align 1
  %77 = call i32 @n_tty_receive_char_inline(%struct.tty_struct* %75, i8 zeroext %76)
  br label %104

78:                                               ; preds = %67
  %79 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %80 = load i8, i8* %11, align 1
  %81 = call i64 @n_tty_receive_char_special(%struct.tty_struct* %79, i8 zeroext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  %92 = load i8, i8* %90, align 1
  store i8 %92, i8* %10, align 1
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %10, align 1
  %100 = call i32 @n_tty_receive_char_lnext(%struct.tty_struct* %94, i32 %98, i8 signext %99)
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %93, %83, %78
  br label %104

104:                                              ; preds = %103, %74
  br label %113

105:                                              ; preds = %27
  %106 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  %109 = load i8, i8* %107, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* %10, align 1
  %112 = call i32 @n_tty_receive_char_flagged(%struct.tty_struct* %106, i32 %110, i8 signext %111)
  br label %113

113:                                              ; preds = %105, %104
  br label %16

114:                                              ; preds = %16
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @I_ISTRIP(%struct.tty_struct*) #1

declare dso_local i64 @I_IUCLC(%struct.tty_struct*) #1

declare dso_local i64 @L_IEXTEN(%struct.tty_struct*) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

declare dso_local i64 @L_EXTPROC(%struct.tty_struct*) #1

declare dso_local i32 @put_tty_queue(i8 zeroext, %struct.n_tty_data*) #1

declare dso_local i32 @test_bit(i8 zeroext, i32) #1

declare dso_local i32 @n_tty_receive_char_inline(%struct.tty_struct*, i8 zeroext) #1

declare dso_local i64 @n_tty_receive_char_special(%struct.tty_struct*, i8 zeroext) #1

declare dso_local i32 @n_tty_receive_char_lnext(%struct.tty_struct*, i32, i8 signext) #1

declare dso_local i32 @n_tty_receive_char_flagged(%struct.tty_struct*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
