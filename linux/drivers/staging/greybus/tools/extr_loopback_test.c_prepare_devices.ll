; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_prepare_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_prepare_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_test = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"us_wait\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"iteration_max\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"outstanding_operations_max\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loopback_test*)* @prepare_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_devices(%struct.loopback_test* %0) #0 {
  %2 = alloca %struct.loopback_test*, align 8
  %3 = alloca i32, align 4
  store %struct.loopback_test* %0, %struct.loopback_test** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %7 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %12 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @device_enabled(%struct.loopback_test* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15, %10
  %21 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %22 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %21, i32 0, i32 6
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_sysfs_val(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %30

30:                                               ; preds = %20, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %4

34:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %133, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %38 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %136

41:                                               ; preds = %35
  %42 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @device_enabled(%struct.loopback_test* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %133

47:                                               ; preds = %41
  %48 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %49 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %48, i32 0, i32 6
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %57 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @write_sysfs_val(i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %61 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %60, i32 0, i32 6
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %69 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @write_sysfs_val(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %73 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %72, i32 0, i32 6
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %81 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @write_sysfs_val(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %85 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %47
  %89 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %90 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %89, i32 0, i32 6
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @write_sysfs_val(i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %98 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %99 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %98, i32 0, i32 6
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %107 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @write_sysfs_val(i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %111 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %110, i32 0, i32 6
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %119 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @write_sysfs_val(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  br label %132

122:                                              ; preds = %47
  %123 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %124 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %123, i32 0, i32 6
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @write_sysfs_val(i32 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %132

132:                                              ; preds = %122, %88
  br label %133

133:                                              ; preds = %132, %46
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %3, align 4
  br label %35

136:                                              ; preds = %35
  ret void
}

declare dso_local i64 @device_enabled(%struct.loopback_test*, i32) #1

declare dso_local i32 @write_sysfs_val(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
