; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_do_QDIO.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_do_QDIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { i64, i32*, i32* }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"do%02x b:%02x c:%02x\00", align 1
@QDIO_IRQ_STATE_ACTIVE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_QDIO(%struct.ccw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qdio_irq*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %91

23:                                               ; preds = %16
  %24 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.qdio_irq*, %struct.qdio_irq** %27, align 8
  store %struct.qdio_irq* %28, %struct.qdio_irq** %12, align 8
  %29 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  %30 = icmp ne %struct.qdio_irq* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %91

34:                                               ; preds = %23
  %35 = load i32, i32* @DBF_INFO, align 4
  %36 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @DBF_DEV_EVENT(i32 %35, %struct.qdio_irq* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  %42 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QDIO_IRQ_STATE_ACTIVE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %91

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %91

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  %60 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @handle_inbound(i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %91

70:                                               ; preds = %53
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @QDIO_FLAG_SYNC_OUTPUT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  %77 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @handle_outbound(i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %91

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %75, %58, %52, %46, %31, %20
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.qdio_irq*, i8*, i32, i32, i32) #1

declare dso_local i32 @handle_inbound(i32, i32, i32, i32) #1

declare dso_local i32 @handle_outbound(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
