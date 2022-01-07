; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi = type { %struct.TYPE_4__*, i32, %struct.ucsi_connector*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.ucsi_cci }
%struct.ucsi_cci = type { i32, i64, i64, i64, i64 }
%struct.ucsi_connector = type { i32 }

@UCSI_ERROR = common dso_local global i32 0, align 4
@UCSI_BUSY = common dso_local global i32 0, align 4
@UCSI_IDLE = common dso_local global i32 0, align 4
@COMMAND_PENDING = common dso_local global i32 0, align 4
@ACK_PENDING = common dso_local global i32 0, align 4
@EVENT_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucsi_notify(%struct.ucsi* %0) #0 {
  %2 = alloca %struct.ucsi*, align 8
  %3 = alloca %struct.ucsi_cci*, align 8
  %4 = alloca %struct.ucsi_connector*, align 8
  store %struct.ucsi* %0, %struct.ucsi** %2, align 8
  %5 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %6 = call i32 @ucsi_sync(%struct.ucsi* %5)
  %7 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %8 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store %struct.ucsi_cci* %12, %struct.ucsi_cci** %3, align 8
  %13 = load %struct.ucsi_cci*, %struct.ucsi_cci** %3, align 8
  %14 = getelementptr inbounds %struct.ucsi_cci, %struct.ucsi_cci* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @UCSI_ERROR, align 4
  %19 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %20 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.ucsi_cci*, %struct.ucsi_cci** %3, align 8
  %23 = getelementptr inbounds %struct.ucsi_cci, %struct.ucsi_cci* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @UCSI_BUSY, align 4
  %28 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %29 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @UCSI_IDLE, align 4
  %32 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %33 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.ucsi_cci*, %struct.ucsi_cci** %3, align 8
  %37 = getelementptr inbounds %struct.ucsi_cci, %struct.ucsi_cci* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @COMMAND_PENDING, align 4
  %42 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %43 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %42, i32 0, i32 1
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %48 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %47, i32 0, i32 3
  %49 = call i32 @complete(i32* %48)
  br label %92

50:                                               ; preds = %40, %35
  %51 = load %struct.ucsi_cci*, %struct.ucsi_cci** %3, align 8
  %52 = getelementptr inbounds %struct.ucsi_cci, %struct.ucsi_cci* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* @ACK_PENDING, align 4
  %57 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %58 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %57, i32 0, i32 1
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %63 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %62, i32 0, i32 3
  %64 = call i32 @complete(i32* %63)
  br label %91

65:                                               ; preds = %55, %50
  %66 = load %struct.ucsi_cci*, %struct.ucsi_cci** %3, align 8
  %67 = getelementptr inbounds %struct.ucsi_cci, %struct.ucsi_cci* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %72 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %71, i32 0, i32 2
  %73 = load %struct.ucsi_connector*, %struct.ucsi_connector** %72, align 8
  %74 = load %struct.ucsi_cci*, %struct.ucsi_cci** %3, align 8
  %75 = getelementptr inbounds %struct.ucsi_cci, %struct.ucsi_cci* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %73, i64 %78
  store %struct.ucsi_connector* %79, %struct.ucsi_connector** %4, align 8
  %80 = load i32, i32* @EVENT_PENDING, align 4
  %81 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %82 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %81, i32 0, i32 1
  %83 = call i32 @test_and_set_bit(i32 %80, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %70
  %86 = load %struct.ucsi_connector*, %struct.ucsi_connector** %4, align 8
  %87 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %86, i32 0, i32 0
  %88 = call i32 @schedule_work(i32* %87)
  br label %89

89:                                               ; preds = %85, %70
  br label %90

90:                                               ; preds = %89, %65
  br label %91

91:                                               ; preds = %90, %61
  br label %92

92:                                               ; preds = %91, %46
  %93 = load %struct.ucsi*, %struct.ucsi** %2, align 8
  %94 = getelementptr inbounds %struct.ucsi, %struct.ucsi* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @trace_ucsi_notify(i32 %99)
  ret void
}

declare dso_local i32 @ucsi_sync(%struct.ucsi*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @trace_ucsi_notify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
