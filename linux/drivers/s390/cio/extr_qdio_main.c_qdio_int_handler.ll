; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_int_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.qdio_irq* }
%struct.qdio_irq = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.irb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.subchannel_id = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"qint:%4x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%4x IO error\00", align 1
@QDIO_IRQ_STATE_ERR = common dso_local global i32 0, align 4
@SCHN_STAT_PCI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdio_int_handler(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.qdio_irq*, align 8
  %8 = alloca %struct.subchannel_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.qdio_irq*, %struct.qdio_irq** %14, align 8
  store %struct.qdio_irq* %15, %struct.qdio_irq** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %20 = icmp ne %struct.qdio_irq* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %23 = call i32 @ccw_device_get_schid(%struct.ccw_device* %22, %struct.subchannel_id* %8)
  %24 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %111

27:                                               ; preds = %18
  %28 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %29 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %34 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.irb*, %struct.irb** %6, align 8
  %40 = call i64 @IS_ERR(%struct.irb* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %44 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %49 = load i32, i32* @QDIO_IRQ_STATE_ERR, align 4
  %50 = call i32 @qdio_set_state(%struct.qdio_irq* %48, i32 %49)
  %51 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %52 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = call i32 @wake_up(i32* %54)
  br label %111

56:                                               ; preds = %38
  %57 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %58 = load %struct.irb*, %struct.irb** %6, align 8
  %59 = call i32 @qdio_irq_check_sense(%struct.qdio_irq* %57, %struct.irb* %58)
  %60 = load %struct.irb*, %struct.irb** %6, align 8
  %61 = getelementptr inbounds %struct.irb, %struct.irb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.irb*, %struct.irb** %6, align 8
  %66 = getelementptr inbounds %struct.irb, %struct.irb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %71 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %103 [
    i32 129, label %73
    i32 131, label %78
    i32 130, label %81
    i32 132, label %81
    i32 128, label %102
  ]

73:                                               ; preds = %56
  %74 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @qdio_establish_handle_irq(%struct.ccw_device* %74, i32 %75, i32 %76)
  br label %105

78:                                               ; preds = %56
  %79 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %80 = call i32 @qdio_set_state(%struct.qdio_irq* %79, i32 129)
  br label %105

81:                                               ; preds = %56, %56
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @SCHN_STAT_PCI, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %88 = call i32 @qdio_int_handler_pci(%struct.qdio_irq* %87)
  br label %111

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92, %89
  %96 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @qdio_handle_activate_check(%struct.ccw_device* %96, i64 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %92
  br label %105

102:                                              ; preds = %56
  br label %105

103:                                              ; preds = %56
  %104 = call i32 @WARN_ON_ONCE(i32 1)
  br label %105

105:                                              ; preds = %103, %102, %101, %78, %73
  %106 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %107 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = call i32 @wake_up(i32* %109)
  br label %111

111:                                              ; preds = %105, %86, %42, %21
  ret void
}

declare dso_local i32 @ccw_device_get_schid(%struct.ccw_device*, %struct.subchannel_id*) #1

declare dso_local i32 @DBF_ERROR(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.irb*) #1

declare dso_local i32 @qdio_set_state(%struct.qdio_irq*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @qdio_irq_check_sense(%struct.qdio_irq*, %struct.irb*) #1

declare dso_local i32 @qdio_establish_handle_irq(%struct.ccw_device*, i32, i32) #1

declare dso_local i32 @qdio_int_handler_pci(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_handle_activate_check(%struct.ccw_device*, i64, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
