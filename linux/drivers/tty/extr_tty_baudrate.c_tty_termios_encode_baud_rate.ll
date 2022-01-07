; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_baudrate.c_tty_termios_encode_baud_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_baudrate.c_tty_termios_encode_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktermios = type { i32, i32, i32 }

@CBAUD = common dso_local global i32 0, align 4
@baud_table = common dso_local global i32* null, align 8
@baud_bits = common dso_local global i32* null, align 8
@n_baud_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"tty: Unable to return correct speed data as your architecture needs updating.\0A\00", align 1
@BOTHER = common dso_local global i32 0, align 4
@IBSHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_termios_encode_baud_rate(%struct.ktermios* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ktermios* %0, %struct.ktermios** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 50
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sdiv i32 %15, 50
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @CBAUD, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %95, %20
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32*, i32** @baud_table, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %36, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32*, i32** @baud_table, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %46, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %43
  %54 = load i32*, i32** @baud_bits, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %60 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %53, %43, %33
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32*, i32** @baud_table, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %67, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32*, i32** @baud_table, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %77, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %88, %84
  br label %94

94:                                               ; preds = %93, %74, %64
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @n_baud_table, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %33, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103, %100
  %107 = call i32 @pr_warn_once(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  ret void
}

declare dso_local i32 @pr_warn_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
