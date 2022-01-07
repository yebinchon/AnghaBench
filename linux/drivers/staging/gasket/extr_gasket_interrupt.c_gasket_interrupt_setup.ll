; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32, %struct.gasket_interrupt_data* }
%struct.gasket_interrupt_data = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Interrupt data is not initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Running interrupt setup\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Setting up interrupt index %d with index 0x%llx and packing %d\0A\00", align 1
@UNPACKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Found interrupt description with unknown enum %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_dev*)* @gasket_interrupt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gasket_interrupt_setup(%struct.gasket_dev* %0) #0 {
  %2 = alloca %struct.gasket_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gasket_interrupt_data*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %2, align 8
  %8 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %8, i32 0, i32 1
  %10 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %9, align 8
  store %struct.gasket_interrupt_data* %10, %struct.gasket_interrupt_data** %7, align 8
  %11 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %12 = icmp ne %struct.gasket_interrupt_data* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %15 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %164

18:                                               ; preds = %1
  %19 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %20 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %161, %18
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %26 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %164

29:                                               ; preds = %23
  %30 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %31 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %34 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %42 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %50 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %48, i32 %56)
  %58 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %59 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @UNPACKED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %29
  %69 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %70 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  br label %146

77:                                               ; preds = %29
  %78 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %79 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %101 [
    i32 131, label %86
    i32 130, label %87
    i32 129, label %91
    i32 128, label %96
  ]

86:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %114

87:                                               ; preds = %77
  %88 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %89 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %4, align 4
  br label %114

91:                                               ; preds = %77
  %92 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %93 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 2, %94
  store i32 %95, i32* %4, align 4
  br label %114

96:                                               ; preds = %77
  %97 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %98 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 3, %99
  store i32 %100, i32* %4, align 4
  br label %114

101:                                              ; preds = %77
  %102 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %103 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %106 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %164

114:                                              ; preds = %96, %91, %87, %86
  %115 = load i32, i32* %4, align 4
  %116 = shl i32 65535, %115
  %117 = xor i32 %116, -1
  store i32 %117, i32* %5, align 4
  %118 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %119 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %120 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %123 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @gasket_dev_read_64(%struct.gasket_dev* %118, i32 %121, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %135 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %134, i32 0, i32 2
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %4, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %114, %68
  %147 = load %struct.gasket_dev*, %struct.gasket_dev** %2, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %150 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %7, align 8
  %153 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @gasket_dev_write_64(%struct.gasket_dev* %147, i32 %148, i32 %151, i32 %159)
  br label %161

161:                                              ; preds = %146
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %3, align 4
  br label %23

164:                                              ; preds = %13, %101, %23
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @gasket_dev_read_64(%struct.gasket_dev*, i32, i32) #1

declare dso_local i32 @gasket_dev_write_64(%struct.gasket_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
