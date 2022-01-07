; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_w1_ds2438_change_config_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2438.c_w1_ds2438_change_config_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }

@W1_DS2438_RETRIES = common dso_local global i32 0, align 4
@W1_DS2438_RECALL_MEMORY = common dso_local global i32 0, align 4
@W1_DS2438_READ_SCRATCH = common dso_local global i32 0, align 4
@W1_DS2438_WRITE_SCRATCH = common dso_local global i32 0, align 4
@W1_DS2438_COPY_SCRATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32, i32)* @w1_ds2438_change_config_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2438_change_config_bit(%struct.w1_slave* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.w1_slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @W1_DS2438_RETRIES, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %34, %21, %3
  %14 = load i32, i32* %8, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %13
  %18 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %19 = call i64 @w1_reset_select_slave(%struct.w1_slave* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %13

22:                                               ; preds = %17
  %23 = load i32, i32* @W1_DS2438_RECALL_MEMORY, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %27 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %30 = call i32 @w1_write_block(i32 %28, i32* %29, i32 2)
  %31 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %32 = call i64 @w1_reset_select_slave(%struct.w1_slave* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %13

35:                                               ; preds = %22
  %36 = load i32, i32* @W1_DS2438_READ_SCRATCH, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %40 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %43 = call i32 @w1_write_block(i32 %41, i32* %42, i32 2)
  %44 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %45 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @w1_read_8(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %35
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %104

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %13
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %64
  %68 = load i32, i32* @W1_DS2438_RETRIES, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %92, %77, %67
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %8, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %75 = call i64 @w1_reset_select_slave(%struct.w1_slave* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %69

78:                                               ; preds = %73
  %79 = load i32, i32* @W1_DS2438_WRITE_SCRATCH, align 4
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %85 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %88 = call i32 @w1_write_block(i32 %86, i32* %87, i32 3)
  %89 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %90 = call i64 @w1_reset_select_slave(%struct.w1_slave* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %69

93:                                               ; preds = %78
  %94 = load i32, i32* @W1_DS2438_COPY_SCRATCH, align 4
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %98 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %101 = call i32 @w1_write_block(i32 %99, i32* %100, i32 2)
  store i32 0, i32* %4, align 4
  br label %104

102:                                              ; preds = %69
  br label %103

103:                                              ; preds = %102, %64
  store i32 -1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %93, %58
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(i32, i32*, i32) #1

declare dso_local i32 @w1_read_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
