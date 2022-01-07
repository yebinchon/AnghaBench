; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_msix_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_interrupt.c_gasket_interrupt_msix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_interrupt_data = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32** }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSIX_RETRY_COUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@gasket_msix_interrupt_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Cannot get IRQ for interrupt %d, vector %d; %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_interrupt_data*)* @gasket_interrupt_msix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_interrupt_msix_init(%struct.gasket_interrupt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gasket_interrupt_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gasket_interrupt_data* %0, %struct.gasket_interrupt_data** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %7 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_5__* @kcalloc(i32 %8, i32 16, i32 %9)
  %11 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %12 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %11, i32 0, i32 3
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %12, align 8
  %13 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %14 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %141

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %24 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %30 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 8
  %36 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %37 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %44 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %43, i32 0, i32 6
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %21

52:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MSIX_RETRY_COUNT, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %58, 0
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i1 [ false, %53 ], [ %59, %57 ]
  br i1 %61, label %62, label %76

62:                                               ; preds = %60
  %63 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %64 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %63, i32 0, i32 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %67 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %70 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pci_enable_msix_exact(%struct.TYPE_4__* %65, %struct.TYPE_5__* %68, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %53

76:                                               ; preds = %60
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %84, %82 ], [ %86, %85 ]
  store i32 %88, i32* %2, align 4
  br label %141

89:                                               ; preds = %76
  %90 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %91 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %137, %89
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %95 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %140

98:                                               ; preds = %92
  %99 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %100 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @gasket_msix_interrupt_handler, align 4
  %108 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %109 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %112 = call i32 @request_irq(i64 %106, i32 %107, i32 0, i32 %110, %struct.gasket_interrupt_data* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %98
  %116 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %117 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %116, i32 0, i32 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %122 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %120, i64 %128, i32 %129)
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %141

132:                                              ; preds = %98
  %133 = load %struct.gasket_interrupt_data*, %struct.gasket_interrupt_data** %3, align 8
  %134 = getelementptr inbounds %struct.gasket_interrupt_data, %struct.gasket_interrupt_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %92

140:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %115, %87, %17
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_5__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_exact(%struct.TYPE_4__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.gasket_interrupt_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
