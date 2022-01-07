; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_tps6598x.c_tps6598x_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6598x = type { i32 }

@TPS_REG_CMD1 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TPS_REG_DATA1 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6598x*, i8*, i64, i32*, i64, i32*)* @tps6598x_exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6598x_exec_cmd(%struct.tps6598x* %0, i8* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps6598x*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tps6598x* %0, %struct.tps6598x** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.tps6598x*, %struct.tps6598x** %8, align 8
  %18 = load i32, i32* @TPS_REG_CMD1, align 4
  %19 = call i32 @tps6598x_read32(%struct.tps6598x* %17, i32 %18, i32* %15)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %7, align 4
  br label %124

24:                                               ; preds = %6
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  %29 = call i64 @INVALID_CMD(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %124

34:                                               ; preds = %27, %24
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.tps6598x*, %struct.tps6598x** %8, align 8
  %39 = load i32, i32* @TPS_REG_DATA1, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @tps6598x_block_write(%struct.tps6598x* %38, i32 %39, i32* %40, i64 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %124

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.tps6598x*, %struct.tps6598x** %8, align 8
  %50 = load i32, i32* @TPS_REG_CMD1, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @tps6598x_write_4cc(%struct.tps6598x* %49, i32 %50, i8* %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %7, align 4
  br label %124

57:                                               ; preds = %48
  %58 = load i64, i64* @jiffies, align 8
  %59 = call i64 @msecs_to_jiffies(i32 1000)
  %60 = add i64 %58, %59
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %84, %57
  %62 = load %struct.tps6598x*, %struct.tps6598x** %8, align 8
  %63 = load i32, i32* @TPS_REG_CMD1, align 4
  %64 = call i32 @tps6598x_read32(%struct.tps6598x* %62, i32 %63, i32* %15)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %7, align 4
  br label %124

69:                                               ; preds = %61
  %70 = load i32, i32* %15, align 4
  %71 = call i64 @INVALID_CMD(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %124

76:                                               ; preds = %69
  %77 = load i64, i64* %14, align 8
  %78 = call i64 @time_is_before_jiffies(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %124

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %61, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load %struct.tps6598x*, %struct.tps6598x** %8, align 8
  %92 = load i32, i32* @TPS_REG_DATA1, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = load i64, i64* %12, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @tps6598x_block_read(%struct.tps6598x* %91, i32 %92, i32* %93, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %7, align 4
  br label %124

101:                                              ; preds = %90
  %102 = load i32*, i32** %13, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %15, align 4
  br label %114

105:                                              ; preds = %87
  %106 = load %struct.tps6598x*, %struct.tps6598x** %8, align 8
  %107 = load i32, i32* @TPS_REG_DATA1, align 4
  %108 = call i32 @tps6598x_block_read(%struct.tps6598x* %106, i32 %107, i32* %15, i32 4)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %7, align 4
  br label %124

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %101
  %115 = load i32, i32* %15, align 4
  switch i32 %115, label %122 [
    i32 128, label %116
    i32 129, label %119
  ]

116:                                              ; preds = %114
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %7, align 4
  br label %124

119:                                              ; preds = %114
  %120 = load i32, i32* @EPERM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %124

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %119, %116, %111, %99, %80, %73, %67, %55, %45, %31, %22
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @tps6598x_read32(%struct.tps6598x*, i32, i32*) #1

declare dso_local i64 @INVALID_CMD(i32) #1

declare dso_local i32 @tps6598x_block_write(%struct.tps6598x*, i32, i32*, i64) #1

declare dso_local i32 @tps6598x_write_4cc(%struct.tps6598x*, i32, i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @tps6598x_block_read(%struct.tps6598x*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
