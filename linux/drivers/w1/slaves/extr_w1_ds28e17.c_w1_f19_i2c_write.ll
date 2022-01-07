; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@W1_F19_WRITE_DATA_LIMIT = common dso_local global i64 0, align 8
@W1_F19_WRITE_DATA_WITH_STOP = common dso_local global i32 0, align 4
@W1_F19_WRITE_DATA_NO_STOP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@W1_F19_WRITE_DATA_ONLY = common dso_local global i32 0, align 4
@W1_F19_WRITE_DATA_ONLY_WITH_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32, i32*, i64, i32)* @w1_f19_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f19_i2c_write(%struct.w1_slave* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.w1_slave*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [2 x i32], align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %10, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %134

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @W1_F19_WRITE_DATA_WITH_STOP, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @W1_F19_WRITE_DATA_NO_STOP, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 1
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @__w1_f19_i2c_write(%struct.w1_slave* %40, i32* %41, i32 2, i32* %42, i32 %44)
  store i32 %45, i32* %12, align 4
  br label %132

46:                                               ; preds = %23
  %47 = load i32*, i32** %9, align 8
  store i32* %47, i32** %14, align 8
  %48 = load i32, i32* @W1_F19_WRITE_DATA_NO_STOP, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 1
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %55 = load i32*, i32** %14, align 8
  %56 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @__w1_f19_i2c_write(%struct.w1_slave* %53, i32* %54, i32 2, i32* %55, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %134

63:                                               ; preds = %46
  %64 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %65 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @w1_reset_resume_command(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %134

72:                                               ; preds = %63
  %73 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %14, align 8
  %76 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %108, %72
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %81
  %87 = load i32, i32* @W1_F19_WRITE_DATA_ONLY, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %87, i32* %88, align 4
  %89 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %91 = load i32*, i32** %14, align 8
  %92 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @__w1_f19_i2c_write(%struct.w1_slave* %89, i32* %90, i32 1, i32* %91, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %6, align 4
  br label %134

99:                                               ; preds = %86
  %100 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %101 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @w1_reset_resume_command(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %134

108:                                              ; preds = %99
  %109 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 %109
  store i32* %111, i32** %14, align 8
  %112 = load i64, i64* @W1_F19_WRITE_DATA_LIMIT, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  br label %81

117:                                              ; preds = %81
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @W1_F19_WRITE_DATA_ONLY_WITH_STOP, align 4
  br label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @W1_F19_WRITE_DATA_ONLY, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %125, i32* %126, align 4
  %127 = load %struct.w1_slave*, %struct.w1_slave** %7, align 8
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @__w1_f19_i2c_write(%struct.w1_slave* %127, i32* %128, i32 1, i32* %129, i32 %130)
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %124, %34
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %105, %97, %69, %61, %20
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @__w1_f19_i2c_write(%struct.w1_slave*, i32*, i32, i32*, i32) #1

declare dso_local i64 @w1_reset_resume_command(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
