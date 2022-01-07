; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { %struct.qdr*, i64, i32 }
%struct.qdr = type { i32 }
%struct.subchannel_id = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"qallocate:%4x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QDIO_MAX_QUEUES_PER_IRQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_INACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_allocate(%struct.qdio_initialize* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qdio_initialize*, align 8
  %4 = alloca %struct.subchannel_id, align 4
  %5 = alloca %struct.qdio_irq*, align 8
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %3, align 8
  %6 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %7 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @ccw_device_get_schid(%struct.TYPE_4__* %8, %struct.subchannel_id* %4)
  %10 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %14 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %19 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17, %1
  %23 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %24 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %29 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %17
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %133

35:                                               ; preds = %27, %22
  %36 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %37 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @QDIO_MAX_QUEUES_PER_IRQ, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %43 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @QDIO_MAX_QUEUES_PER_IRQ, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %133

50:                                               ; preds = %41
  %51 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %52 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %57 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %133

63:                                               ; preds = %55
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load i32, i32* @GFP_DMA, align 4
  %66 = or i32 %64, %65
  %67 = call i64 @get_zeroed_page(i32 %66)
  %68 = inttoptr i64 %67 to i8*
  %69 = bitcast i8* %68 to %struct.qdio_irq*
  store %struct.qdio_irq* %69, %struct.qdio_irq** %5, align 8
  %70 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %71 = icmp ne %struct.qdio_irq* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %130

73:                                               ; preds = %63
  %74 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %75 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %74, i32 0, i32 2
  %76 = call i32 @mutex_init(i32* %75)
  %77 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %78 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %79 = call i64 @qdio_allocate_dbf(%struct.qdio_initialize* %77, %struct.qdio_irq* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %127

82:                                               ; preds = %73
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i64 @get_zeroed_page(i32 %83)
  %85 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %86 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %88 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %127

92:                                               ; preds = %82
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = load i32, i32* @GFP_DMA, align 4
  %95 = or i32 %93, %94
  %96 = call i64 @get_zeroed_page(i32 %95)
  %97 = inttoptr i64 %96 to %struct.qdr*
  %98 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %99 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %98, i32 0, i32 0
  store %struct.qdr* %97, %struct.qdr** %99, align 8
  %100 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %101 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %100, i32 0, i32 0
  %102 = load %struct.qdr*, %struct.qdr** %101, align 8
  %103 = icmp ne %struct.qdr* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %92
  br label %127

105:                                              ; preds = %92
  %106 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %107 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %108 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %111 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @qdio_allocate_qs(%struct.qdio_irq* %106, i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %127

116:                                              ; preds = %105
  %117 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %118 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %119 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store %struct.qdio_irq* %117, %struct.qdio_irq** %123, align 8
  %124 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %125 = load i32, i32* @QDIO_IRQ_STATE_INACTIVE, align 4
  %126 = call i32 @qdio_set_state(%struct.qdio_irq* %124, i32 %125)
  store i32 0, i32* %2, align 4
  br label %133

127:                                              ; preds = %115, %104, %91, %81
  %128 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %129 = call i32 @qdio_release_memory(%struct.qdio_irq* %128)
  br label %130

130:                                              ; preds = %127, %72
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %116, %60, %47, %32
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @ccw_device_get_schid(%struct.TYPE_4__*, %struct.subchannel_id*) #1

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @qdio_allocate_dbf(%struct.qdio_initialize*, %struct.qdio_irq*) #1

declare dso_local i64 @qdio_allocate_qs(%struct.qdio_irq*, i32, i32) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i32) #1

declare dso_local i32 @qdio_release_memory(%struct.qdio_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
