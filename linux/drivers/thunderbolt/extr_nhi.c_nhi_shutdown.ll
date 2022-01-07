; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_nhi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, i64*, i64* }
%struct.TYPE_4__ = type { i32 (%struct.tb_nhi*)* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"shutdown\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"TX ring %d is still active\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"RX ring %d is still active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_nhi*)* @nhi_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhi_shutdown(%struct.tb_nhi* %0) #0 {
  %2 = alloca %struct.tb_nhi*, align 8
  %3 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %2, align 8
  %4 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %5 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %4, i32 0, i32 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %12 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %9
  %16 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %17 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %16, i32 0, i32 6
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %26 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dev_WARN(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %24, %15
  %32 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %33 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %32, i32 0, i32 5
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %42 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @dev_WARN(i32* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %53 = call i32 @nhi_disable_interrupts(%struct.tb_nhi* %52)
  %54 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %55 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %51
  %61 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %62 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %66 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %65, i32 0, i32 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %71 = call i32 @devm_free_irq(i32* %64, i32 %69, %struct.tb_nhi* %70)
  %72 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %73 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %72, i32 0, i32 3
  %74 = call i32 @flush_work(i32* %73)
  br label %75

75:                                               ; preds = %60, %51
  %76 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %77 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %76, i32 0, i32 2
  %78 = call i32 @ida_destroy(i32* %77)
  %79 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %80 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = icmp ne %struct.TYPE_4__* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %75
  %84 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %85 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.tb_nhi*)*, i32 (%struct.tb_nhi*)** %87, align 8
  %89 = icmp ne i32 (%struct.tb_nhi*)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %92 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32 (%struct.tb_nhi*)*, i32 (%struct.tb_nhi*)** %94, align 8
  %96 = load %struct.tb_nhi*, %struct.tb_nhi** %2, align 8
  %97 = call i32 %95(%struct.tb_nhi* %96)
  br label %98

98:                                               ; preds = %90, %83, %75
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_WARN(i32*, i8*, i32) #1

declare dso_local i32 @nhi_disable_interrupts(%struct.tb_nhi*) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.tb_nhi*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @ida_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
