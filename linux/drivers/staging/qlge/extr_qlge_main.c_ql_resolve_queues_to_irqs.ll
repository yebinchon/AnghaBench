; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_resolve_queues_to_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_resolve_queues_to_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.intr_context* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }
%struct.intr_context = type { i32, i32, i32, i32, i32, i8*, %struct.ql_adapter* }

@QL_MSIX_ENABLED = common dso_local global i32 0, align 4
@INTR_EN_TYPE_MASK = common dso_local global i32 0, align 4
@INTR_EN_INTR_MASK = common dso_local global i32 0, align 4
@INTR_EN_TYPE_ENABLE = common dso_local global i32 0, align 4
@INTR_EN_IHD_MASK = common dso_local global i32 0, align 4
@INTR_EN_IHD = common dso_local global i32 0, align 4
@INTR_EN_TYPE_DISABLE = common dso_local global i32 0, align 4
@INTR_EN_TYPE_READ = common dso_local global i32 0, align 4
@qlge_isr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s-rx-%d\00", align 1
@qlge_msix_rx_isr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%s-single_irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_resolve_queues_to_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_resolve_queues_to_irqs(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_context*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %5, i32 0, i32 4
  %7 = load %struct.intr_context*, %struct.intr_context** %6, align 8
  %8 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %7, i64 0
  store %struct.intr_context* %8, %struct.intr_context** %4, align 8
  %9 = load i32, i32* @QL_MSIX_ENABLED, align 4
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 3
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %116

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %110, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %115

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %33 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %35 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %36 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %35, i32 0, i32 6
  store %struct.ql_adapter* %34, %struct.ql_adapter** %36, align 8
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %38 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %39 = call i32 @ql_set_irq_mask(%struct.ql_adapter* %37, %struct.intr_context* %38)
  %40 = load i32, i32* @INTR_EN_TYPE_MASK, align 4
  %41 = load i32, i32* @INTR_EN_INTR_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @INTR_EN_TYPE_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @INTR_EN_IHD_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @INTR_EN_IHD, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %52 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @INTR_EN_TYPE_MASK, align 4
  %54 = load i32, i32* @INTR_EN_INTR_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @INTR_EN_TYPE_DISABLE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @INTR_EN_IHD_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @INTR_EN_IHD, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %65 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @INTR_EN_TYPE_MASK, align 4
  %67 = load i32, i32* @INTR_EN_INTR_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @INTR_EN_TYPE_READ, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @INTR_EN_IHD_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @INTR_EN_IHD, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %78 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %22
  %82 = load i8*, i8** @qlge_isr, align 8
  %83 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %84 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %86 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %92, i32 %93)
  br label %109

95:                                               ; preds = %22
  %96 = load i8*, i8** @qlge_msix_rx_isr, align 8
  %97 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %98 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %100 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %106, i32 %107)
  br label %109

109:                                              ; preds = %95, %81
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  %113 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %114 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %113, i32 1
  store %struct.intr_context* %114, %struct.intr_context** %4, align 8
  br label %16

115:                                              ; preds = %16
  br label %158

116:                                              ; preds = %1
  %117 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %118 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %120 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %121 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %120, i32 0, i32 6
  store %struct.ql_adapter* %119, %struct.ql_adapter** %121, align 8
  %122 = load i32, i32* @INTR_EN_TYPE_MASK, align 4
  %123 = load i32, i32* @INTR_EN_INTR_MASK, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @INTR_EN_TYPE_ENABLE, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %128 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @INTR_EN_TYPE_MASK, align 4
  %130 = load i32, i32* @INTR_EN_INTR_MASK, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @INTR_EN_TYPE_DISABLE, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %135 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @INTR_EN_TYPE_MASK, align 4
  %137 = load i32, i32* @INTR_EN_INTR_MASK, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @INTR_EN_TYPE_READ, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %142 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load i8*, i8** @qlge_isr, align 8
  %144 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %145 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %147 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %150 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %153)
  %155 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %156 = load %struct.intr_context*, %struct.intr_context** %4, align 8
  %157 = call i32 @ql_set_irq_mask(%struct.ql_adapter* %155, %struct.intr_context* %156)
  br label %158

158:                                              ; preds = %116, %115
  %159 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %160 = call i32 @ql_set_tx_vect(%struct.ql_adapter* %159)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_set_irq_mask(%struct.ql_adapter*, %struct.intr_context*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @ql_set_tx_vect(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
